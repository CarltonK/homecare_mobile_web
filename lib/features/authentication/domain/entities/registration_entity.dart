import '../../data/models/models.dart';

class RegistrationEntity {
  final String message;
  final bool requiresVerification;

  RegistrationEntity({
    required this.message,
    required this.requiresVerification,
  });

  factory RegistrationEntity.fromResponse(RegistrationResponse response) {
    return RegistrationEntity(
      message: response.message,
      requiresVerification: response.requiresVerification,
    );
  }
}
