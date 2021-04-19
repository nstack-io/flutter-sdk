// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nstack_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NStackConfig _$NStackConfigFromJson(Map<String, dynamic> json) {
  return _NStackConfig.fromJson(json);
}

/// @nodoc
class _$NStackConfigTearOff {
  const _$NStackConfigTearOff();

  _NStackConfig call(
      {@JsonKey(name: 'application_id') String applicationId = '',
      @JsonKey(name: 'rest_api_key') String restApiKey = ''}) {
    return _NStackConfig(
      applicationId: applicationId,
      restApiKey: restApiKey,
    );
  }

  NStackConfig fromJson(Map<String, Object> json) {
    return NStackConfig.fromJson(json);
  }
}

/// @nodoc
const $NStackConfig = _$NStackConfigTearOff();

/// @nodoc
mixin _$NStackConfig {
  @JsonKey(name: 'application_id')
  String get applicationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rest_api_key')
  String get restApiKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NStackConfigCopyWith<NStackConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NStackConfigCopyWith<$Res> {
  factory $NStackConfigCopyWith(
          NStackConfig value, $Res Function(NStackConfig) then) =
      _$NStackConfigCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'application_id') String applicationId,
      @JsonKey(name: 'rest_api_key') String restApiKey});
}

/// @nodoc
class _$NStackConfigCopyWithImpl<$Res> implements $NStackConfigCopyWith<$Res> {
  _$NStackConfigCopyWithImpl(this._value, this._then);

  final NStackConfig _value;
  // ignore: unused_field
  final $Res Function(NStackConfig) _then;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? restApiKey = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      restApiKey: restApiKey == freezed
          ? _value.restApiKey
          : restApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NStackConfigCopyWith<$Res>
    implements $NStackConfigCopyWith<$Res> {
  factory _$NStackConfigCopyWith(
          _NStackConfig value, $Res Function(_NStackConfig) then) =
      __$NStackConfigCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'application_id') String applicationId,
      @JsonKey(name: 'rest_api_key') String restApiKey});
}

/// @nodoc
class __$NStackConfigCopyWithImpl<$Res> extends _$NStackConfigCopyWithImpl<$Res>
    implements _$NStackConfigCopyWith<$Res> {
  __$NStackConfigCopyWithImpl(
      _NStackConfig _value, $Res Function(_NStackConfig) _then)
      : super(_value, (v) => _then(v as _NStackConfig));

  @override
  _NStackConfig get _value => super._value as _NStackConfig;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? restApiKey = freezed,
  }) {
    return _then(_NStackConfig(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      restApiKey: restApiKey == freezed
          ? _value.restApiKey
          : restApiKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NStackConfig implements _NStackConfig {
  const _$_NStackConfig(
      {@JsonKey(name: 'application_id') this.applicationId = '',
      @JsonKey(name: 'rest_api_key') this.restApiKey = ''});

  factory _$_NStackConfig.fromJson(Map<String, dynamic> json) =>
      _$_$_NStackConfigFromJson(json);

  @override
  @JsonKey(name: 'application_id')
  final String applicationId;
  @override
  @JsonKey(name: 'rest_api_key')
  final String restApiKey;

  @override
  String toString() {
    return 'NStackConfig(applicationId: $applicationId, restApiKey: $restApiKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NStackConfig &&
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
  _$NStackConfigCopyWith<_NStackConfig> get copyWith =>
      __$NStackConfigCopyWithImpl<_NStackConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NStackConfigToJson(this);
  }
}

abstract class _NStackConfig implements NStackConfig {
  const factory _NStackConfig(
      {@JsonKey(name: 'application_id') String applicationId,
      @JsonKey(name: 'rest_api_key') String restApiKey}) = _$_NStackConfig;

  factory _NStackConfig.fromJson(Map<String, dynamic> json) =
      _$_NStackConfig.fromJson;

  @override
  @JsonKey(name: 'application_id')
  String get applicationId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rest_api_key')
  String get restApiKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NStackConfigCopyWith<_NStackConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
