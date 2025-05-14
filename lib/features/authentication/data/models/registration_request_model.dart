import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_request_model.freezed.dart';
part 'registration_request_model.g.dart';

@freezed
abstract class RegistrationRequest with _$RegistrationRequest {
  @JsonSerializable(explicitToJson: true)
  const factory RegistrationRequest({
    @JsonKey(name: 'emailAddress') required String email,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
  }) = _RegistrationRequest;

  factory RegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestFromJson(json);
}
