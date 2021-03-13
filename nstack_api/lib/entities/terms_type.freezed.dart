// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'terms_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TermsType _$TermsTypeFromJson(Map<String, dynamic> json) {
  return _TermsType.fromJson(json);
}

/// @nodoc
class _$TermsTypeTearOff {
  const _$TermsTypeTearOff();

// ignore: unused_element
  _TermsType call(
      {int id,
      String version,
      String name,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'has_viewed') bool hasViewed}) {
    return _TermsType(
      id: id,
      version: version,
      name: name,
      publishedAt: publishedAt,
      hasViewed: hasViewed,
    );
  }

// ignore: unused_element
  TermsType fromJson(Map<String, Object> json) {
    return TermsType.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TermsType = _$TermsTypeTearOff();

/// @nodoc
mixin _$TermsType {
  int get id;
  String get version;
  String get name;
  @JsonKey(name: 'published_at')
  DateTime get publishedAt;
  @JsonKey(name: 'has_viewed')
  bool get hasViewed;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TermsTypeCopyWith<TermsType> get copyWith;
}

/// @nodoc
abstract class $TermsTypeCopyWith<$Res> {
  factory $TermsTypeCopyWith(TermsType value, $Res Function(TermsType) then) =
      _$TermsTypeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String version,
      String name,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'has_viewed') bool hasViewed});
}

/// @nodoc
class _$TermsTypeCopyWithImpl<$Res> implements $TermsTypeCopyWith<$Res> {
  _$TermsTypeCopyWithImpl(this._value, this._then);

  final TermsType _value;
  // ignore: unused_field
  final $Res Function(TermsType) _then;

  @override
  $Res call({
    Object id = freezed,
    Object version = freezed,
    Object name = freezed,
    Object publishedAt = freezed,
    Object hasViewed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      version: version == freezed ? _value.version : version as String,
      name: name == freezed ? _value.name : name as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as DateTime,
      hasViewed: hasViewed == freezed ? _value.hasViewed : hasViewed as bool,
    ));
  }
}

/// @nodoc
abstract class _$TermsTypeCopyWith<$Res> implements $TermsTypeCopyWith<$Res> {
  factory _$TermsTypeCopyWith(
          _TermsType value, $Res Function(_TermsType) then) =
      __$TermsTypeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String version,
      String name,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'has_viewed') bool hasViewed});
}

/// @nodoc
class __$TermsTypeCopyWithImpl<$Res> extends _$TermsTypeCopyWithImpl<$Res>
    implements _$TermsTypeCopyWith<$Res> {
  __$TermsTypeCopyWithImpl(_TermsType _value, $Res Function(_TermsType) _then)
      : super(_value, (v) => _then(v as _TermsType));

  @override
  _TermsType get _value => super._value as _TermsType;

  @override
  $Res call({
    Object id = freezed,
    Object version = freezed,
    Object name = freezed,
    Object publishedAt = freezed,
    Object hasViewed = freezed,
  }) {
    return _then(_TermsType(
      id: id == freezed ? _value.id : id as int,
      version: version == freezed ? _value.version : version as String,
      name: name == freezed ? _value.name : name as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as DateTime,
      hasViewed: hasViewed == freezed ? _value.hasViewed : hasViewed as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TermsType implements _TermsType {
  const _$_TermsType(
      {this.id,
      this.version,
      this.name,
      @JsonKey(name: 'published_at') this.publishedAt,
      @JsonKey(name: 'has_viewed') this.hasViewed});

  factory _$_TermsType.fromJson(Map<String, dynamic> json) =>
      _$_$_TermsTypeFromJson(json);

  @override
  final int id;
  @override
  final String version;
  @override
  final String name;
  @override
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @override
  @JsonKey(name: 'has_viewed')
  final bool hasViewed;

  @override
  String toString() {
    return 'TermsType(id: $id, version: $version, name: $name, publishedAt: $publishedAt, hasViewed: $hasViewed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TermsType &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.hasViewed, hasViewed) ||
                const DeepCollectionEquality()
                    .equals(other.hasViewed, hasViewed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(hasViewed);

  @JsonKey(ignore: true)
  @override
  _$TermsTypeCopyWith<_TermsType> get copyWith =>
      __$TermsTypeCopyWithImpl<_TermsType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TermsTypeToJson(this);
  }
}

abstract class _TermsType implements TermsType {
  const factory _TermsType(
      {int id,
      String version,
      String name,
      @JsonKey(name: 'published_at') DateTime publishedAt,
      @JsonKey(name: 'has_viewed') bool hasViewed}) = _$_TermsType;

  factory _TermsType.fromJson(Map<String, dynamic> json) =
      _$_TermsType.fromJson;

  @override
  int get id;
  @override
  String get version;
  @override
  String get name;
  @override
  @JsonKey(name: 'published_at')
  DateTime get publishedAt;
  @override
  @JsonKey(name: 'has_viewed')
  bool get hasViewed;
  @override
  @JsonKey(ignore: true)
  _$TermsTypeCopyWith<_TermsType> get copyWith;
}
