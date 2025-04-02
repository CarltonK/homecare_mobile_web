import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'security') required Security security,
    @JsonKey(name: 'app_metadata') required List<dynamic> appMetadata,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}

@freezed
abstract class Security with _$Security {
  const factory Security({
    @JsonKey(name: 'mfa_enabled') required bool mfaEnabled,
    @JsonKey(name: 'mfa_methods') required List<dynamic> mfaMethods,
    @JsonKey(name: 'active_sessions')
    required List<ActiveSession> activeSessions,
  }) = _Security;

  factory Security.fromJson(Map<String, dynamic> json) =>
      _$SecurityFromJson(json);
}

@freezed
abstract class ActiveSession with _$ActiveSession {
  const factory ActiveSession({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'device') required Device device,
    @JsonKey(name: 'ip_address') required String ipAddress,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'last_activity') dynamic lastActivity,
  }) = _ActiveSession;

  factory ActiveSession.fromJson(Map<String, dynamic> json) =>
      _$ActiveSessionFromJson(json);
}

@freezed
abstract class Device with _$Device {
  const factory Device({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'browser') required String browser,
    @JsonKey(name: 'platform') required String platform,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email_verified') required bool emailVerified,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'phone_verified') required bool phoneVerified,
    @JsonKey(name: 'mfa_enabled') required bool mfaEnabled,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'last_login') required DateTime lastLogin,
    @JsonKey(name: 'metadata') required Metadata metadata,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Metadata with _$Metadata {
  const factory Metadata({
    @JsonKey(name: 'registration') required Registration registration,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
abstract class Registration with _$Registration {
  const factory Registration({
    @JsonKey(name: 'ip') required String ip,
    @JsonKey(name: 'device') required String device,
    @JsonKey(name: 'browser') required String browser,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'platform') required String platform,
    @JsonKey(name: 'timestamp') required DateTime timestamp,
  }) = _Registration;

  factory Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);
}
