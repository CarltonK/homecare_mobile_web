// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) =>
    _UserResponseModel(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      security: Security.fromJson(json['security'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResponseModelToJson(_UserResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'security': instance.security,
    };

_Security _$SecurityFromJson(Map<String, dynamic> json) => _Security(
      mfaEnabled: json['mfaEnabled'] as bool,
      mfaMethods: json['mfaMethods'] as List<dynamic>,
      activeSessions: (json['activeSessions'] as List<dynamic>)
          .map((e) => ActiveSession.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SecurityToJson(_Security instance) => <String, dynamic>{
      'mfaEnabled': instance.mfaEnabled,
      'mfaMethods': instance.mfaMethods,
      'activeSessions': instance.activeSessions,
    };

_ActiveSession _$ActiveSessionFromJson(Map<String, dynamic> json) =>
    _ActiveSession(
      id: (json['id'] as num).toInt(),
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      ipAddress: json['ip_address'] as String?,
      lastActivity: json['lastActivityAt'],
    );

Map<String, dynamic> _$ActiveSessionToJson(_ActiveSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'device': instance.device,
      'ip_address': instance.ipAddress,
      'lastActivityAt': instance.lastActivity,
    };

_Metadata _$MetadataFromJson(Map<String, dynamic> json) => _Metadata(
      ipAddress: json['ipAddress'] as String,
      userAgent: json['userAgent'] as String,
    );

Map<String, dynamic> _$MetadataToJson(_Metadata instance) => <String, dynamic>{
      'ipAddress': instance.ipAddress,
      'userAgent': instance.userAgent,
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
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      emailVerified: json['emailVerified'] as bool,
      mfaEnabled: json['mfaEnabled'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastLogin: DateTime.parse(json['lastLogin'] as String),
      phone: json['phone'] as String?,
      phoneVerified: json['phoneVerified'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'emailVerified': instance.emailVerified,
      'mfaEnabled': instance.mfaEnabled,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastLogin': instance.lastLogin.toIso8601String(),
      'phone': instance.phone,
      'phoneVerified': instance.phoneVerified,
      'metadata': instance.metadata,
    };
