// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseModel {
  @JsonKey(name: 'error')
  String? get error;
  @JsonKey(name: 'message')
  String? get message;
  @JsonKey(name: 'validation_errors')
  ValidationErrors? get validationErrors;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseModelCopyWith<ResponseModel> get copyWith =>
      _$ResponseModelCopyWithImpl<ResponseModel>(
          this as ResponseModel, _$identity);

  /// Serializes this ResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.validationErrors, validationErrors) ||
                other.validationErrors == validationErrors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, message, validationErrors);

  @override
  String toString() {
    return 'ResponseModel(error: $error, message: $message, validationErrors: $validationErrors)';
  }
}

/// @nodoc
abstract mixin class $ResponseModelCopyWith<$Res> {
  factory $ResponseModelCopyWith(
          ResponseModel value, $Res Function(ResponseModel) _then) =
      _$ResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'error') String? error,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'validation_errors') ValidationErrors? validationErrors});

  $ValidationErrorsCopyWith<$Res>? get validationErrors;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<$Res>
    implements $ResponseModelCopyWith<$Res> {
  _$ResponseModelCopyWithImpl(this._self, this._then);

  final ResponseModel _self;
  final $Res Function(ResponseModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? validationErrors = freezed,
  }) {
    return _then(_self.copyWith(
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      validationErrors: freezed == validationErrors
          ? _self.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors?,
    ));
  }

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorsCopyWith<$Res>? get validationErrors {
    if (_self.validationErrors == null) {
      return null;
    }

    return $ValidationErrorsCopyWith<$Res>(_self.validationErrors!, (value) {
      return _then(_self.copyWith(validationErrors: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ResponseModel implements ResponseModel {
  const _ResponseModel(
      {@JsonKey(name: 'error') this.error,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'validation_errors') this.validationErrors});
  factory _ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);

  @override
  @JsonKey(name: 'error')
  final String? error;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'validation_errors')
  final ValidationErrors? validationErrors;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseModelCopyWith<_ResponseModel> get copyWith =>
      __$ResponseModelCopyWithImpl<_ResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.validationErrors, validationErrors) ||
                other.validationErrors == validationErrors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, message, validationErrors);

  @override
  String toString() {
    return 'ResponseModel(error: $error, message: $message, validationErrors: $validationErrors)';
  }
}

/// @nodoc
abstract mixin class _$ResponseModelCopyWith<$Res>
    implements $ResponseModelCopyWith<$Res> {
  factory _$ResponseModelCopyWith(
          _ResponseModel value, $Res Function(_ResponseModel) _then) =
      __$ResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'error') String? error,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'validation_errors') ValidationErrors? validationErrors});

  @override
  $ValidationErrorsCopyWith<$Res>? get validationErrors;
}

/// @nodoc
class __$ResponseModelCopyWithImpl<$Res>
    implements _$ResponseModelCopyWith<$Res> {
  __$ResponseModelCopyWithImpl(this._self, this._then);

  final _ResponseModel _self;
  final $Res Function(_ResponseModel) _then;

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? validationErrors = freezed,
  }) {
    return _then(_ResponseModel(
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      validationErrors: freezed == validationErrors
          ? _self.validationErrors
          : validationErrors // ignore: cast_nullable_to_non_nullable
              as ValidationErrors?,
    ));
  }

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ValidationErrorsCopyWith<$Res>? get validationErrors {
    if (_self.validationErrors == null) {
      return null;
    }

    return $ValidationErrorsCopyWith<$Res>(_self.validationErrors!, (value) {
      return _then(_self.copyWith(validationErrors: value));
    });
  }
}

/// @nodoc
mixin _$ValidationErrors {
  @JsonKey(name: 'email')
  List<String>? get email;

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationErrorsCopyWith<ValidationErrors> get copyWith =>
      _$ValidationErrorsCopyWithImpl<ValidationErrors>(
          this as ValidationErrors, _$identity);

  /// Serializes this ValidationErrors to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationErrors &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @override
  String toString() {
    return 'ValidationErrors(email: $email)';
  }
}

/// @nodoc
abstract mixin class $ValidationErrorsCopyWith<$Res> {
  factory $ValidationErrorsCopyWith(
          ValidationErrors value, $Res Function(ValidationErrors) _then) =
      _$ValidationErrorsCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'email') List<String>? email});
}

/// @nodoc
class _$ValidationErrorsCopyWithImpl<$Res>
    implements $ValidationErrorsCopyWith<$Res> {
  _$ValidationErrorsCopyWithImpl(this._self, this._then);

  final ValidationErrors _self;
  final $Res Function(ValidationErrors) _then;

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ValidationErrors implements ValidationErrors {
  const _ValidationErrors({@JsonKey(name: 'email') final List<String>? email})
      : _email = email;
  factory _ValidationErrors.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorsFromJson(json);

  final List<String>? _email;
  @override
  @JsonKey(name: 'email')
  List<String>? get email {
    final value = _email;
    if (value == null) return null;
    if (_email is EqualUnmodifiableListView) return _email;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationErrorsCopyWith<_ValidationErrors> get copyWith =>
      __$ValidationErrorsCopyWithImpl<_ValidationErrors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationErrorsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationErrors &&
            const DeepCollectionEquality().equals(other._email, _email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_email));

  @override
  String toString() {
    return 'ValidationErrors(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$ValidationErrorsCopyWith<$Res>
    implements $ValidationErrorsCopyWith<$Res> {
  factory _$ValidationErrorsCopyWith(
          _ValidationErrors value, $Res Function(_ValidationErrors) _then) =
      __$ValidationErrorsCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'email') List<String>? email});
}

/// @nodoc
class __$ValidationErrorsCopyWithImpl<$Res>
    implements _$ValidationErrorsCopyWith<$Res> {
  __$ValidationErrorsCopyWithImpl(this._self, this._then);

  final _ValidationErrors _self;
  final $Res Function(_ValidationErrors) _then;

  /// Create a copy of ValidationErrors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_ValidationErrors(
      email: freezed == email
          ? _self._email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on
