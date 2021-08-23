// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localize_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalizeResource _$LocalizeResourceFromJson(Map<String, dynamic> json) {
  return _LocalizeResource.fromJson(json);
}

/// @nodoc
class _$LocalizeResourceTearOff {
  const _$LocalizeResourceTearOff();

  _LocalizeResource call(
      {Map<String, dynamic>? data, LocalizeResourceMeta? meta}) {
    return _LocalizeResource(
      data: data,
      meta: meta,
    );
  }

  LocalizeResource fromJson(Map<String, Object> json) {
    return LocalizeResource.fromJson(json);
  }
}

/// @nodoc
const $LocalizeResource = _$LocalizeResourceTearOff();

/// @nodoc
mixin _$LocalizeResource {
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  LocalizeResourceMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalizeResourceCopyWith<LocalizeResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizeResourceCopyWith<$Res> {
  factory $LocalizeResourceCopyWith(
          LocalizeResource value, $Res Function(LocalizeResource) then) =
      _$LocalizeResourceCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic>? data, LocalizeResourceMeta? meta});

  $LocalizeResourceMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$LocalizeResourceCopyWithImpl<$Res>
    implements $LocalizeResourceCopyWith<$Res> {
  _$LocalizeResourceCopyWithImpl(this._value, this._then);

  final LocalizeResource _value;
  // ignore: unused_field
  final $Res Function(LocalizeResource) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as LocalizeResourceMeta?,
    ));
  }

  @override
  $LocalizeResourceMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $LocalizeResourceMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$LocalizeResourceCopyWith<$Res>
    implements $LocalizeResourceCopyWith<$Res> {
  factory _$LocalizeResourceCopyWith(
          _LocalizeResource value, $Res Function(_LocalizeResource) then) =
      __$LocalizeResourceCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic>? data, LocalizeResourceMeta? meta});

  @override
  $LocalizeResourceMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$LocalizeResourceCopyWithImpl<$Res>
    extends _$LocalizeResourceCopyWithImpl<$Res>
    implements _$LocalizeResourceCopyWith<$Res> {
  __$LocalizeResourceCopyWithImpl(
      _LocalizeResource _value, $Res Function(_LocalizeResource) _then)
      : super(_value, (v) => _then(v as _LocalizeResource));

  @override
  _LocalizeResource get _value => super._value as _LocalizeResource;

  @override
  $Res call({
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_LocalizeResource(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as LocalizeResourceMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalizeResource implements _LocalizeResource {
  const _$_LocalizeResource({this.data, this.meta});

  factory _$_LocalizeResource.fromJson(Map<String, dynamic> json) =>
      _$$_LocalizeResourceFromJson(json);

  @override
  final Map<String, dynamic>? data;
  @override
  final LocalizeResourceMeta? meta;

  @override
  String toString() {
    return 'LocalizeResource(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalizeResource &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.meta, meta) ||
                const DeepCollectionEquality().equals(other.meta, meta)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(meta);

  @JsonKey(ignore: true)
  @override
  _$LocalizeResourceCopyWith<_LocalizeResource> get copyWith =>
      __$LocalizeResourceCopyWithImpl<_LocalizeResource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalizeResourceToJson(this);
  }
}

abstract class _LocalizeResource implements LocalizeResource {
  const factory _LocalizeResource(
      {Map<String, dynamic>? data,
      LocalizeResourceMeta? meta}) = _$_LocalizeResource;

  factory _LocalizeResource.fromJson(Map<String, dynamic> json) =
      _$_LocalizeResource.fromJson;

  @override
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  @override
  LocalizeResourceMeta? get meta => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocalizeResourceCopyWith<_LocalizeResource> get copyWith =>
      throw _privateConstructorUsedError;
}
