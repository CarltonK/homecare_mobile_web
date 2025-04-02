// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) =>
    _UserResponseModel(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      security: Security.fromJson(json['security'] as Map<String, dynamic>),
      appMetadata: json['app_metadata'] as List<dynamic>,
    );

Map<String, dynamic> _$UserResponseModelToJson(_UserResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'security': instance.security,
      'app_metadata': instance.appMetadata,
    };

_Security _$SecurityFromJson(Map<String, dynamic> json) => _Security(
      mfaEnabled: json['mfa_enabled'] as bool,
      mfaMethods: json['mfa_methods'] as List<dynamic>,
      activeSessions: (json['active_sessions'] as List<dynamic>)
          .map((e) => ActiveSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SecurityToJson(_Security instance) => <String, dynamic>{
      'mfa_enabled': instance.mfaEnabled,
      'mfa_methods': instance.mfaMethods,
      'active_sessions': instance.activeSessions,
    };

_ActiveSession _$ActiveSessionFromJson(Map<String, dynamic> json) =>
    _ActiveSession(
      id: (json['id'] as num).toInt(),
      device: Device.fromJson(json['device'] as Map<String, dynamic>),
      ipAddress: json['ip_address'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      lastActivity: json['last_activity'],
    );

Map<String, dynamic> _$ActiveSessionToJson(_ActiveSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device': instance.device,
      'ip_address': instance.ipAddress,
      'created_at': instance.createdAt.toIso8601String(),
      'last_activity': instance.lastActivity,
    };

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
      type: json['type'] as String,
      browser: json['browser'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
      'type': instance.type,
      'browser': instance.browser,
      'platform': instance.platform,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      emailVerified: json['email_verified'] as bool,
      phone: json['phone'] as String?,
      phoneVerified: json['phone_verified'] as bool,
      mfaEnabled: json['mfa_enabled'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      lastLogin: DateTime.parse(json['last_login'] as String),
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email_verified': instance.emailVerified,
      'phone': instance.phone,
      'phone_verified': instance.phoneVerified,
      'mfa_enabled': instance.mfaEnabled,
      'created_at': instance.createdAt.toIso8601String(),
      'last_login': instance.lastLogin.toIso8601String(),
      'metadata': instance.metadata,
    };

_Metadata _$MetadataFromJson(Map<String, dynamic> json) => _Metadata(
      registration:
          Registration.fromJson(json['registration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetadataToJson(_Metadata instance) => <String, dynamic>{
      'registration': instance.registration,
    };

_Registration _$RegistrationFromJson(Map<String, dynamic> json) =>
    _Registration(
      ip: json['ip'] as String,
      device: json['device'] as String,
      browser: json['browser'] as String,
      location: json['location'] as String?,
      platform: json['platform'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$RegistrationToJson(_Registration instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'device': instance.device,
      'browser': instance.browser,
      'location': instance.location,
      'platform': instance.platform,
      'timestamp': instance.timestamp.toIso8601String(),
    };
