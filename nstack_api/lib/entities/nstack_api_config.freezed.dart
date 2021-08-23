// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nstack_api_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NStackApiConfig _$NStackApiConfigFromJson(Map<String, dynamic> json) {
  return _NStackApiConfig.fromJson(json);
}

/// @nodoc
class _$NStackApiConfigTearOff {
  const _$NStackApiConfigTearOff();

  _NStackApiConfig call(
      {@JsonKey(name: 'application_id') String? applicationId,
      @JsonKey(name: 'rest_api_key') String? restApiKey}) {
    return _NStackApiConfig(
      applicationId: applicationId,
      restApiKey: restApiKey,
    );
  }

  NStackApiConfig fromJson(Map<String, Object> json) {
    return NStackApiConfig.fromJson(json);
  }
}

/// @nodoc
const $NStackApiConfig = _$NStackApiConfigTearOff();

/// @nodoc
mixin _$NStackApiConfig {
  @JsonKey(name: 'application_id')
  String? get applicationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_api_key')
  String? get restApiKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NStackApiConfigCopyWith<NStackApiConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NStackApiConfigCopyWith<$Res> {
  factory $NStackApiConfigCopyWith(
          NStackApiConfig value, $Res Function(NStackApiConfig) then) =
      _$NStackApiConfigCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'application_id') String? applicationId,
      @JsonKey(name: 'rest_api_key') String? restApiKey});
}

/// @nodoc
class _$NStackApiConfigCopyWithImpl<$Res>
    implements $NStackApiConfigCopyWith<$Res> {
  _$NStackApiConfigCopyWithImpl(this._value, this._then);

  final NStackApiConfig _value;
  // ignore: unused_field
  final $Res Function(NStackApiConfig) _then;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? restApiKey = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      restApiKey: restApiKey == freezed
          ? _value.restApiKey
          : restApiKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NStackApiConfigCopyWith<$Res>
    implements $NStackApiConfigCopyWith<$Res> {
  factory _$NStackApiConfigCopyWith(
          _NStackApiConfig value, $Res Function(_NStackApiConfig) then) =
      __$NStackApiConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'application_id') String? applicationId,
      @JsonKey(name: 'rest_api_key') String? restApiKey});
}

/// @nodoc
class __$NStackApiConfigCopyWithImpl<$Res>
    extends _$NStackApiConfigCopyWithImpl<$Res>
    implements _$NStackApiConfigCopyWith<$Res> {
  __$NStackApiConfigCopyWithImpl(
      _NStackApiConfig _value, $Res Function(_NStackApiConfig) _then)
      : super(_value, (v) => _then(v as _NStackApiConfig));

  @override
  _NStackApiConfig get _value => super._value as _NStackApiConfig;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? restApiKey = freezed,
  }) {
    return _then(_NStackApiConfig(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String?,
      restApiKey: restApiKey == freezed
          ? _value.restApiKey
          : restApiKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NStackApiConfig implements _NStackApiConfig {
  const _$_NStackApiConfig(
      {@JsonKey(name: 'application_id') this.applicationId,
      @JsonKey(name: 'rest_api_key') this.restApiKey});

  factory _$_NStackApiConfig.fromJson(Map<String, dynamic> json) =>
      _$$_NStackApiConfigFromJson(json);

  @override
  @JsonKey(name: 'application_id')
  final String? applicationId;
  @override
  @JsonKey(name: 'rest_api_key')
  final String? restApiKey;

  @override
  String toString() {
    return 'NStackApiConfig(applicationId: $applicationId, restApiKey: $restApiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NStackApiConfig &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.restApiKey, restApiKey) ||
                const DeepCollectionEquality()
                    .equals(other.restApiKey, restApiKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(restApiKey);

  @JsonKey(ignore: true)
  @override
  _$NStackApiConfigCopyWith<_NStackApiConfig> get copyWith =>
      __$NStackApiConfigCopyWithImpl<_NStackApiConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NStackApiConfigToJson(this);
  }
}

abstract class _NStackApiConfig implements NStackApiConfig {
  const factory _NStackApiConfig(
      {@JsonKey(name: 'application_id') String? applicationId,
      @JsonKey(name: 'rest_api_key') String? restApiKey}) = _$_NStackApiConfig;

  factory _NStackApiConfig.fromJson(Map<String, dynamic> json) =
      _$_NStackApiConfig.fromJson;

  @override
  @JsonKey(name: 'application_id')
  String? get applicationId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rest_api_key')
  String? get restApiKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NStackApiConfigCopyWith<_NStackApiConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
