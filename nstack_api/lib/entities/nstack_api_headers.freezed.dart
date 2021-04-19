// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'nstack_api_headers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NStackApiHeaders _$NStackApiHeadersFromJson(Map<String, dynamic> json) {
  return _NStackApiHeaders.fromJson(json);
}

/// @nodoc
class _$NStackApiHeadersTearOff {
  const _$NStackApiHeadersTearOff();

  _NStackApiHeaders call(
      {required String acceptLanguage,
      required String applicationId,
      required String restApiKey,
      required NMeta nMeta}) {
    return _NStackApiHeaders(
      acceptLanguage: acceptLanguage,
      applicationId: applicationId,
      restApiKey: restApiKey,
      nMeta: nMeta,
    );
  }

  NStackApiHeaders fromJson(Map<String, Object> json) {
    return NStackApiHeaders.fromJson(json);
  }
}

/// @nodoc
const $NStackApiHeaders = _$NStackApiHeadersTearOff();

/// @nodoc
mixin _$NStackApiHeaders {
  String get acceptLanguage => throw _privateConstructorUsedError;
  String get applicationId => throw _privateConstructorUsedError;
  String get restApiKey => throw _privateConstructorUsedError;
  NMeta get nMeta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NStackApiHeadersCopyWith<NStackApiHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NStackApiHeadersCopyWith<$Res> {
  factory $NStackApiHeadersCopyWith(
          NStackApiHeaders value, $Res Function(NStackApiHeaders) then) =
      _$NStackApiHeadersCopyWithImpl<$Res>;
  $Res call(
      {String acceptLanguage,
      String applicationId,
      String restApiKey,
      NMeta nMeta});

  $NMetaCopyWith<$Res> get nMeta;
}

/// @nodoc
class _$NStackApiHeadersCopyWithImpl<$Res>
    implements $NStackApiHeadersCopyWith<$Res> {
  _$NStackApiHeadersCopyWithImpl(this._value, this._then);

  final NStackApiHeaders _value;
  // ignore: unused_field
  final $Res Function(NStackApiHeaders) _then;

  @override
  $Res call({
    Object? acceptLanguage = freezed,
    Object? applicationId = freezed,
    Object? restApiKey = freezed,
    Object? nMeta = freezed,
  }) {
    return _then(_value.copyWith(
      acceptLanguage: acceptLanguage == freezed
          ? _value.acceptLanguage
          : acceptLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      restApiKey: restApiKey == freezed
          ? _value.restApiKey
          : restApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      nMeta: nMeta == freezed
          ? _value.nMeta
          : nMeta // ignore: cast_nullable_to_non_nullable
              as NMeta,
    ));
  }

  @override
  $NMetaCopyWith<$Res> get nMeta {
    return $NMetaCopyWith<$Res>(_value.nMeta, (value) {
      return _then(_value.copyWith(nMeta: value));
    });
  }
}

/// @nodoc
abstract class _$NStackApiHeadersCopyWith<$Res>
    implements $NStackApiHeadersCopyWith<$Res> {
  factory _$NStackApiHeadersCopyWith(
          _NStackApiHeaders value, $Res Function(_NStackApiHeaders) then) =
      __$NStackApiHeadersCopyWithImpl<$Res>;
  @override
  $Res call(
      {String acceptLanguage,
      String applicationId,
      String restApiKey,
      NMeta nMeta});

  @override
  $NMetaCopyWith<$Res> get nMeta;
}

/// @nodoc
class __$NStackApiHeadersCopyWithImpl<$Res>
    extends _$NStackApiHeadersCopyWithImpl<$Res>
    implements _$NStackApiHeadersCopyWith<$Res> {
  __$NStackApiHeadersCopyWithImpl(
      _NStackApiHeaders _value, $Res Function(_NStackApiHeaders) _then)
      : super(_value, (v) => _then(v as _NStackApiHeaders));

  @override
  _NStackApiHeaders get _value => super._value as _NStackApiHeaders;

  @override
  $Res call({
    Object? acceptLanguage = freezed,
    Object? applicationId = freezed,
    Object? restApiKey = freezed,
    Object? nMeta = freezed,
  }) {
    return _then(_NStackApiHeaders(
      acceptLanguage: acceptLanguage == freezed
          ? _value.acceptLanguage
          : acceptLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      restApiKey: restApiKey == freezed
          ? _value.restApiKey
          : restApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      nMeta: nMeta == freezed
          ? _value.nMeta
          : nMeta // ignore: cast_nullable_to_non_nullable
              as NMeta,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NStackApiHeaders implements _NStackApiHeaders {
  const _$_NStackApiHeaders(
      {required this.acceptLanguage,
      required this.applicationId,
      required this.restApiKey,
      required this.nMeta});

  factory _$_NStackApiHeaders.fromJson(Map<String, dynamic> json) =>
      _$_$_NStackApiHeadersFromJson(json);

  @override
  final String acceptLanguage;
  @override
  final String applicationId;
  @override
  final String restApiKey;
  @override
  final NMeta nMeta;

  @override
  String toString() {
    return 'NStackApiHeaders(acceptLanguage: $acceptLanguage, applicationId: $applicationId, restApiKey: $restApiKey, nMeta: $nMeta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NStackApiHeaders &&
            (identical(other.acceptLanguage, acceptLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.acceptLanguage, acceptLanguage)) &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.restApiKey, restApiKey) ||
                const DeepCollectionEquality()
                    .equals(other.restApiKey, restApiKey)) &&
            (identical(other.nMeta, nMeta) ||
                const DeepCollectionEquality().equals(other.nMeta, nMeta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(acceptLanguage) ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(restApiKey) ^
      const DeepCollectionEquality().hash(nMeta);

  @JsonKey(ignore: true)
  @override
  _$NStackApiHeadersCopyWith<_NStackApiHeaders> get copyWith =>
      __$NStackApiHeadersCopyWithImpl<_NStackApiHeaders>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NStackApiHeadersToJson(this);
  }
}

abstract class _NStackApiHeaders implements NStackApiHeaders {
  const factory _NStackApiHeaders(
      {required String acceptLanguage,
      required String applicationId,
      required String restApiKey,
      required NMeta nMeta}) = _$_NStackApiHeaders;

  factory _NStackApiHeaders.fromJson(Map<String, dynamic> json) =
      _$_NStackApiHeaders.fromJson;

  @override
  String get acceptLanguage => throw _privateConstructorUsedError;
  @override
  String get applicationId => throw _privateConstructorUsedError;
  @override
  String get restApiKey => throw _privateConstructorUsedError;
  @override
  NMeta get nMeta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NStackApiHeadersCopyWith<_NStackApiHeaders> get copyWith =>
      throw _privateConstructorUsedError;
}
