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
  @JsonKey(name: 'feedback')
  Feedback? get feedback;

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
                other.validationErrors == validationErrors) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, message, validationErrors, feedback);

  @override
  String toString() {
    return 'ResponseModel(error: $error, message: $message, validationErrors: $validationErrors, feedback: $feedback)';
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
      @JsonKey(name: 'validation_errors') ValidationErrors? validationErrors,
      @JsonKey(name: 'feedback') Feedback? feedback});

  $ValidationErrorsCopyWith<$Res>? get validationErrors;
  $FeedbackCopyWith<$Res>? get feedback;
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
    Object? feedback = freezed,
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
      feedback: freezed == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as Feedback?,
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

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackCopyWith<$Res>? get feedback {
    if (_self.feedback == null) {
      return null;
    }

    return $FeedbackCopyWith<$Res>(_self.feedback!, (value) {
      return _then(_self.copyWith(feedback: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ResponseModel implements ResponseModel {
  const _ResponseModel(
      {@JsonKey(name: 'error') this.error,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'validation_errors') this.validationErrors,
      @JsonKey(name: 'feedback') this.feedback});
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
  @override
  @JsonKey(name: 'feedback')
  final Feedback? feedback;

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
                other.validationErrors == validationErrors) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, error, message, validationErrors, feedback);

  @override
  String toString() {
    return 'ResponseModel(error: $error, message: $message, validationErrors: $validationErrors, feedback: $feedback)';
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
      @JsonKey(name: 'validation_errors') ValidationErrors? validationErrors,
      @JsonKey(name: 'feedback') Feedback? feedback});

  @override
  $ValidationErrorsCopyWith<$Res>? get validationErrors;
  @override
  $FeedbackCopyWith<$Res>? get feedback;
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
    Object? feedback = freezed,
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
      feedback: freezed == feedback
          ? _self.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as Feedback?,
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

  /// Create a copy of ResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedbackCopyWith<$Res>? get feedback {
    if (_self.feedback == null) {
      return null;
    }

    return $FeedbackCopyWith<$Res>(_self.feedback!, (value) {
      return _then(_self.copyWith(feedback: value));
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

/// @nodoc
mixin _$Feedback {
  @JsonKey(name: 'warning')
  String get warning;
  @JsonKey(name: 'suggestions')
  List<String> get suggestions;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedbackCopyWith<Feedback> get copyWith =>
      _$FeedbackCopyWithImpl<Feedback>(this as Feedback, _$identity);

  /// Serializes this Feedback to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Feedback &&
            (identical(other.warning, warning) || other.warning == warning) &&
            const DeepCollectionEquality()
                .equals(other.suggestions, suggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, warning, const DeepCollectionEquality().hash(suggestions));

  @override
  String toString() {
    return 'Feedback(warning: $warning, suggestions: $suggestions)';
  }
}

/// @nodoc
abstract mixin class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) _then) =
      _$FeedbackCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'warning') String warning,
      @JsonKey(name: 'suggestions') List<String> suggestions});
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res> implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._self, this._then);

  final Feedback _self;
  final $Res Function(Feedback) _then;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? warning = null,
    Object? suggestions = null,
  }) {
    return _then(_self.copyWith(
      warning: null == warning
          ? _self.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String,
      suggestions: null == suggestions
          ? _self.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Feedback implements Feedback {
  const _Feedback(
      {@JsonKey(name: 'warning') required this.warning,
      @JsonKey(name: 'suggestions') required final List<String> suggestions})
      : _suggestions = suggestions;
  factory _Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);

  @override
  @JsonKey(name: 'warning')
  final String warning;
  final List<String> _suggestions;
  @override
  @JsonKey(name: 'suggestions')
  List<String> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedbackCopyWith<_Feedback> get copyWith =>
      __$FeedbackCopyWithImpl<_Feedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeedbackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Feedback &&
            (identical(other.warning, warning) || other.warning == warning) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, warning, const DeepCollectionEquality().hash(_suggestions));

  @override
  String toString() {
    return 'Feedback(warning: $warning, suggestions: $suggestions)';
  }
}

/// @nodoc
abstract mixin class _$FeedbackCopyWith<$Res>
    implements $FeedbackCopyWith<$Res> {
  factory _$FeedbackCopyWith(_Feedback value, $Res Function(_Feedback) _then) =
      __$FeedbackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'warning') String warning,
      @JsonKey(name: 'suggestions') List<String> suggestions});
}

/// @nodoc
class __$FeedbackCopyWithImpl<$Res> implements _$FeedbackCopyWith<$Res> {
  __$FeedbackCopyWithImpl(this._self, this._then);

  final _Feedback _self;
  final $Res Function(_Feedback) _then;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? warning = null,
    Object? suggestions = null,
  }) {
    return _then(_Feedback(
      warning: null == warning
          ? _self.warning
          : warning // ignore: cast_nullable_to_non_nullable
              as String,
      suggestions: null == suggestions
          ? _self._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
