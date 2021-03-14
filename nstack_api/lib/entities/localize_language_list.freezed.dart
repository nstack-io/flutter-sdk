// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'localize_language_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocalizeLanguageList _$LocalizeLanguageListFromJson(Map<String, dynamic> json) {
  return _LanguageList.fromJson(json);
}

/// @nodoc
class _$LocalizeLanguageListTearOff {
  const _$LocalizeLanguageListTearOff();

// ignore: unused_element
  _LanguageList call({List<LocalizeLanguage> data}) {
    return _LanguageList(
      data: data,
    );
  }

// ignore: unused_element
  LocalizeLanguageList fromJson(Map<String, Object> json) {
    return LocalizeLanguageList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalizeLanguageList = _$LocalizeLanguageListTearOff();

/// @nodoc
mixin _$LocalizeLanguageList {
  List<LocalizeLanguage> get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocalizeLanguageListCopyWith<LocalizeLanguageList> get copyWith;
}

/// @nodoc
abstract class $LocalizeLanguageListCopyWith<$Res> {
  factory $LocalizeLanguageListCopyWith(LocalizeLanguageList value,
          $Res Function(LocalizeLanguageList) then) =
      _$LocalizeLanguageListCopyWithImpl<$Res>;
  $Res call({List<LocalizeLanguage> data});
}

/// @nodoc
class _$LocalizeLanguageListCopyWithImpl<$Res>
    implements $LocalizeLanguageListCopyWith<$Res> {
  _$LocalizeLanguageListCopyWithImpl(this._value, this._then);

  final LocalizeLanguageList _value;
  // ignore: unused_field
  final $Res Function(LocalizeLanguageList) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as List<LocalizeLanguage>,
    ));
  }
}

/// @nodoc
abstract class _$LanguageListCopyWith<$Res>
    implements $LocalizeLanguageListCopyWith<$Res> {
  factory _$LanguageListCopyWith(
          _LanguageList value, $Res Function(_LanguageList) then) =
      __$LanguageListCopyWithImpl<$Res>;
  @override
  $Res call({List<LocalizeLanguage> data});
}

/// @nodoc
class __$LanguageListCopyWithImpl<$Res>
    extends _$LocalizeLanguageListCopyWithImpl<$Res>
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
      data: data == freezed ? _value.data : data as List<LocalizeLanguage>,
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
  final List<LocalizeLanguage> data;

  @override
  String toString() {
    return 'LocalizeLanguageList(data: $data)';
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

abstract class _LanguageList implements LocalizeLanguageList {
  const factory _LanguageList({List<LocalizeLanguage> data}) = _$_LanguageList;

  factory _LanguageList.fromJson(Map<String, dynamic> json) =
      _$_LanguageList.fromJson;

  @override
  List<LocalizeLanguage> get data;
  @override
  @JsonKey(ignore: true)
  _$LanguageListCopyWith<_LanguageList> get copyWith;
}
