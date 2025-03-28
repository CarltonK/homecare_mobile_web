import 'dart:convert';
import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio;
  String? _authKey;

  ApiClient(this._dio) {
    const String baseUrl = String.fromEnvironment('base_url');

    _dio.options.baseUrl = baseUrl;
    _dio.options.headers = {
      'Accept': 'application/json',
    };
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  /// Set authentication credentials after login
  void setAuthCredentials(String username, String password) {
    _authKey = 'Basic ${base64Encode(utf8.encode('$username:$password'))}';

    _dio.options.headers['Authorization'] = _authKey!;
  }

  /// Set authentication credentials using a Bearer token
  void setAuthToken(String token) {
    _authKey = 'Bearer $token';

    _dio.options.headers['Authorization'] = _authKey!;
  }

  /// Clear authentication on logout
  void clearAuth() {
    _authKey = null;
    _dio.options.headers.remove('Authorization');
  }

  Future<Response> apiGet(String endpoint,
      {Map<String, dynamic>? queryParams}) async {
    return await _dio.get('/api/v1$endpoint', queryParameters: queryParams);
  }

  Future<Response> apiPost(String endpoint,
      {Map<String, dynamic>? data}) async {
    return await _dio.post('/api/v1$endpoint', data: data);
  }
}
