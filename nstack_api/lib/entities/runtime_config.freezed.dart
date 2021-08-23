// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'runtime_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RuntimeConfig _$RuntimeConfigFromJson(Map<String, dynamic> json) {
  return _RuntimeConfig.fromJson(json);
}

/// @nodoc
class _$RuntimeConfigTearOff {
  const _$RuntimeConfigTearOff();

  _RuntimeConfig call(
      {String? platformName, String? platformVersion, String? device}) {
    return _RuntimeConfig(
      platformName: platformName,
      platformVersion: platformVersion,
      device: device,
    );
  }

  RuntimeConfig fromJson(Map<String, Object> json) {
    return RuntimeConfig.fromJson(json);
  }
}

/// @nodoc
const $RuntimeConfig = _$RuntimeConfigTearOff();

/// @nodoc
mixin _$RuntimeConfig {
  String? get platformName => throw _privateConstructorUsedError;
  String? get platformVersion => throw _privateConstructorUsedError;
  String? get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RuntimeConfigCopyWith<RuntimeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuntimeConfigCopyWith<$Res> {
  factory $RuntimeConfigCopyWith(
          RuntimeConfig value, $Res Function(RuntimeConfig) then) =
      _$RuntimeConfigCopyWithImpl<$Res>;
  $Res call({String? platformName, String? platformVersion, String? device});
}

/// @nodoc
class _$RuntimeConfigCopyWithImpl<$Res>
    implements $RuntimeConfigCopyWith<$Res> {
  _$RuntimeConfigCopyWithImpl(this._value, this._then);

  final RuntimeConfig _value;
  // ignore: unused_field
  final $Res Function(RuntimeConfig) _then;

  @override
  $Res call({
    Object? platformName = freezed,
    Object? platformVersion = freezed,
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      platformName: platformName == freezed
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformVersion: platformVersion == freezed
          ? _value.platformVersion
          : platformVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RuntimeConfigCopyWith<$Res>
    implements $RuntimeConfigCopyWith<$Res> {
  factory _$RuntimeConfigCopyWith(
          _RuntimeConfig value, $Res Function(_RuntimeConfig) then) =
      __$RuntimeConfigCopyWithImpl<$Res>;
  @override
  $Res call({String? platformName, String? platformVersion, String? device});
}

/// @nodoc
class __$RuntimeConfigCopyWithImpl<$Res>
    extends _$RuntimeConfigCopyWithImpl<$Res>
    implements _$RuntimeConfigCopyWith<$Res> {
  __$RuntimeConfigCopyWithImpl(
      _RuntimeConfig _value, $Res Function(_RuntimeConfig) _then)
      : super(_value, (v) => _then(v as _RuntimeConfig));

  @override
  _RuntimeConfig get _value => super._value as _RuntimeConfig;

  @override
  $Res call({
    Object? platformName = freezed,
    Object? platformVersion = freezed,
    Object? device = freezed,
  }) {
    return _then(_RuntimeConfig(
      platformName: platformName == freezed
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      platformVersion: platformVersion == freezed
          ? _value.platformVersion
          : platformVersion // ignore: cast_nullable_to_non_nullable
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
class _$_RuntimeConfig implements _RuntimeConfig {
  const _$_RuntimeConfig(
      {this.platformName, this.platformVersion, this.device});

  factory _$_RuntimeConfig.fromJson(Map<String, dynamic> json) =>
      _$$_RuntimeConfigFromJson(json);

  @override
  final String? platformName;
  @override
  final String? platformVersion;
  @override
  final String? device;

  @override
  String toString() {
    return 'RuntimeConfig(platformName: $platformName, platformVersion: $platformVersion, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RuntimeConfig &&
            (identical(other.platformName, platformName) ||
                const DeepCollectionEquality()
                    .equals(other.platformName, platformName)) &&
            (identical(other.platformVersion, platformVersion) ||
                const DeepCollectionEquality()
                    .equals(other.platformVersion, platformVersion)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(platformName) ^
      const DeepCollectionEquality().hash(platformVersion) ^
      const DeepCollectionEquality().hash(device);

  @JsonKey(ignore: true)
  @override
  _$RuntimeConfigCopyWith<_RuntimeConfig> get copyWith =>
      __$RuntimeConfigCopyWithImpl<_RuntimeConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RuntimeConfigToJson(this);
  }
}

abstract class _RuntimeConfig implements RuntimeConfig {
  const factory _RuntimeConfig(
      {String? platformName,
      String? platformVersion,
      String? device}) = _$_RuntimeConfig;

  factory _RuntimeConfig.fromJson(Map<String, dynamic> json) =
      _$_RuntimeConfig.fromJson;

  @override
  String? get platformName => throw _privateConstructorUsedError;
  @override
  String? get platformVersion => throw _privateConstructorUsedError;
  @override
  String? get device => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RuntimeConfigCopyWith<_RuntimeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
