// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationResponse {
  @JsonKey(name: 'message')
  String get message;
  @JsonKey(name: 'requiresVerification', defaultValue: true)
  bool get requiresVerification;

  /// Create a copy of RegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationResponseCopyWith<RegistrationResponse> get copyWith =>
      _$RegistrationResponseCopyWithImpl<RegistrationResponse>(
          this as RegistrationResponse, _$identity);

  /// Serializes this RegistrationResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requiresVerification, requiresVerification) ||
                other.requiresVerification == requiresVerification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, requiresVerification);

  @override
  String toString() {
    return 'RegistrationResponse(message: $message, requiresVerification: $requiresVerification)';
  }
}

/// @nodoc
abstract mixin class $RegistrationResponseCopyWith<$Res> {
  factory $RegistrationResponseCopyWith(RegistrationResponse value,
          $Res Function(RegistrationResponse) _then) =
      _$RegistrationResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'requiresVerification', defaultValue: true)
      bool requiresVerification});
}

/// @nodoc
class _$RegistrationResponseCopyWithImpl<$Res>
    implements $RegistrationResponseCopyWith<$Res> {
  _$RegistrationResponseCopyWithImpl(this._self, this._then);

  final RegistrationResponse _self;
  final $Res Function(RegistrationResponse) _then;

  /// Create a copy of RegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? requiresVerification = null,
  }) {
    return _then(_self.copyWith(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      requiresVerification: null == requiresVerification
          ? _self.requiresVerification
          : requiresVerification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _RegistrationResponse implements RegistrationResponse {
  const _RegistrationResponse(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'requiresVerification', defaultValue: true)
      required this.requiresVerification});
  factory _RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationResponseFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'requiresVerification', defaultValue: true)
  final bool requiresVerification;

  /// Create a copy of RegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationResponseCopyWith<_RegistrationResponse> get copyWith =>
      __$RegistrationResponseCopyWithImpl<_RegistrationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegistrationResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.requiresVerification, requiresVerification) ||
                other.requiresVerification == requiresVerification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, requiresVerification);

  @override
  String toString() {
    return 'RegistrationResponse(message: $message, requiresVerification: $requiresVerification)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationResponseCopyWith<$Res>
    implements $RegistrationResponseCopyWith<$Res> {
  factory _$RegistrationResponseCopyWith(_RegistrationResponse value,
          $Res Function(_RegistrationResponse) _then) =
      __$RegistrationResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String message,
      @JsonKey(name: 'requiresVerification', defaultValue: true)
      bool requiresVerification});
}

/// @nodoc
class __$RegistrationResponseCopyWithImpl<$Res>
    implements _$RegistrationResponseCopyWith<$Res> {
  __$RegistrationResponseCopyWithImpl(this._self, this._then);

  final _RegistrationResponse _self;
  final $Res Function(_RegistrationResponse) _then;

  /// Create a copy of RegistrationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? requiresVerification = null,
  }) {
    return _then(_RegistrationResponse(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      requiresVerification: null == requiresVerification
          ? _self.requiresVerification
          : requiresVerification // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
