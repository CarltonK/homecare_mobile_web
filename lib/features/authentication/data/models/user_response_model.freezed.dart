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
  @JsonKey(name: 'app_metadata')
  List<dynamic> get appMetadata;

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
                other.security == security) &&
            const DeepCollectionEquality()
                .equals(other.appMetadata, appMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, security,
      const DeepCollectionEquality().hash(appMetadata));

  @override
  String toString() {
    return 'UserResponseModel(user: $user, security: $security, appMetadata: $appMetadata)';
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
      @JsonKey(name: 'security') Security security,
      @JsonKey(name: 'app_metadata') List<dynamic> appMetadata});

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
    Object? appMetadata = null,
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
      appMetadata: null == appMetadata
          ? _self.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      @JsonKey(name: 'security') required this.security,
      @JsonKey(name: 'app_metadata') required final List<dynamic> appMetadata})
      : _appMetadata = appMetadata;
  factory _UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  @override
  @JsonKey(name: 'user')
  final User user;
  @override
  @JsonKey(name: 'security')
  final Security security;
  final List<dynamic> _appMetadata;
  @override
  @JsonKey(name: 'app_metadata')
  List<dynamic> get appMetadata {
    if (_appMetadata is EqualUnmodifiableListView) return _appMetadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_appMetadata);
  }

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
                other.security == security) &&
            const DeepCollectionEquality()
                .equals(other._appMetadata, _appMetadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, security,
      const DeepCollectionEquality().hash(_appMetadata));

  @override
  String toString() {
    return 'UserResponseModel(user: $user, security: $security, appMetadata: $appMetadata)';
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
      @JsonKey(name: 'security') Security security,
      @JsonKey(name: 'app_metadata') List<dynamic> appMetadata});

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
    Object? appMetadata = null,
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
      appMetadata: null == appMetadata
          ? _self._appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
  @JsonKey(name: 'mfa_enabled')
  bool get mfaEnabled;
  @JsonKey(name: 'mfa_methods')
  List<dynamic> get mfaMethods;
  @JsonKey(name: 'active_sessions')
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
      {@JsonKey(name: 'mfa_enabled') bool mfaEnabled,
      @JsonKey(name: 'mfa_methods') List<dynamic> mfaMethods,
      @JsonKey(name: 'active_sessions') List<ActiveSession> activeSessions});
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
      {@JsonKey(name: 'mfa_enabled') required this.mfaEnabled,
      @JsonKey(name: 'mfa_methods') required final List<dynamic> mfaMethods,
      @JsonKey(name: 'active_sessions')
      required final List<ActiveSession> activeSessions})
      : _mfaMethods = mfaMethods,
        _activeSessions = activeSessions;
  factory _Security.fromJson(Map<String, dynamic> json) =>
      _$SecurityFromJson(json);

  @override
  @JsonKey(name: 'mfa_enabled')
  final bool mfaEnabled;
  final List<dynamic> _mfaMethods;
  @override
  @JsonKey(name: 'mfa_methods')
  List<dynamic> get mfaMethods {
    if (_mfaMethods is EqualUnmodifiableListView) return _mfaMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mfaMethods);
  }

  final List<ActiveSession> _activeSessions;
  @override
  @JsonKey(name: 'active_sessions')
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
      {@JsonKey(name: 'mfa_enabled') bool mfaEnabled,
      @JsonKey(name: 'mfa_methods') List<dynamic> mfaMethods,
      @JsonKey(name: 'active_sessions') List<ActiveSession> activeSessions});
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
  @JsonKey(name: 'device')
  Device get device;
  @JsonKey(name: 'ip_address')
  String get ipAddress;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'last_activity')
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
            (identical(other.device, device) || other.device == device) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.lastActivity, lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, device, ipAddress, createdAt,
      const DeepCollectionEquality().hash(lastActivity));

  @override
  String toString() {
    return 'ActiveSession(id: $id, device: $device, ipAddress: $ipAddress, createdAt: $createdAt, lastActivity: $lastActivity)';
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
      @JsonKey(name: 'device') Device device,
      @JsonKey(name: 'ip_address') String ipAddress,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'last_activity') dynamic lastActivity});

  $DeviceCopyWith<$Res> get device;
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
    Object? device = null,
    Object? ipAddress = null,
    Object? createdAt = null,
    Object? lastActivity = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      device: null == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
      ipAddress: null == ipAddress
          ? _self.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $DeviceCopyWith<$Res> get device {
    return $DeviceCopyWith<$Res>(_self.device, (value) {
      return _then(_self.copyWith(device: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ActiveSession implements ActiveSession {
  const _ActiveSession(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'device') required this.device,
      @JsonKey(name: 'ip_address') required this.ipAddress,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'last_activity') this.lastActivity});
  factory _ActiveSession.fromJson(Map<String, dynamic> json) =>
      _$ActiveSessionFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'device')
  final Device device;
  @override
  @JsonKey(name: 'ip_address')
  final String ipAddress;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'last_activity')
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
            (identical(other.device, device) || other.device == device) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.lastActivity, lastActivity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, device, ipAddress, createdAt,
      const DeepCollectionEquality().hash(lastActivity));

  @override
  String toString() {
    return 'ActiveSession(id: $id, device: $device, ipAddress: $ipAddress, createdAt: $createdAt, lastActivity: $lastActivity)';
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
      @JsonKey(name: 'device') Device device,
      @JsonKey(name: 'ip_address') String ipAddress,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'last_activity') dynamic lastActivity});

  @override
  $DeviceCopyWith<$Res> get device;
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
    Object? device = null,
    Object? ipAddress = null,
    Object? createdAt = null,
    Object? lastActivity = freezed,
  }) {
    return _then(_ActiveSession(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      device: null == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device,
      ipAddress: null == ipAddress
          ? _self.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $DeviceCopyWith<$Res> get device {
    return $DeviceCopyWith<$Res>(_self.device, (value) {
      return _then(_self.copyWith(device: value));
    });
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
  @JsonKey(name: 'first_name')
  String? get firstName;
  @JsonKey(name: 'last_name')
  String? get lastName;
  @JsonKey(name: 'email_verified')
  bool get emailVerified;
  @JsonKey(name: 'phone')
  String? get phone;
  @JsonKey(name: 'phone_verified')
  bool get phoneVerified;
  @JsonKey(name: 'mfa_enabled')
  bool get mfaEnabled;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'last_login')
  DateTime get lastLogin;
  @JsonKey(name: 'metadata')
  Metadata get metadata;

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
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.mfaEnabled, mfaEnabled) ||
                other.mfaEnabled == mfaEnabled) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
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
      phone,
      phoneVerified,
      mfaEnabled,
      createdAt,
      lastLogin,
      metadata);

  @override
  String toString() {
    return 'User(id: $id, email: $email, firstName: $firstName, lastName: $lastName, emailVerified: $emailVerified, phone: $phone, phoneVerified: $phoneVerified, mfaEnabled: $mfaEnabled, createdAt: $createdAt, lastLogin: $lastLogin, metadata: $metadata)';
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
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phone_verified') bool phoneVerified,
      @JsonKey(name: 'mfa_enabled') bool mfaEnabled,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'last_login') DateTime lastLogin,
      @JsonKey(name: 'metadata') Metadata metadata});

  $MetadataCopyWith<$Res> get metadata;
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
    Object? phone = freezed,
    Object? phoneVerified = null,
    Object? mfaEnabled = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? metadata = null,
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
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: null == phoneVerified
          ? _self.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
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
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_self.metadata, (value) {
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
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email_verified') required this.emailVerified,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'phone_verified') required this.phoneVerified,
      @JsonKey(name: 'mfa_enabled') required this.mfaEnabled,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'last_login') required this.lastLogin,
      @JsonKey(name: 'metadata') required this.metadata});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email_verified')
  final bool emailVerified;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'phone_verified')
  final bool phoneVerified;
  @override
  @JsonKey(name: 'mfa_enabled')
  final bool mfaEnabled;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'last_login')
  final DateTime lastLogin;
  @override
  @JsonKey(name: 'metadata')
  final Metadata metadata;

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
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.mfaEnabled, mfaEnabled) ||
                other.mfaEnabled == mfaEnabled) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
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
      phone,
      phoneVerified,
      mfaEnabled,
      createdAt,
      lastLogin,
      metadata);

  @override
  String toString() {
    return 'User(id: $id, email: $email, firstName: $firstName, lastName: $lastName, emailVerified: $emailVerified, phone: $phone, phoneVerified: $phoneVerified, mfaEnabled: $mfaEnabled, createdAt: $createdAt, lastLogin: $lastLogin, metadata: $metadata)';
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
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'phone_verified') bool phoneVerified,
      @JsonKey(name: 'mfa_enabled') bool mfaEnabled,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'last_login') DateTime lastLogin,
      @JsonKey(name: 'metadata') Metadata metadata});

  @override
  $MetadataCopyWith<$Res> get metadata;
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
    Object? phone = freezed,
    Object? phoneVerified = null,
    Object? mfaEnabled = null,
    Object? createdAt = null,
    Object? lastLogin = null,
    Object? metadata = null,
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
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneVerified: null == phoneVerified
          ? _self.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
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
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
    ));
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: 'registration')
  Registration get registration;

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
            (identical(other.registration, registration) ||
                other.registration == registration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, registration);

  @override
  String toString() {
    return 'Metadata(registration: $registration)';
  }
}

/// @nodoc
abstract mixin class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) _then) =
      _$MetadataCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'registration') Registration registration});

  $RegistrationCopyWith<$Res> get registration;
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
    Object? registration = null,
  }) {
    return _then(_self.copyWith(
      registration: null == registration
          ? _self.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as Registration,
    ));
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationCopyWith<$Res> get registration {
    return $RegistrationCopyWith<$Res>(_self.registration, (value) {
      return _then(_self.copyWith(registration: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Metadata implements Metadata {
  const _Metadata({@JsonKey(name: 'registration') required this.registration});
  factory _Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  @override
  @JsonKey(name: 'registration')
  final Registration registration;

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
            (identical(other.registration, registration) ||
                other.registration == registration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, registration);

  @override
  String toString() {
    return 'Metadata(registration: $registration)';
  }
}

/// @nodoc
abstract mixin class _$MetadataCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) _then) =
      __$MetadataCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'registration') Registration registration});

  @override
  $RegistrationCopyWith<$Res> get registration;
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
    Object? registration = null,
  }) {
    return _then(_Metadata(
      registration: null == registration
          ? _self.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as Registration,
    ));
  }

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RegistrationCopyWith<$Res> get registration {
    return $RegistrationCopyWith<$Res>(_self.registration, (value) {
      return _then(_self.copyWith(registration: value));
    });
  }
}

/// @nodoc
mixin _$Registration {
  @JsonKey(name: 'ip')
  String get ip;
  @JsonKey(name: 'device')
  String get device;
  @JsonKey(name: 'browser')
  String get browser;
  @JsonKey(name: 'location')
  String? get location;
  @JsonKey(name: 'platform')
  String get platform;
  @JsonKey(name: 'timestamp')
  DateTime get timestamp;

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegistrationCopyWith<Registration> get copyWith =>
      _$RegistrationCopyWithImpl<Registration>(
          this as Registration, _$identity);

  /// Serializes this Registration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Registration &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.browser, browser) || other.browser == browser) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ip, device, browser, location, platform, timestamp);

  @override
  String toString() {
    return 'Registration(ip: $ip, device: $device, browser: $browser, location: $location, platform: $platform, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class $RegistrationCopyWith<$Res> {
  factory $RegistrationCopyWith(
          Registration value, $Res Function(Registration) _then) =
      _$RegistrationCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'ip') String ip,
      @JsonKey(name: 'device') String device,
      @JsonKey(name: 'browser') String browser,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'timestamp') DateTime timestamp});
}

/// @nodoc
class _$RegistrationCopyWithImpl<$Res> implements $RegistrationCopyWith<$Res> {
  _$RegistrationCopyWithImpl(this._self, this._then);

  final Registration _self;
  final $Res Function(Registration) _then;

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? device = null,
    Object? browser = null,
    Object? location = freezed,
    Object? platform = null,
    Object? timestamp = null,
  }) {
    return _then(_self.copyWith(
      ip: null == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      browser: null == browser
          ? _self.browser
          : browser // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Registration implements Registration {
  const _Registration(
      {@JsonKey(name: 'ip') required this.ip,
      @JsonKey(name: 'device') required this.device,
      @JsonKey(name: 'browser') required this.browser,
      @JsonKey(name: 'location') this.location,
      @JsonKey(name: 'platform') required this.platform,
      @JsonKey(name: 'timestamp') required this.timestamp});
  factory _Registration.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFromJson(json);

  @override
  @JsonKey(name: 'ip')
  final String ip;
  @override
  @JsonKey(name: 'device')
  final String device;
  @override
  @JsonKey(name: 'browser')
  final String browser;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'platform')
  final String platform;
  @override
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RegistrationCopyWith<_Registration> get copyWith =>
      __$RegistrationCopyWithImpl<_Registration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RegistrationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Registration &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.browser, browser) || other.browser == browser) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, ip, device, browser, location, platform, timestamp);

  @override
  String toString() {
    return 'Registration(ip: $ip, device: $device, browser: $browser, location: $location, platform: $platform, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class _$RegistrationCopyWith<$Res>
    implements $RegistrationCopyWith<$Res> {
  factory _$RegistrationCopyWith(
          _Registration value, $Res Function(_Registration) _then) =
      __$RegistrationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ip') String ip,
      @JsonKey(name: 'device') String device,
      @JsonKey(name: 'browser') String browser,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'platform') String platform,
      @JsonKey(name: 'timestamp') DateTime timestamp});
}

/// @nodoc
class __$RegistrationCopyWithImpl<$Res>
    implements _$RegistrationCopyWith<$Res> {
  __$RegistrationCopyWithImpl(this._self, this._then);

  final _Registration _self;
  final $Res Function(_Registration) _then;

  /// Create a copy of Registration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ip = null,
    Object? device = null,
    Object? browser = null,
    Object? location = freezed,
    Object? platform = null,
    Object? timestamp = null,
  }) {
    return _then(_Registration(
      ip: null == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      device: null == device
          ? _self.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      browser: null == browser
          ? _self.browser
          : browser // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: null == platform
          ? _self.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
