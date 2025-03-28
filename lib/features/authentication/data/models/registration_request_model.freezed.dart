// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationRequest {
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'password')
  String get password;
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationRequestCopyWith<RegistrationRequest> get copyWith =>
      _$RegistrationRequestCopyWithImpl<RegistrationRequest>(
          this as RegistrationRequest, _$identity);

  /// Serializes this RegistrationRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegistrationRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, firstName, lastName);

  @override
  String toString() {
    return 'RegistrationRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }
}

/// @nodoc
abstract mixin class $RegistrationRequestCopyWith<$Res> {
  factory $RegistrationRequestCopyWith(
          RegistrationRequest value, $Res Function(RegistrationRequest) _then) =
      _$RegistrationRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class _$RegistrationRequestCopyWithImpl<$Res>
    implements $RegistrationRequestCopyWith<$Res> {
  _$RegistrationRequestCopyWithImpl(this._self, this._then);

  final RegistrationRequest _self;
  final $Res Function(RegistrationRequest) _then;

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _RegistrationRequest implements RegistrationRequest {
  const _RegistrationRequest(
      {@JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'password') required this.password,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName});
  factory _RegistrationRequest.fromJson(Map<String, dynamic> json) =>
      _$RegistrationRequestFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationRequestCopyWith<_RegistrationRequest> get copyWith =>
      __$RegistrationRequestCopyWithImpl<_RegistrationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegistrationRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationRequest &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, firstName, lastName);

  @override
  String toString() {
    return 'RegistrationRequest(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationRequestCopyWith<$Res>
    implements $RegistrationRequestCopyWith<$Res> {
  factory _$RegistrationRequestCopyWith(_RegistrationRequest value,
          $Res Function(_RegistrationRequest) _then) =
      __$RegistrationRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class __$RegistrationRequestCopyWithImpl<$Res>
    implements _$RegistrationRequestCopyWith<$Res> {
  __$RegistrationRequestCopyWithImpl(this._self, this._then);

  final _RegistrationRequest _self;
  final $Res Function(_RegistrationRequest) _then;

  /// Create a copy of RegistrationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_RegistrationRequest(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
