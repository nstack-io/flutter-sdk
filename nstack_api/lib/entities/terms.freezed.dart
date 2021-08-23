// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Terms _$TermsFromJson(Map<String, dynamic> json) {
  return _Terms.fromJson(json);
}

/// @nodoc
class _$TermsTearOff {
  const _$TermsTearOff();

  _Terms call(
      {int? id,
      TermsType? type,
      String? name,
      String? slug,
      TermsVersion? version}) {
    return _Terms(
      id: id,
      type: type,
      name: name,
      slug: slug,
      version: version,
    );
  }

  Terms fromJson(Map<String, Object> json) {
    return Terms.fromJson(json);
  }
}

/// @nodoc
const $Terms = _$TermsTearOff();

/// @nodoc
mixin _$Terms {
  int? get id => throw _privateConstructorUsedError;
  TermsType? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  TermsVersion? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TermsCopyWith<Terms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsCopyWith<$Res> {
  factory $TermsCopyWith(Terms value, $Res Function(Terms) then) =
      _$TermsCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      TermsType? type,
      String? name,
      String? slug,
      TermsVersion? version});

  $TermsTypeCopyWith<$Res>? get type;
}

/// @nodoc
class _$TermsCopyWithImpl<$Res> implements $TermsCopyWith<$Res> {
  _$TermsCopyWithImpl(this._value, this._then);

  final Terms _value;
  // ignore: unused_field
  final $Res Function(Terms) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TermsType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as TermsVersion?,
    ));
  }

  @override
  $TermsTypeCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TermsTypeCopyWith<$Res>(_value.type!, (value) {
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
      {int? id,
      TermsType? type,
      String? name,
      String? slug,
      TermsVersion? version});

  @override
  $TermsTypeCopyWith<$Res>? get type;
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
    Object? id = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? version = freezed,
  }) {
    return _then(_Terms(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TermsType?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as TermsVersion?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Terms implements _Terms {
  const _$_Terms({this.id, this.type, this.name, this.slug, this.version});

  factory _$_Terms.fromJson(Map<String, dynamic> json) =>
      _$$_TermsFromJson(json);

  @override
  final int? id;
  @override
  final TermsType? type;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final TermsVersion? version;

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
    return _$$_TermsToJson(this);
  }
}

abstract class _Terms implements Terms {
  const factory _Terms(
      {int? id,
      TermsType? type,
      String? name,
      String? slug,
      TermsVersion? version}) = _$_Terms;

  factory _Terms.fromJson(Map<String, dynamic> json) = _$_Terms.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  TermsType? get type => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get slug => throw _privateConstructorUsedError;
  @override
  TermsVersion? get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TermsCopyWith<_Terms> get copyWith => throw _privateConstructorUsedError;
}
