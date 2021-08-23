// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'n_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NMeta _$NMetaFromJson(Map<String, dynamic> json) {
  return _NMeta.fromJson(json);
}

/// @nodoc
class _$NMetaTearOff {
  const _$NMetaTearOff();

  _NMeta call(
      {@JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'environment') String? environment,
      @JsonKey(name: 'app_version') String? appVersion,
      @JsonKey(name: 'os_version') String? osVersion,
      @JsonKey(name: 'device') String? device}) {
    return _NMeta(
      platform: platform,
      environment: environment,
      appVersion: appVersion,
      osVersion: osVersion,
      device: device,
    );
  }

  NMeta fromJson(Map<String, Object> json) {
    return NMeta.fromJson(json);
  }
}

/// @nodoc
const $NMeta = _$NMetaTearOff();

/// @nodoc
mixin _$NMeta {
  @JsonKey(name: 'platform')
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(name: 'environment')
  String? get environment => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String? get appVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'os_version')
  String? get osVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'device')
  String? get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NMetaCopyWith<NMeta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NMetaCopyWith<$Res> {
  factory $NMetaCopyWith(NMeta value, $Res Function(NMeta) then) =
      _$NMetaCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'environment') String? environment,
      @JsonKey(name: 'app_version') String? appVersion,
      @JsonKey(name: 'os_version') String? osVersion,
      @JsonKey(name: 'device') String? device});
}

/// @nodoc
class _$NMetaCopyWithImpl<$Res> implements $NMetaCopyWith<$Res> {
  _$NMetaCopyWithImpl(this._value, this._then);

  final NMeta _value;
  // ignore: unused_field
  final $Res Function(NMeta) _then;

  @override
  $Res call({
    Object? platform = freezed,
    Object? environment = freezed,
    Object? appVersion = freezed,
    Object? osVersion = freezed,
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NMetaCopyWith<$Res> implements $NMetaCopyWith<$Res> {
  factory _$NMetaCopyWith(_NMeta value, $Res Function(_NMeta) then) =
      __$NMetaCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'environment') String? environment,
      @JsonKey(name: 'app_version') String? appVersion,
      @JsonKey(name: 'os_version') String? osVersion,
      @JsonKey(name: 'device') String? device});
}

/// @nodoc
class __$NMetaCopyWithImpl<$Res> extends _$NMetaCopyWithImpl<$Res>
    implements _$NMetaCopyWith<$Res> {
  __$NMetaCopyWithImpl(_NMeta _value, $Res Function(_NMeta) _then)
      : super(_value, (v) => _then(v as _NMeta));

  @override
  _NMeta get _value => super._value as _NMeta;

  @override
  $Res call({
    Object? platform = freezed,
    Object? environment = freezed,
    Object? appVersion = freezed,
    Object? osVersion = freezed,
    Object? device = freezed,
  }) {
    return _then(_NMeta(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: appVersion == freezed
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      osVersion: osVersion == freezed
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NMeta implements _NMeta {
  const _$_NMeta(
      {@JsonKey(name: 'platform') this.platform,
      @JsonKey(name: 'environment') this.environment,
      @JsonKey(name: 'app_version') this.appVersion,
      @JsonKey(name: 'os_version') this.osVersion,
      @JsonKey(name: 'device') this.device});

  factory _$_NMeta.fromJson(Map<String, dynamic> json) =>
      _$$_NMetaFromJson(json);

  @override
  @JsonKey(name: 'platform')
  final String? platform;
  @override
  @JsonKey(name: 'environment')
  final String? environment;
  @override
  @JsonKey(name: 'app_version')
  final String? appVersion;
  @override
  @JsonKey(name: 'os_version')
  final String? osVersion;
  @override
  @JsonKey(name: 'device')
  final String? device;

  @override
  String toString() {
    return 'NMeta(platform: $platform, environment: $environment, appVersion: $appVersion, osVersion: $osVersion, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NMeta &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.environment, environment) ||
                const DeepCollectionEquality()
                    .equals(other.environment, environment)) &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(environment) ^
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(osVersion) ^
      const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  _$NMetaCopyWith<_NMeta> get copyWith =>
      __$NMetaCopyWithImpl<_NMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NMetaToJson(this);
  }
}

abstract class _NMeta implements NMeta {
  const factory _NMeta(
      {@JsonKey(name: 'platform') String? platform,
      @JsonKey(name: 'environment') String? environment,
      @JsonKey(name: 'app_version') String? appVersion,
      @JsonKey(name: 'os_version') String? osVersion,
      @JsonKey(name: 'device') String? device}) = _$_NMeta;

  factory _NMeta.fromJson(Map<String, dynamic> json) = _$_NMeta.fromJson;

  @override
  @JsonKey(name: 'platform')
  String? get platform => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'environment')
  String? get environment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'app_version')
  String? get appVersion => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'os_version')
  String? get osVersion => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'device')
  String? get device => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NMetaCopyWith<_NMeta> get copyWith => throw _privateConstructorUsedError;
}
