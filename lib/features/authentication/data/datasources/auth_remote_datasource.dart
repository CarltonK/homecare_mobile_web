import 'package:dio/dio.dart';
import '../../../../core/core.dart';
import '../../authentication.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> authenticate(LoginRequest data);
  Future<RegistrationResponse> register(RegistrationRequest data);
  Future<void> logout();
  Future<ResponseModel?> passwordReset(LoginRequest data);
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
        if (e.response != null) {
          // Handle structured error response
          final errorData = e.response!.data;

          if (errorData is Map<String, dynamic>) {
            throw ResponseModel.fromJson(errorData);
          } else if (errorData is String) {
            // Handle string error responses
            return throw ResponseModel(message: errorData);
          }
        }
        // Fallback for Dio errors without response
        throw ResponseModel(
          error: e.error?.toString() ?? 'Network error occurred',
          message: e.message,
        );
      }

      // Handle non-Dio errors
      throw const ResponseModel(error: 'Unexpected error');
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
  Future<ResponseModel?> passwordReset(LoginRequest data) async {
    try {
      final response = await apiClient.apiPost(
        '/auth/request-password-reset',
        data: data.toJson(),
      );
      if (response.statusCode == 202) {
        return ResponseModel.fromJson(response.data);
      }
      return null;
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
