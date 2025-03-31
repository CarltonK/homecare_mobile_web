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
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient apiClient;

  AuthRemoteDataSourceImpl(this.apiClient);

  @override
  Future<LoginResponse> authenticate(String email, String password) async {
    try {
      final response = await apiClient.apiPost('/auth/login', data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        // Set credentials in ApiClient after successful login
        // ignore: avoid_dynamic_calls
        final String token = response.data['access_token'];
        apiClient.setAuthToken(token);
      }

      return LoginResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Authentication failed');
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
      throw Exception('Authentication failed');
    }
  }

  @override
  Future<void> logout() async {
    try {
      // TODO: Uncomment
      // final response = await apiClient.apiPost('/auth/logout');
      // if (response.statusCode == 200) return apiClient.clearAuth();
    } catch (e) {
      throw Exception('Logout Failed');
    }
  }
}
