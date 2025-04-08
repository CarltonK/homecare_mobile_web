import 'dart:async';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import './../../features/features.dart';

import '../utilities/utilities.dart';

class DioErrorInterceptor extends Interceptor {
  final Dio _dio;
  bool _isRefreshing = false;

  DioErrorInterceptor(this._dio);

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Custom error handling logic
    final errorMessage = _mapErrorToMessage(err);
    final debugMessage = _mapErrorToDebugMessage(err);

    // Log error (use your preferred logger)
    logger.e('🚨 Dio Error: $debugMessage');

    // Create a consistent error response format
    final error = ResponseModel(error: errorMessage);

    // Handle specific error scenarios
    await _handleSpecialCases(err, handler);

    // Continue with error propagation
    handler.reject(err.copyWith(error: error));
  }

  String _mapErrorToMessage(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return 'Connection timed out. Please check your internet';
      case DioExceptionType.connectionError:
        return 'Server unreachable. Check your connection';
      case DioExceptionType.badResponse:
        return _handleResponseError(error.response!);
      case DioExceptionType.cancel:
        return 'Request cancelled';
      case DioExceptionType.unknown:
        return 'Network error: ${error.message}';
      case DioExceptionType.badCertificate:
        return 'Invalid security certificate';
    }
  }

  String _mapErrorToDebugMessage(DioException error) {
    return '''
    Dio Error:
    Type: ${error.type}
    URL: ${error.requestOptions.uri}
    Message: ${error.message}
    Response: ${error.response?.data}
    Stack: ${error.stackTrace}
    ''';
  }

  String _handleResponseError(Response response) {
    switch (response.statusCode) {
      case 401:
        return 'Session expired. Please log in again';
      case 403:
        return 'Permission denied';
      case 404:
        return 'Resource not found';
      case 500:
        return 'Internal server error';
      default:
        return 'Unexpected error occurred (${response.statusCode})';
    }
  }

  Future<void> _handleSpecialCases(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    // Handle token expiration (401)
    if (err.response?.statusCode == 401 && !_isRefreshing) {
      _isRefreshing = true;
      try {
        await _refreshToken();
        // Retry original request
        final response = await _retryRequest(err.requestOptions);
        handler.resolve(response);
      } catch (refreshError) {
        handler.reject(err);
      } finally {
        _isRefreshing = false;
      }
    }

    // Handle connectivity issues
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      handler.reject(err.copyWith(
        error: const ResponseModel(error: 'No internet connection'),
      ));
    }
  }

  Future<Response<dynamic>> _retryRequest(RequestOptions options) async {
    return _dio.request(
      options.path,
      data: options.data,
      queryParameters: options.queryParameters,
      options: Options(
        method: options.method,
        headers: options.headers,
      ),
    );
  }

  Future<void> _refreshToken() async {
    // Implement your token refresh logic here
    // Example:
    // final newToken = await authRepository.refreshToken();
    // _dio.options.headers['Authorization'] = 'Bearer $newToken';
  }
}
