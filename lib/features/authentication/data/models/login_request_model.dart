import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_model.freezed.dart';
part 'login_request_model.g.dart';

@freezed
abstract class LoginRequest with _$LoginRequest {
  @JsonSerializable(explicitToJson: true)
  const factory LoginRequest({
    @JsonKey(name: 'emailAddress') required String email,
    @JsonKey(name: 'password') String? password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
