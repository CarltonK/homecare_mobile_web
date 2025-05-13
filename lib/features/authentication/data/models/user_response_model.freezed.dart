// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserResponseModel {
  @JsonKey(name: 'user')
  User get user;
  @JsonKey(name: 'security')
  Security get security;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserResponseModelCopyWith<UserResponseModel> get copyWith =>
      _$UserResponseModelCopyWithImpl<UserResponseModel>(
          this as UserResponseModel, _$identity);

  /// Serializes this UserResponseModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserResponseModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.security, security) ||
                other.security == security));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, security);

  @override
  String toString() {
    return 'UserResponseModel(user: $user, security: $security)';
  }
}

/// @nodoc
abstract mixin class $UserResponseModelCopyWith<$Res> {
  factory $UserResponseModelCopyWith(
          UserResponseModel value, $Res Function(UserResponseModel) _then) =
      _$UserResponseModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User user,
      @JsonKey(name: 'security') Security security});

  $UserCopyWith<$Res> get user;
  $SecurityCopyWith<$Res> get security;
}

/// @nodoc
class _$UserResponseModelCopyWithImpl<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  _$UserResponseModelCopyWithImpl(this._self, this._then);

  final UserResponseModel _self;
  final $Res Function(UserResponseModel) _then;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? security = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      security: null == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as Security,
    ));
  }

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecurityCopyWith<$Res> get security {
    return $SecurityCopyWith<$Res>(_self.security, (value) {
      return _then(_self.copyWith(security: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _UserResponseModel implements UserResponseModel {
  const _UserResponseModel(
      {@JsonKey(name: 'user') required this.user,
      @JsonKey(name: 'security') required this.security});
  factory _UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  @override
  @JsonKey(name: 'user')
  final User user;
  @override
  @JsonKey(name: 'security')
  final Security security;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserResponseModelCopyWith<_UserResponseModel> get copyWith =>
      __$UserResponseModelCopyWithImpl<_UserResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserResponseModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserResponseModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.security, security) ||
                other.security == security));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, security);

  @override
  String toString() {
    return 'UserResponseModel(user: $user, security: $security)';
  }
}

/// @nodoc
abstract mixin class _$UserResponseModelCopyWith<$Res>
    implements $UserResponseModelCopyWith<$Res> {
  factory _$UserResponseModelCopyWith(
          _UserResponseModel value, $Res Function(_UserResponseModel) _then) =
      __$UserResponseModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') User user,
      @JsonKey(name: 'security') Security security});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $SecurityCopyWith<$Res> get security;
}

/// @nodoc
class __$UserResponseModelCopyWithImpl<$Res>
    implements _$UserResponseModelCopyWith<$Res> {
  __$UserResponseModelCopyWithImpl(this._self, this._then);

  final _UserResponseModel _self;
  final $Res Function(_UserResponseModel) _then;

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? security = null,
  }) {
    return _then(_UserResponseModel(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      security: null == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as Security,
    ));
  }

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of UserResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SecurityCopyWith<$Res> get security {
    return $SecurityCopyWith<$Res>(_self.security, (value) {
      return _then(_self.copyWith(security: value));
    });
  }
}

/// @nodoc
mixin _$Security {
  @JsonKey(name: 'mfaEnabled')
  bool get mfaEnabled;
  @JsonKey(name: 'mfaMethods')
  List<dynamic> get mfaMethods;
  @JsonKey(name: 'activeSessions')
  List<ActiveSession> get activeSessions;

  /// Create a copy of Security
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SecurityCopyWith<Security> get copyWith =>
      _$SecurityCopyWithImpl<Security>(this as Security, _$identity);

  /// Serializes this Security to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Security &&
            (identical(other.mfaEnabled, mfaEnabled) ||
                other.mfaEnabled == mfaEnabled) &&
            const DeepCollectionEquality()
                .equals(other.mfaMethods, mfaMethods) &&
            const DeepCollectionEquality()
                .equals(other.activeSessions, activeSessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mfaEnabled,
      const DeepCollectionEquality().hash(mfaMethods),
      const DeepCollectionEquality().hash(activeSessions));

  @override
  String toString() {
    return 'Security(mfaEnabled: $mfaEnabled, mfaMethods: $mfaMethods, activeSessions: $activeSessions)';
  }
}

/// @nodoc
abstract mixin class $SecurityCopyWith<$Res> {
  factory $SecurityCopyWith(Security value, $Res Function(Security) _then) =
      _$SecurityCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'mfaEnabled') bool mfaEnabled,
      @JsonKey(name: 'mfaMethods') List<dynamic> mfaMethods,
      @JsonKey(name: 'activeSessions') List<ActiveSession> activeSessions});
}

/// @nodoc
class _$SecurityCopyWithImpl<$Res> implements $SecurityCopyWith<$Res> {
  _$SecurityCopyWithImpl(this._self, this._then);

  final Security _self;
  final $Res Function(Security) _then;

  /// Create a copy of Security
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mfaEnabled = null,
    Object? mfaMethods = null,
    Object? activeSessions = null,
  }) {
    return _then(_self.copyWith(
      mfaEnabled: null == mfaEnabled
          ? _self.mfaEnabled
          : mfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mfaMethods: null == mfaMethods
          ? _self.mfaMethods
          : mfaMethods // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      activeSessions: null == activeSessions
          ? _self.activeSessions
          : activeSessions // ignore: cast_nullable_to_non_nullable
              as List<ActiveSession>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Security implements Security {
  const _Security(
      {@JsonKey(name: 'mfaEnabled') required this.mfaEnabled,
      @JsonKey(name: 'mfaMethods') required final List<dynamic> mfaMethods,
      @JsonKey(name: 'activeSessions')
      required final List<ActiveSession> activeSessions})
      : _mfaMethods = mfaMethods,
        _activeSessions = activeSessions;
  factory _Security.fromJson(Map<String, dynamic> json) =>
      _$SecurityFromJson(json);

  @override
  @JsonKey(name: 'mfaEnabled')
  final bool mfaEnabled;
  final List<dynamic> _mfaMethods;
  @override
  @JsonKey(name: 'mfaMethods')
  List<dynamic> get mfaMethods {
    if (_mfaMethods is EqualUnmodifiableListView) return _mfaMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mfaMethods);
  }

  final List<ActiveSession> _activeSessions;
  @override
  @JsonKey(name: 'activeSessions')
  List<ActiveSession> get activeSessions {
    if (_activeSessions is EqualUnmodifiableListView) return _activeSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeSessions);
  }

  /// Create a copy of Security
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SecurityCopyWith<_Security> get copyWith =>
      __$SecurityCopyWithImpl<_Security>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SecurityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Security &&
            (identical(other.mfaEnabled, mfaEnabled) ||
                other.mfaEnabled == mfaEnabled) &&
            const DeepCollectionEquality()
                .equals(other._mfaMethods, _mfaMethods) &&
            const DeepCollectionEquality()
                .equals(other._activeSessions, _activeSessions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mfaEnabled,
      const DeepCollectionEquality().hash(_mfaMethods),
      const DeepCollectionEquality().hash(_activeSessions));

  @override
  String toString() {
    return 'Security(mfaEnabled: $mfaEnabled, mfaMethods: $mfaMethods, activeSessions: $activeSessions)';
  }
}

/// @nodoc
abstract mixin class _$SecurityCopyWith<$Res>
    implements $SecurityCopyWith<$Res> {
  factory _$SecurityCopyWith(_Security value, $Res Function(_Security) _then) =
      __$SecurityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'mfaEnabled') bool mfaEnabled,
      @JsonKey(name: 'mfaMethods') List<dynamic> mfaMethods,
      @JsonKey(name: 'activeSessions') List<ActiveSession> activeSessions});
}

/// @nodoc
class __$SecurityCopyWithImpl<$Res> implements _$SecurityCopyWith<$Res> {
  __$SecurityCopyWithImpl(this._self, this._then);

  final _Security _self;
  final $Res Function(_Security) _then;

  /// Create a copy of Security
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mfaEnabled = null,
    Object? mfaMethods = null,
    Object? activeSessions = null,
  }) {
    return _then(_Security(
      mfaEnabled: null == mfaEnabled
          ? _self.mfaEnabled
          : mfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      mfaMethods: null == mfaMethods
          ? _self._mfaMethods
          : mfaMethods // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      activeSessions: null == activeSessions
          ? _self._activeSessions
          : activeSessions // ignore: cast_nullable_to_non_nullable
              as List<ActiveSession>,
    ));
  }
}

/// @nodoc
mixin _$ActiveSession {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'metadata')
  Metadata get metadata;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @JsonKey(name: 'device')
  Device? get device;
  @JsonKey(name: 'ip_address')
  String? get ipAddress;
  @JsonKey(name: 'lastActivityAt')
  dynamic get lastActivity;

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActiveSessionCopyWith<ActiveSession> get copyWith =>
      _$ActiveSessionCopyWithImpl<ActiveSession>(
          this as ActiveSession, _$identity);

  /// Serializes this ActiveSession to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ActiveSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            const DeepCollectionEquality()
                .equals(other.lastActivity, lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, metadata, createdAt, device,
      ipAddress, const DeepCollectionEquality().hash(lastActivity));

  @override
  String toString() {
    return 'ActiveSession(id: $id, metadata: $metadata, createdAt: $createdAt, device: $device, ipAddress: $ipAddress, lastActivity: $lastActivity)';
  }
}

/// @nodoc
abstract mixin class $ActiveSessionCopyWith<$Res> {
  factory $ActiveSessionCopyWith(
          ActiveSession value, $Res Function(ActiveSession) _then) =
      _$ActiveSessionCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'metadata') Metadata metadata,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'device') Device? device,
      @JsonKey(name: 'ip_address') String? ipAddress,
      @JsonKey(name: 'lastActivityAt') dynamic lastActivity});

  $MetadataCopyWith<$Res> get metadata;
  $DeviceCopyWith<$Res>? get device;
}

/// @nodoc
class _$ActiveSessionCopyWithImpl<$Res>
    implements $ActiveSessionCopyWith<$Res> {
  _$ActiveSessionCopyWithImpl(this._self, this._then);

  final ActiveSession _self;
  final $Res Function(ActiveSession) _then;

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
    Object? createdAt = null,
    Object? device = freezed,
    Object? ipAddress = freezed,
    Object? lastActivity = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      device: freezed == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      ipAddress: freezed == ipAddress
          ? _self.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: freezed == lastActivity
          ? _self.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
      return null;
    }

    return $DeviceCopyWith<$Res>(_self.device!, (value) {
      return _then(_self.copyWith(device: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ActiveSession implements ActiveSession {
  const _ActiveSession(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'metadata') required this.metadata,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'device') this.device,
      @JsonKey(name: 'ip_address') this.ipAddress,
      @JsonKey(name: 'lastActivityAt') this.lastActivity});
  factory _ActiveSession.fromJson(Map<String, dynamic> json) =>
      _$ActiveSessionFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'metadata')
  final Metadata metadata;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'device')
  final Device? device;
  @override
  @JsonKey(name: 'ip_address')
  final String? ipAddress;
  @override
  @JsonKey(name: 'lastActivityAt')
  final dynamic lastActivity;

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActiveSessionCopyWith<_ActiveSession> get copyWith =>
      __$ActiveSessionCopyWithImpl<_ActiveSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActiveSessionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            const DeepCollectionEquality()
                .equals(other.lastActivity, lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, metadata, createdAt, device,
      ipAddress, const DeepCollectionEquality().hash(lastActivity));

  @override
  String toString() {
    return 'ActiveSession(id: $id, metadata: $metadata, createdAt: $createdAt, device: $device, ipAddress: $ipAddress, lastActivity: $lastActivity)';
  }
}

/// @nodoc
abstract mixin class _$ActiveSessionCopyWith<$Res>
    implements $ActiveSessionCopyWith<$Res> {
  factory _$ActiveSessionCopyWith(
          _ActiveSession value, $Res Function(_ActiveSession) _then) =
      __$ActiveSessionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'metadata') Metadata metadata,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'device') Device? device,
      @JsonKey(name: 'ip_address') String? ipAddress,
      @JsonKey(name: 'lastActivityAt') dynamic lastActivity});

  @override
  $MetadataCopyWith<$Res> get metadata;
  @override
  $DeviceCopyWith<$Res>? get device;
}

/// @nodoc
class __$ActiveSessionCopyWithImpl<$Res>
    implements _$ActiveSessionCopyWith<$Res> {
  __$ActiveSessionCopyWithImpl(this._self, this._then);

  final _ActiveSession _self;
  final $Res Function(_ActiveSession) _then;

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? metadata = null,
    Object? createdAt = null,
    Object? device = freezed,
    Object? ipAddress = freezed,
    Object? lastActivity = freezed,
  }) {
    return _then(_ActiveSession(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      device: freezed == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
      ipAddress: freezed == ipAddress
          ? _self.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: freezed == lastActivity
          ? _self.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }

  /// Create a copy of ActiveSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
      return null;
    }

    return $DeviceCopyWith<$Res>(_self.device!, (value) {
      return _then(_self.copyWith(device: value));
    });
  }
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: 'ipAddress')
  String get ipAddress;
  @JsonKey(name: 'userAgent')
  String get userAgent;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<Metadata> get copyWith =>
      _$MetadataCopyWithImpl<Metadata>(this as Metadata, _$identity);

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Metadata &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ipAddress, userAgent);

  @override
  String toString() {
    return 'Metadata(ipAddress: $ipAddress, userAgent: $userAgent)';
  }
}

/// @nodoc
abstract mixin class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) _then) =
      _$MetadataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ipAddress') String ipAddress,
      @JsonKey(name: 'userAgent') String userAgent});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res> implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._self, this._then);

  final Metadata _self;
  final $Res Function(Metadata) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipAddress = null,
    Object? userAgent = null,
  }) {
    return _then(_self.copyWith(
      ipAddress: null == ipAddress
          ? _self.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _self.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Metadata implements Metadata {
  const _Metadata(
      {@JsonKey(name: 'ipAddress') required this.ipAddress,
      @JsonKey(name: 'userAgent') required this.userAgent});
  factory _Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  @override
  @JsonKey(name: 'ipAddress')
  final String ipAddress;
  @override
  @JsonKey(name: 'userAgent')
  final String userAgent;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetadataCopyWith<_Metadata> get copyWith =>
      __$MetadataCopyWithImpl<_Metadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Metadata &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ipAddress, userAgent);

  @override
  String toString() {
    return 'Metadata(ipAddress: $ipAddress, userAgent: $userAgent)';
  }
}

/// @nodoc
abstract mixin class _$MetadataCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) _then) =
      __$MetadataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ipAddress') String ipAddress,
      @JsonKey(name: 'userAgent') String userAgent});
}

/// @nodoc
class __$MetadataCopyWithImpl<$Res> implements _$MetadataCopyWith<$Res> {
  __$MetadataCopyWithImpl(this._self, this._then);

  final _Metadata _self;
  final $Res Function(_Metadata) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ipAddress = null,
    Object? userAgent = null,
  }) {
    return _then(_Metadata(
      ipAddress: null == ipAddress
          ? _self.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _self.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Device {
  @JsonKey(name: 'type')
  String get type;
  @JsonKey(name: 'browser')
  String get browser;
  @JsonKey(name: 'platform')
  String get platform;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<Device> get copyWith =>
      _$DeviceCopyWithImpl<Device>(this as Device, _$identity);

  /// Serializes this Device to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Device &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.browser, browser) || other.browser == browser) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, browser, platform);

  @override
  String toString() {
    return 'Device(type: $type, browser: $browser, platform: $platform)';
  }
}

/// @nodoc
abstract mixin class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) _then) =
      _$DeviceCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'browser') String browser,
      @JsonKey(name: 'platform') String platform});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res> implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._self, this._then);

  final Device _self;
  final $Res Function(Device) _then;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? browser = null,
    Object? platform = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      browser: null == browser
          ? _self.browser
          : browser // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Device implements Device {
  const _Device(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'browser') required this.browser,
      @JsonKey(name: 'platform') required this.platform});
  factory _Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'browser')
  final String browser;
  @override
  @JsonKey(name: 'platform')
  final String platform;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeviceCopyWith<_Device> get copyWith =>
      __$DeviceCopyWithImpl<_Device>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeviceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Device &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.browser, browser) || other.browser == browser) &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, browser, platform);

  @override
  String toString() {
    return 'Device(type: $type, browser: $browser, platform: $platform)';
  }
}

/// @nodoc
abstract mixin class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) _then) =
      __$DeviceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'browser') String browser,
      @JsonKey(name: 'platform') String platform});
}

/// @nodoc
class __$DeviceCopyWithImpl<$Res> implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(this._self, this._then);

  final _Device _self;
  final $Res Function(_Device) _then;

  /// Create a copy of Device
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? browser = null,
    Object? platform = null,
  }) {
    return _then(_Device(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      browser: null == browser
          ? _self.browser
          : browser // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'firstName')
  String? get firstName;
  @JsonKey(name: 'lastName')
  String? get lastName;
  @JsonKey(name: 'emailVerified')
  bool get emailVerified;
  @JsonKey(name: 'mfaEnabled')
  bool get mfaEnabled;
  @JsonKey(name: 'createdAt')
  DateTime get createdAt;
  @JsonKey(name: 'lastLogin')
  DateTime get lastLogin;
  @JsonKey(name: 'phone')
  String? get phone;
  @JsonKey(name: 'phoneVerified')
  bool? get phoneVerified;
  @JsonKey(name: 'metadata')
  Metadata? get metadata;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.mfaEnabled, mfaEnabled) ||
                other.mfaEnabled == mfaEnabled) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firstName,
      lastName,
      emailVerified,
      mfaEnabled,
      createdAt,
      lastLogin,
      phone,
      phoneVerified,
      metadata);

  @override
  String toString() {
    return 'User(id: $id, email: $email, firstName: $firstName, lastName: $lastName, emailVerified: $emailVerified, mfaEnabled: $mfaEnabled, createdAt: $createdAt, lastLogin: $lastLogin, phone: $phone, phoneVerified: $phoneVerified, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'emailVerified') bool emailVerified,
      @JsonKey(name: 'mfaEnabled') bool mfaEnabled,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'lastLogin') DateTime lastLogin,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phoneVerified') bool? phoneVerified,
      @JsonKey(name: 'metadata') Metadata? metadata});

  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailVerified = null,
    Object? mfaEnabled = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? phone = freezed,
    Object? phoneVerified = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _self.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      mfaEnabled: null == mfaEnabled
          ? _self.mfaEnabled
          : mfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLogin: null == lastLogin
          ? _self.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: freezed == phoneVerified
          ? _self.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _User implements User {
  const _User(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'emailVerified') required this.emailVerified,
      @JsonKey(name: 'mfaEnabled') required this.mfaEnabled,
      @JsonKey(name: 'createdAt') required this.createdAt,
      @JsonKey(name: 'lastLogin') required this.lastLogin,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'phoneVerified') this.phoneVerified,
      @JsonKey(name: 'metadata') this.metadata});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'emailVerified')
  final bool emailVerified;
  @override
  @JsonKey(name: 'mfaEnabled')
  final bool mfaEnabled;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'lastLogin')
  final DateTime lastLogin;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'phoneVerified')
  final bool? phoneVerified;
  @override
  @JsonKey(name: 'metadata')
  final Metadata? metadata;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.mfaEnabled, mfaEnabled) ||
                other.mfaEnabled == mfaEnabled) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      firstName,
      lastName,
      emailVerified,
      mfaEnabled,
      createdAt,
      lastLogin,
      phone,
      phoneVerified,
      metadata);

  @override
  String toString() {
    return 'User(id: $id, email: $email, firstName: $firstName, lastName: $lastName, emailVerified: $emailVerified, mfaEnabled: $mfaEnabled, createdAt: $createdAt, lastLogin: $lastLogin, phone: $phone, phoneVerified: $phoneVerified, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'emailVerified') bool emailVerified,
      @JsonKey(name: 'mfaEnabled') bool mfaEnabled,
      @JsonKey(name: 'createdAt') DateTime createdAt,
      @JsonKey(name: 'lastLogin') DateTime lastLogin,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phoneVerified') bool? phoneVerified,
      @JsonKey(name: 'metadata') Metadata? metadata});

  @override
  $MetadataCopyWith<$Res>? get metadata;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailVerified = null,
    Object? mfaEnabled = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? phone = freezed,
    Object? phoneVerified = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_User(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: freezed == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: null == emailVerified
          ? _self.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      mfaEnabled: null == mfaEnabled
          ? _self.mfaEnabled
          : mfaEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLogin: null == lastLogin
          ? _self.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: freezed == phoneVerified
          ? _self.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata?,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
      return null;
    }

    return $MetadataCopyWith<$Res>(_self.metadata!, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

// dart format on
