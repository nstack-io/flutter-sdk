// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localize_index_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalizeIndexList _$LocalizeIndexListFromJson(Map<String, dynamic> json) {
  return _LocalizeIndexList.fromJson(json);
}

/// @nodoc
class _$LocalizeIndexListTearOff {
  const _$LocalizeIndexListTearOff();

  _LocalizeIndexList call({List<LocalizeIndex>? data}) {
    return _LocalizeIndexList(
      data: data,
    );
  }

  LocalizeIndexList fromJson(Map<String, Object> json) {
    return LocalizeIndexList.fromJson(json);
  }
}

/// @nodoc
const $LocalizeIndexList = _$LocalizeIndexListTearOff();

/// @nodoc
mixin _$LocalizeIndexList {
  List<LocalizeIndex>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalizeIndexListCopyWith<LocalizeIndexList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizeIndexListCopyWith<$Res> {
  factory $LocalizeIndexListCopyWith(
          LocalizeIndexList value, $Res Function(LocalizeIndexList) then) =
      _$LocalizeIndexListCopyWithImpl<$Res>;
  $Res call({List<LocalizeIndex>? data});
}

/// @nodoc
class _$LocalizeIndexListCopyWithImpl<$Res>
    implements $LocalizeIndexListCopyWith<$Res> {
  _$LocalizeIndexListCopyWithImpl(this._value, this._then);

  final LocalizeIndexList _value;
  // ignore: unused_field
  final $Res Function(LocalizeIndexList) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LocalizeIndex>?,
    ));
  }
}

/// @nodoc
abstract class _$LocalizeIndexListCopyWith<$Res>
    implements $LocalizeIndexListCopyWith<$Res> {
  factory _$LocalizeIndexListCopyWith(
          _LocalizeIndexList value, $Res Function(_LocalizeIndexList) then) =
      __$LocalizeIndexListCopyWithImpl<$Res>;
  @override
  $Res call({List<LocalizeIndex>? data});
}

/// @nodoc
class __$LocalizeIndexListCopyWithImpl<$Res>
    extends _$LocalizeIndexListCopyWithImpl<$Res>
    implements _$LocalizeIndexListCopyWith<$Res> {
  __$LocalizeIndexListCopyWithImpl(
      _LocalizeIndexList _value, $Res Function(_LocalizeIndexList) _then)
      : super(_value, (v) => _then(v as _LocalizeIndexList));

  @override
  _LocalizeIndexList get _value => super._value as _LocalizeIndexList;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_LocalizeIndexList(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LocalizeIndex>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalizeIndexList implements _LocalizeIndexList {
  const _$_LocalizeIndexList({this.data});

  factory _$_LocalizeIndexList.fromJson(Map<String, dynamic> json) =>
      _$$_LocalizeIndexListFromJson(json);

  @override
  final List<LocalizeIndex>? data;

  @override
  String toString() {
    return 'LocalizeIndexList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalizeIndexList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LocalizeIndexListCopyWith<_LocalizeIndexList> get copyWith =>
      __$LocalizeIndexListCopyWithImpl<_LocalizeIndexList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalizeIndexListToJson(this);
  }
}

abstract class _LocalizeIndexList implements LocalizeIndexList {
  const factory _LocalizeIndexList({List<LocalizeIndex>? data}) =
      _$_LocalizeIndexList;

  factory _LocalizeIndexList.fromJson(Map<String, dynamic> json) =
      _$_LocalizeIndexList.fromJson;

  @override
  List<LocalizeIndex>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocalizeIndexListCopyWith<_LocalizeIndexList> get copyWith =>
      throw _privateConstructorUsedError;
}
