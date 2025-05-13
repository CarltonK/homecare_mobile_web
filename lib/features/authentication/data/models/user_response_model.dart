import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@freezed
abstract class UserResponseModel with _$UserResponseModel {
  const factory UserResponseModel({
    @JsonKey(name: 'user') required User user,
    @JsonKey(name: 'security') required Security security,
    // @JsonKey(name: 'app_metadata') List<dynamic>? appMetadata,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);
}

@freezed
abstract class Security with _$Security {
  const factory Security({
    @JsonKey(name: 'mfaEnabled') required bool mfaEnabled,
    @JsonKey(name: 'mfaMethods') required List<dynamic> mfaMethods,
    @JsonKey(name: 'activeSessions')
    required List<ActiveSession> activeSessions,
  }) = _Security;

  factory Security.fromJson(Map<String, dynamic> json) =>
      _$SecurityFromJson(json);
}

@freezed
abstract class ActiveSession with _$ActiveSession {
  const factory ActiveSession({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'metadata') required Metadata metadata,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'device') Device? device,
    @JsonKey(name: 'ip_address') String? ipAddress,
    @JsonKey(name: 'lastActivityAt') dynamic lastActivity,
  }) = _ActiveSession;

  factory ActiveSession.fromJson(Map<String, dynamic> json) =>
      _$ActiveSessionFromJson(json);
}

@freezed
abstract class Metadata with _$Metadata {
  const factory Metadata({
    @JsonKey(name: 'ipAddress') required String ipAddress,
    @JsonKey(name: 'userAgent') required String userAgent,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
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
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    @JsonKey(name: 'emailVerified') required bool emailVerified,
    @JsonKey(name: 'mfaEnabled') required bool mfaEnabled,
    @JsonKey(name: 'createdAt') required DateTime createdAt,
    @JsonKey(name: 'lastLogin') required DateTime lastLogin,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'phoneVerified') bool? phoneVerified,
    @JsonKey(name: 'metadata') Metadata? metadata,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
