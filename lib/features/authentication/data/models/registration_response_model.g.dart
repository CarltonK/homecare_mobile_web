// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegistrationResponse _$RegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    _RegistrationResponse(
      message: json['message'] as String,
      requiresVerification: json['requiresVerification'] as bool? ?? true,
    );

Map<String, dynamic> _$RegistrationResponseToJson(
        _RegistrationResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'requiresVerification': instance.requiresVerification,
    };
