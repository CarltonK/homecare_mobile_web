import '../../data/models/models.dart';

class AuthEntity {
  final String accessToken;
  final String refreshToken;
  final int expiresIn;
  final String sessionId;

  AuthEntity({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
    required this.sessionId,
  });

  factory AuthEntity.fromLoginResponse(LoginResponse response) {
    return AuthEntity(
      accessToken: response.accessToken,
      refreshToken: response.refreshToken,
      expiresIn: response.expiresIn,
      sessionId: response.sessionId,
    );
  }
}
