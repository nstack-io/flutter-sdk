// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppConfig _$AppConfigFromJson(Map<String, dynamic> json) {
  return _AppConfig.fromJson(json);
}

/// @nodoc
class _$AppConfigTearOff {
  const _$AppConfigTearOff();

// ignore: unused_element
  _AppConfig call({String version, String previousVersion}) {
    return _AppConfig(
      version: version,
      previousVersion: previousVersion,
    );
  }

// ignore: unused_element
  AppConfig fromJson(Map<String, Object> json) {
    return AppConfig.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppConfig = _$AppConfigTearOff();

/// @nodoc
mixin _$AppConfig {
  String get version;
  String get previousVersion;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AppConfigCopyWith<AppConfig> get copyWith;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res>;
  $Res call({String version, String previousVersion});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res> implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  final AppConfig _value;
  // ignore: unused_field
  final $Res Function(AppConfig) _then;

  @override
  $Res call({
    Object version = freezed,
    Object previousVersion = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed ? _value.version : version as String,
      previousVersion: previousVersion == freezed
          ? _value.previousVersion
          : previousVersion as String,
    ));
  }
}

/// @nodoc
abstract class _$AppConfigCopyWith<$Res> implements $AppConfigCopyWith<$Res> {
  factory _$AppConfigCopyWith(
          _AppConfig value, $Res Function(_AppConfig) then) =
      __$AppConfigCopyWithImpl<$Res>;
  @override
  $Res call({String version, String previousVersion});
}

/// @nodoc
class __$AppConfigCopyWithImpl<$Res> extends _$AppConfigCopyWithImpl<$Res>
    implements _$AppConfigCopyWith<$Res> {
  __$AppConfigCopyWithImpl(_AppConfig _value, $Res Function(_AppConfig) _then)
      : super(_value, (v) => _then(v as _AppConfig));

  @override
  _AppConfig get _value => super._value as _AppConfig;

  @override
  $Res call({
    Object version = freezed,
    Object previousVersion = freezed,
  }) {
    return _then(_AppConfig(
      version: version == freezed ? _value.version : version as String,
      previousVersion: previousVersion == freezed
          ? _value.previousVersion
          : previousVersion as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppConfig implements _AppConfig {
  const _$_AppConfig({this.version, this.previousVersion});

  factory _$_AppConfig.fromJson(Map<String, dynamic> json) =>
      _$_$_AppConfigFromJson(json);

  @override
  final String version;
  @override
  final String previousVersion;

  @override
  String toString() {
    return 'AppConfig(version: $version, previousVersion: $previousVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppConfig &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.previousVersion, previousVersion) ||
                const DeepCollectionEquality()
                    .equals(other.previousVersion, previousVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(previousVersion);

  @JsonKey(ignore: true)
  @override
  _$AppConfigCopyWith<_AppConfig> get copyWith =>
      __$AppConfigCopyWithImpl<_AppConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppConfigToJson(this);
  }
}

abstract class _AppConfig implements AppConfig {
  const factory _AppConfig({String version, String previousVersion}) =
      _$_AppConfig;

  factory _AppConfig.fromJson(Map<String, dynamic> json) =
      _$_AppConfig.fromJson;

  @override
  String get version;
  @override
  String get previousVersion;
  @override
  @JsonKey(ignore: true)
  _$AppConfigCopyWith<_AppConfig> get copyWith;
}
