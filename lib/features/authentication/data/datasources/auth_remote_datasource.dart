import 'package:dio/dio.dart';
import '../../../../core/core.dart';
import '../../authentication.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> authenticate(LoginRequest data);
  Future<RegistrationResponse> register(RegistrationRequest data);
  Future<void> logout();
  Future<ResponseModel> passwordReset(String email);
  Future<UserResponseModel> fetchUserDetails();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;
  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<LoginResponse> authenticate(LoginRequest data) async {
    try {
      final response = await apiClient.apiPost(
        '/auth/login',
        data: data.toJson(),
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
  Future<RegistrationResponse> register(RegistrationRequest data) async {
    try {
      final response = await apiClient.apiPost(
        '/auth/register',
        data: data.toJson(),
      );

      return RegistrationResponse.fromJson(response.data);
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
        '/auth/password/request-password-reset',
        data: {'emailAddress': email},
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
