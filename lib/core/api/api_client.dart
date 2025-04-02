import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;
  String? _authKey;

  ApiClient(this._dio) {
    const String baseUrl = String.fromEnvironment('base_url');

    _dio.options.baseUrl = baseUrl;

    // Add a single interceptor at initialization
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (_authKey != null) {
            options.headers['Authorization'] = _authKey!;
          } else {
            options.headers.remove('Authorization');
          }
          return handler.next(options);
        },
      ),
    );

    _dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
    ));
  }

  /// Set authentication credentials using a Bearer token
  void setAuthToken(String token) {
    _authKey = token.isNotEmpty ? 'Bearer $token' : null;
  }

  /// Clear authentication on logout
  void clearAuth() {
    _authKey = null;
  }

  Future<Response> apiGet(String endpoint,
      {Map<String, dynamic>? queryParams}) async {
    try {
      return await _dio.get('/api/v1$endpoint', queryParameters: queryParams);
    } on DioException catch (e) {
      throw Exception('GET request failed: ${e.response?.data ?? e.message}');
    }
  }

  Future<Response> apiPost(String endpoint,
      {Map<String, dynamic>? data}) async {
    try {
      return await _dio.post(
        '/api/v1$endpoint',
        data: data,
        options: Options(headers: {'Authorization': _authKey ?? ''}),
      );
    } on DioException {
      rethrow;
    }
  }
}
