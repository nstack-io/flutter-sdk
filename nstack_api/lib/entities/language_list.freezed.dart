// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'language_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LanguageList _$LanguageListFromJson(Map<String, dynamic> json) {
  return _LanguageList.fromJson(json);
}

/// @nodoc
class _$LanguageListTearOff {
  const _$LanguageListTearOff();

// ignore: unused_element
  _LanguageList call({List<Language> data}) {
    return _LanguageList(
      data: data,
    );
  }

// ignore: unused_element
  LanguageList fromJson(Map<String, Object> json) {
    return LanguageList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LanguageList = _$LanguageListTearOff();

/// @nodoc
mixin _$LanguageList {
  List<Language> get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LanguageListCopyWith<LanguageList> get copyWith;
}

/// @nodoc
abstract class $LanguageListCopyWith<$Res> {
  factory $LanguageListCopyWith(
          LanguageList value, $Res Function(LanguageList) then) =
      _$LanguageListCopyWithImpl<$Res>;
  $Res call({List<Language> data});
}

/// @nodoc
class _$LanguageListCopyWithImpl<$Res> implements $LanguageListCopyWith<$Res> {
  _$LanguageListCopyWithImpl(this._value, this._then);

  final LanguageList _value;
  // ignore: unused_field
  final $Res Function(LanguageList) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<Language>,
    ));
  }
}

/// @nodoc
abstract class _$LanguageListCopyWith<$Res>
    implements $LanguageListCopyWith<$Res> {
  factory _$LanguageListCopyWith(
          _LanguageList value, $Res Function(_LanguageList) then) =
      __$LanguageListCopyWithImpl<$Res>;
  @override
  $Res call({List<Language> data});
}

/// @nodoc
class __$LanguageListCopyWithImpl<$Res> extends _$LanguageListCopyWithImpl<$Res>
    implements _$LanguageListCopyWith<$Res> {
  __$LanguageListCopyWithImpl(
      _LanguageList _value, $Res Function(_LanguageList) _then)
      : super(_value, (v) => _then(v as _LanguageList));

  @override
  _LanguageList get _value => super._value as _LanguageList;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_LanguageList(
      data: data == freezed ? _value.data : data as List<Language>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LanguageList implements _LanguageList {
  const _$_LanguageList({this.data});

  factory _$_LanguageList.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageListFromJson(json);

  @override
  final List<Language> data;

  @override
  String toString() {
    return 'LanguageList(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LanguageList &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LanguageListCopyWith<_LanguageList> get copyWith =>
      __$LanguageListCopyWithImpl<_LanguageList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageListToJson(this);
  }
}

abstract class _LanguageList implements LanguageList {
  const factory _LanguageList({List<Language> data}) = _$_LanguageList;

  factory _LanguageList.fromJson(Map<String, dynamic> json) =
      _$_LanguageList.fromJson;

  @override
  List<Language> get data;
  @override
  @JsonKey(ignore: true)
  _$LanguageListCopyWith<_LanguageList> get copyWith;
}
