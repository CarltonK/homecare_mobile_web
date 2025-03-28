import '../../../../core/core.dart';
import '../../authentication.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> authenticate(String username, String password);
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
}
