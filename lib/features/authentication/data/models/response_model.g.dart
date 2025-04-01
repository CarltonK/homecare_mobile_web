// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseModel _$ResponseModelFromJson(Map<String, dynamic> json) =>
    _ResponseModel(
      error: json['error'] as String?,
      message: json['message'] as String?,
      validationErrors: json['validation_errors'] == null
          ? null
          : ValidationErrors.fromJson(
              json['validation_errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseModelToJson(_ResponseModel instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'validation_errors': instance.validationErrors?.toJson(),
    };

_ValidationErrors _$ValidationErrorsFromJson(Map<String, dynamic> json) =>
    _ValidationErrors(
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ValidationErrorsToJson(_ValidationErrors instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
