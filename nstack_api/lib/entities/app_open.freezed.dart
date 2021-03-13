// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_open.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppOpen _$AppOpenFromJson(Map<String, dynamic> json) {
  return _AppOpen.fromJson(json);
}

/// @nodoc
class _$AppOpenTearOff {
  const _$AppOpenTearOff();

// ignore: unused_element
  _AppOpen call({AppOpenData data, AppOpenMeta meta}) {
    return _AppOpen(
      data: data,
      meta: meta,
    );
  }

// ignore: unused_element
  AppOpen fromJson(Map<String, Object> json) {
    return AppOpen.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppOpen = _$AppOpenTearOff();

/// @nodoc
mixin _$AppOpen {
  AppOpenData get data;
  AppOpenMeta get meta;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AppOpenCopyWith<AppOpen> get copyWith;
}

/// @nodoc
abstract class $AppOpenCopyWith<$Res> {
  factory $AppOpenCopyWith(AppOpen value, $Res Function(AppOpen) then) =
      _$AppOpenCopyWithImpl<$Res>;
  $Res call({AppOpenData data, AppOpenMeta meta});

  $AppOpenDataCopyWith<$Res> get data;
  $AppOpenMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$AppOpenCopyWithImpl<$Res> implements $AppOpenCopyWith<$Res> {
  _$AppOpenCopyWithImpl(this._value, this._then);

  final AppOpen _value;
  // ignore: unused_field
  final $Res Function(AppOpen) _then;

  @override
  $Res call({
    Object data = freezed,
    Object meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as AppOpenData,
      meta: meta == freezed ? _value.meta : meta as AppOpenMeta,
    ));
  }

  @override
  $AppOpenDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $AppOpenDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $AppOpenMetaCopyWith<$Res> get meta {
    if (_value.meta == null) {
      return null;
    }
    return $AppOpenMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$AppOpenCopyWith<$Res> implements $AppOpenCopyWith<$Res> {
  factory _$AppOpenCopyWith(_AppOpen value, $Res Function(_AppOpen) then) =
      __$AppOpenCopyWithImpl<$Res>;
  @override
  $Res call({AppOpenData data, AppOpenMeta meta});

  @override
  $AppOpenDataCopyWith<$Res> get data;
  @override
  $AppOpenMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$AppOpenCopyWithImpl<$Res> extends _$AppOpenCopyWithImpl<$Res>
    implements _$AppOpenCopyWith<$Res> {
  __$AppOpenCopyWithImpl(_AppOpen _value, $Res Function(_AppOpen) _then)
      : super(_value, (v) => _then(v as _AppOpen));

  @override
  _AppOpen get _value => super._value as _AppOpen;

  @override
  $Res call({
    Object data = freezed,
    Object meta = freezed,
  }) {
    return _then(_AppOpen(
      data: data == freezed ? _value.data : data as AppOpenData,
      meta: meta == freezed ? _value.meta : meta as AppOpenMeta,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppOpen implements _AppOpen {
  const _$_AppOpen({this.data, this.meta});

  factory _$_AppOpen.fromJson(Map<String, dynamic> json) =>
      _$_$_AppOpenFromJson(json);

  @override
  final AppOpenData data;
  @override
  final AppOpenMeta meta;

  @override
  String toString() {
    return 'AppOpen(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppOpen &&
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
  _$AppOpenCopyWith<_AppOpen> get copyWith =>
      __$AppOpenCopyWithImpl<_AppOpen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppOpenToJson(this);
  }
}

abstract class _AppOpen implements AppOpen {
  const factory _AppOpen({AppOpenData data, AppOpenMeta meta}) = _$_AppOpen;

  factory _AppOpen.fromJson(Map<String, dynamic> json) = _$_AppOpen.fromJson;

  @override
  AppOpenData get data;
  @override
  AppOpenMeta get meta;
  @override
  @JsonKey(ignore: true)
  _$AppOpenCopyWith<_AppOpen> get copyWith;
}
