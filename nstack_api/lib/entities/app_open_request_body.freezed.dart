// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_open_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppOpenRequestBody _$AppOpenRequestBodyFromJson(Map<String, dynamic> json) {
  return _AppOpenRequestBody.fromJson(json);
}

/// @nodoc
class _$AppOpenRequestBodyTearOff {
  const _$AppOpenRequestBodyTearOff();

  _AppOpenRequestBody call(
      {String? platform,
      String? guid,
      String? version,
      @JsonKey(name: 'old_version') String? oldVersion,
      @JsonKey(name: 'last_updated') DateTime? lastUpdated}) {
    return _AppOpenRequestBody(
      platform: platform,
      guid: guid,
      version: version,
      oldVersion: oldVersion,
      lastUpdated: lastUpdated,
    );
  }

  AppOpenRequestBody fromJson(Map<String, Object> json) {
    return AppOpenRequestBody.fromJson(json);
  }
}

/// @nodoc
const $AppOpenRequestBody = _$AppOpenRequestBodyTearOff();

/// @nodoc
mixin _$AppOpenRequestBody {
  String? get platform => throw _privateConstructorUsedError;
  String? get guid => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'old_version')
  String? get oldVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppOpenRequestBodyCopyWith<AppOpenRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOpenRequestBodyCopyWith<$Res> {
  factory $AppOpenRequestBodyCopyWith(
          AppOpenRequestBody value, $Res Function(AppOpenRequestBody) then) =
      _$AppOpenRequestBodyCopyWithImpl<$Res>;
  $Res call(
      {String? platform,
      String? guid,
      String? version,
      @JsonKey(name: 'old_version') String? oldVersion,
      @JsonKey(name: 'last_updated') DateTime? lastUpdated});
}

/// @nodoc
class _$AppOpenRequestBodyCopyWithImpl<$Res>
    implements $AppOpenRequestBodyCopyWith<$Res> {
  _$AppOpenRequestBodyCopyWithImpl(this._value, this._then);

  final AppOpenRequestBody _value;
  // ignore: unused_field
  final $Res Function(AppOpenRequestBody) _then;

  @override
  $Res call({
    Object? platform = freezed,
    Object? guid = freezed,
    Object? version = freezed,
    Object? oldVersion = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      oldVersion: oldVersion == freezed
          ? _value.oldVersion
          : oldVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$AppOpenRequestBodyCopyWith<$Res>
    implements $AppOpenRequestBodyCopyWith<$Res> {
  factory _$AppOpenRequestBodyCopyWith(
          _AppOpenRequestBody value, $Res Function(_AppOpenRequestBody) then) =
      __$AppOpenRequestBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? platform,
      String? guid,
      String? version,
      @JsonKey(name: 'old_version') String? oldVersion,
      @JsonKey(name: 'last_updated') DateTime? lastUpdated});
}

/// @nodoc
class __$AppOpenRequestBodyCopyWithImpl<$Res>
    extends _$AppOpenRequestBodyCopyWithImpl<$Res>
    implements _$AppOpenRequestBodyCopyWith<$Res> {
  __$AppOpenRequestBodyCopyWithImpl(
      _AppOpenRequestBody _value, $Res Function(_AppOpenRequestBody) _then)
      : super(_value, (v) => _then(v as _AppOpenRequestBody));

  @override
  _AppOpenRequestBody get _value => super._value as _AppOpenRequestBody;

  @override
  $Res call({
    Object? platform = freezed,
    Object? guid = freezed,
    Object? version = freezed,
    Object? oldVersion = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_AppOpenRequestBody(
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      guid: guid == freezed
          ? _value.guid
          : guid // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      oldVersion: oldVersion == freezed
          ? _value.oldVersion
          : oldVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppOpenRequestBody implements _AppOpenRequestBody {
  const _$_AppOpenRequestBody(
      {this.platform,
      this.guid,
      this.version,
      @JsonKey(name: 'old_version') this.oldVersion,
      @JsonKey(name: 'last_updated') this.lastUpdated});

  factory _$_AppOpenRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_AppOpenRequestBodyFromJson(json);

  @override
  final String? platform;
  @override
  final String? guid;
  @override
  final String? version;
  @override
  @JsonKey(name: 'old_version')
  final String? oldVersion;
  @override
  @JsonKey(name: 'last_updated')
  final DateTime? lastUpdated;

  @override
  String toString() {
    return 'AppOpenRequestBody(platform: $platform, guid: $guid, version: $version, oldVersion: $oldVersion, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppOpenRequestBody &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.guid, guid) ||
                const DeepCollectionEquality().equals(other.guid, guid)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.oldVersion, oldVersion) ||
                const DeepCollectionEquality()
                    .equals(other.oldVersion, oldVersion)) &&
            (identical(other.lastUpdated, lastUpdated) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdated, lastUpdated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(guid) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(oldVersion) ^
      const DeepCollectionEquality().hash(lastUpdated);

  @JsonKey(ignore: true)
  @override
  _$AppOpenRequestBodyCopyWith<_AppOpenRequestBody> get copyWith =>
      __$AppOpenRequestBodyCopyWithImpl<_AppOpenRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppOpenRequestBodyToJson(this);
  }
}

abstract class _AppOpenRequestBody implements AppOpenRequestBody {
  const factory _AppOpenRequestBody(
          {String? platform,
          String? guid,
          String? version,
          @JsonKey(name: 'old_version') String? oldVersion,
          @JsonKey(name: 'last_updated') DateTime? lastUpdated}) =
      _$_AppOpenRequestBody;

  factory _AppOpenRequestBody.fromJson(Map<String, dynamic> json) =
      _$_AppOpenRequestBody.fromJson;

  @override
  String? get platform => throw _privateConstructorUsedError;
  @override
  String? get guid => throw _privateConstructorUsedError;
  @override
  String? get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'old_version')
  String? get oldVersion => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_updated')
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppOpenRequestBodyCopyWith<_AppOpenRequestBody> get copyWith =>
      throw _privateConstructorUsedError;
}
