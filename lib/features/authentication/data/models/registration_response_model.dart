import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_response_model.freezed.dart';
part 'registration_response_model.g.dart';

@freezed
abstract class RegistrationResponse with _$RegistrationResponse {
  const factory RegistrationResponse({
    @JsonKey(name: 'message') required String message,
    @JsonKey(name: 'requiresVerification', defaultValue: true)
    required bool requiresVerification,
  }) = _RegistrationResponse;

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseFromJson(json);
}
