// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'localize_resource_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocalizeResourceList _$LocalizeResourceListFromJson(Map<String, dynamic> json) {
  return _LocalizeResourceList.fromJson(json);
}

/// @nodoc
class _$LocalizeResourceListTearOff {
  const _$LocalizeResourceListTearOff();

// ignore: unused_element
  _LocalizeResourceList call({List<LocalizeResource> data}) {
    return _LocalizeResourceList(
      data: data,
    );
  }

// ignore: unused_element
  LocalizeResourceList fromJson(Map<String, Object> json) {
    return LocalizeResourceList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalizeResourceList = _$LocalizeResourceListTearOff();

/// @nodoc
mixin _$LocalizeResourceList {
  List<LocalizeResource> get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocalizeResourceListCopyWith<LocalizeResourceList> get copyWith;
}

/// @nodoc
abstract class $LocalizeResourceListCopyWith<$Res> {
  factory $LocalizeResourceListCopyWith(LocalizeResourceList value,
          $Res Function(LocalizeResourceList) then) =
      _$LocalizeResourceListCopyWithImpl<$Res>;
  $Res call({List<LocalizeResource> data});
}

/// @nodoc
class _$LocalizeResourceListCopyWithImpl<$Res>
    implements $LocalizeResourceListCopyWith<$Res> {
  _$LocalizeResourceListCopyWithImpl(this._value, this._then);

  final LocalizeResourceList _value;
  // ignore: unused_field
  final $Res Function(LocalizeResourceList) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<LocalizeResource>,
    ));
  }
}

/// @nodoc
abstract class _$LocalizeResourceListCopyWith<$Res>
    implements $LocalizeResourceListCopyWith<$Res> {
  factory _$LocalizeResourceListCopyWith(_LocalizeResourceList value,
          $Res Function(_LocalizeResourceList) then) =
      __$LocalizeResourceListCopyWithImpl<$Res>;
  @override
  $Res call({List<LocalizeResource> data});
}

/// @nodoc
class __$LocalizeResourceListCopyWithImpl<$Res>
    extends _$LocalizeResourceListCopyWithImpl<$Res>
    implements _$LocalizeResourceListCopyWith<$Res> {
  __$LocalizeResourceListCopyWithImpl(
      _LocalizeResourceList _value, $Res Function(_LocalizeResourceList) _then)
      : super(_value, (v) => _then(v as _LocalizeResourceList));

  @override
  _LocalizeResourceList get _value => super._value as _LocalizeResourceList;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LocalizeResourceList(
      data: data == freezed ? _value.data : data as List<LocalizeResource>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocalizeResourceList implements _LocalizeResourceList {
  const _$_LocalizeResourceList({this.data});

  factory _$_LocalizeResourceList.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalizeResourceListFromJson(json);

  @override
  final List<LocalizeResource> data;

  @override
  String toString() {
    return 'LocalizeResourceList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalizeResourceList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LocalizeResourceListCopyWith<_LocalizeResourceList> get copyWith =>
      __$LocalizeResourceListCopyWithImpl<_LocalizeResourceList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalizeResourceListToJson(this);
  }
}

abstract class _LocalizeResourceList implements LocalizeResourceList {
  const factory _LocalizeResourceList({List<LocalizeResource> data}) =
      _$_LocalizeResourceList;

  factory _LocalizeResourceList.fromJson(Map<String, dynamic> json) =
      _$_LocalizeResourceList.fromJson;

  @override
  List<LocalizeResource> get data;
  @override
  @JsonKey(ignore: true)
  _$LocalizeResourceListCopyWith<_LocalizeResourceList> get copyWith;
}
