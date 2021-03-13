// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'terms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Terms _$TermsFromJson(Map<String, dynamic> json) {
  return _Terms.fromJson(json);
}

/// @nodoc
class _$TermsTearOff {
  const _$TermsTearOff();

// ignore: unused_element
  _Terms call(
      {int id,
      TermsType type,
      String name,
      String slug,
      TermsVersion version}) {
    return _Terms(
      id: id,
      type: type,
      name: name,
      slug: slug,
      version: version,
    );
  }

// ignore: unused_element
  Terms fromJson(Map<String, Object> json) {
    return Terms.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Terms = _$TermsTearOff();

/// @nodoc
mixin _$Terms {
  int get id;
  TermsType get type;
  String get name;
  String get slug;
  TermsVersion get version;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TermsCopyWith<Terms> get copyWith;
}

/// @nodoc
abstract class $TermsCopyWith<$Res> {
  factory $TermsCopyWith(Terms value, $Res Function(Terms) then) =
      _$TermsCopyWithImpl<$Res>;
  $Res call(
      {int id, TermsType type, String name, String slug, TermsVersion version});

  $TermsTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$TermsCopyWithImpl<$Res> implements $TermsCopyWith<$Res> {
  _$TermsCopyWithImpl(this._value, this._then);

  final Terms _value;
  // ignore: unused_field
  final $Res Function(Terms) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object version = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      type: type == freezed ? _value.type : type as TermsType,
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
      version: version == freezed ? _value.version : version as TermsVersion,
    ));
  }

  @override
  $TermsTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $TermsTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
abstract class _$TermsCopyWith<$Res> implements $TermsCopyWith<$Res> {
  factory _$TermsCopyWith(_Terms value, $Res Function(_Terms) then) =
      __$TermsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, TermsType type, String name, String slug, TermsVersion version});

  @override
  $TermsTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$TermsCopyWithImpl<$Res> extends _$TermsCopyWithImpl<$Res>
    implements _$TermsCopyWith<$Res> {
  __$TermsCopyWithImpl(_Terms _value, $Res Function(_Terms) _then)
      : super(_value, (v) => _then(v as _Terms));

  @override
  _Terms get _value => super._value as _Terms;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object name = freezed,
    Object slug = freezed,
    Object version = freezed,
  }) {
    return _then(_Terms(
      id: id == freezed ? _value.id : id as int,
      type: type == freezed ? _value.type : type as TermsType,
      name: name == freezed ? _value.name : name as String,
      slug: slug == freezed ? _value.slug : slug as String,
      version: version == freezed ? _value.version : version as TermsVersion,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Terms implements _Terms {
  const _$_Terms({this.id, this.type, this.name, this.slug, this.version});

  factory _$_Terms.fromJson(Map<String, dynamic> json) =>
      _$_$_TermsFromJson(json);

  @override
  final int id;
  @override
  final TermsType type;
  @override
  final String name;
  @override
  final String slug;
  @override
  final TermsVersion version;

  @override
  String toString() {
    return 'Terms(id: $id, type: $type, name: $name, slug: $slug, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Terms &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality().equals(other.version, version)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(version);

  @JsonKey(ignore: true)
  @override
  _$TermsCopyWith<_Terms> get copyWith =>
      __$TermsCopyWithImpl<_Terms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TermsToJson(this);
  }
}

abstract class _Terms implements Terms {
  const factory _Terms(
      {int id,
      TermsType type,
      String name,
      String slug,
      TermsVersion version}) = _$_Terms;

  factory _Terms.fromJson(Map<String, dynamic> json) = _$_Terms.fromJson;

  @override
  int get id;
  @override
  TermsType get type;
  @override
  String get name;
  @override
  String get slug;
  @override
  TermsVersion get version;
  @override
  @JsonKey(ignore: true)
  _$TermsCopyWith<_Terms> get copyWith;
}
