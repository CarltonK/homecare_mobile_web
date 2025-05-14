// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegistrationRequest _$RegistrationRequestFromJson(Map<String, dynamic> json) =>
    _RegistrationRequest(
      email: json['emailAddress'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$RegistrationRequestToJson(
        _RegistrationRequest instance) =>
    <String, dynamic>{
      'emailAddress': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
