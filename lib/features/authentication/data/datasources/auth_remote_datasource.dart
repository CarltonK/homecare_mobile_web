import 'package:dio/dio.dart';

import '../../../../core/core.dart';
import '../../authentication.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> authenticate(String username, String password);
  Future<LoginResponse> register(
    String username,
    String password,
    String firstName,
    String lastName,
  );
  Future<void> logout();
  Future<ResponseModel> passwordReset(String email);
  Future<UserResponseModel> fetchUserDetails();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<LoginResponse> authenticate(String email, String password) async {
    try {
      final response = await apiClient.apiPost(
        '/auth/login',
        data: {'emailAddress': 'Justine.Cummings@yahoo.com', 'password': 'Justine.Cummings@yahoo.com'},
      );

      if (response.statusCode == 200) {
        // Set credentials in ApiClient after successful login
        // ignore: avoid_dynamic_calls
        final String token = response.data['accessToken'];
        apiClient.setAuthToken(token);
      }

      return LoginResponse.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        if (e.error is ResponseModel) {
          throw e.error!;
        } else {
          final errorData =
              e.response?.data ?? {'error': 'Authentication failed'};
          throw ResponseModel.fromJson(errorData);
        }
      } else {
        throw const ResponseModel(error: 'Unexpected error');
      }
    }
  }

  @override
  Future<LoginResponse> register(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    try {
      final response = await apiClient.apiPost('/auth/register', data: {
        'email': email,
        'password': password,
        'first_name': firstName,
        'last_name': lastName,
      });

      if (response.statusCode == 200) {
        // Set credentials in ApiClient after successful login
        // ignore: avoid_dynamic_calls
        final String token = response.data['access_token'];
        apiClient.setAuthToken(token);
      }

      return LoginResponse.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        if (e.error is ResponseModel) {
          throw e.error!;
        } else {
          final errorData =
              e.response?.data ?? {'error': 'Registration failed'};
          throw ResponseModel.fromJson(errorData);
        }
      } else {
        throw const ResponseModel(error: 'Unexpected error');
      }
    }
  }

  @override
  Future<void> logout() async {
    try {
      final response = await apiClient.apiPost('/auth/logout');
      if (response.statusCode == 200) return apiClient.clearAuth();
    } catch (e) {
      if (e is DioException) {
        if (e.error is ResponseModel) {
          throw e.error!;
        } else {
          final errorData = e.response?.data ?? {'error': 'Logout failed'};
          throw ResponseModel.fromJson(errorData);
        }
      } else {
        throw const ResponseModel(error: 'Unexpected error');
      }
    }
  }

  @override
  Future<ResponseModel> passwordReset(String email) async {
    try {
      final response = await apiClient.apiPost(
        '/auth/password/request-reset',
        data: {'email': email},
      );
      return ResponseModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        if (e.error is ResponseModel) {
          throw e.error!;
        } else {
          final errorData =
              e.response?.data ?? {'error': 'Password Reset failed'};
          throw ResponseModel.fromJson(errorData);
        }
      } else {
        throw const ResponseModel(error: 'Unexpected error');
      }
    }
  }

  @override
  Future<UserResponseModel> fetchUserDetails() async {
    try {
      final response = await apiClient.apiGet('/users/me');
      return UserResponseModel.fromJson(response.data);
    } catch (e) {
      if (e is DioException) {
        if (e.error is ResponseModel) {
          throw e.error!;
        } else {
          final errorData =
              e.response?.data ?? {'error': 'Fetch User Details failed'};
          throw ResponseModel.fromJson(errorData);
        }
      } else {
        throw const ResponseModel(error: 'Unexpected error');
      }
    }
  }
}
