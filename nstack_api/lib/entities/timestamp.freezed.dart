// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timestamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Timestamp _$TimestampFromJson(Map<String, dynamic> json) {
  return _Timestamp.fromJson(json);
}

/// @nodoc
class _$TimestampTearOff {
  const _$TimestampTearOff();

// ignore: unused_element
  _Timestamp call({DateTime time}) {
    return _Timestamp(
      time: time,
    );
  }

// ignore: unused_element
  Timestamp fromJson(Map<String, Object> json) {
    return Timestamp.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Timestamp = _$TimestampTearOff();

/// @nodoc
mixin _$Timestamp {
  DateTime get time;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $TimestampCopyWith<Timestamp> get copyWith;
}

/// @nodoc
abstract class $TimestampCopyWith<$Res> {
  factory $TimestampCopyWith(Timestamp value, $Res Function(Timestamp) then) =
      _$TimestampCopyWithImpl<$Res>;
  $Res call({DateTime time});
}

/// @nodoc
class _$TimestampCopyWithImpl<$Res> implements $TimestampCopyWith<$Res> {
  _$TimestampCopyWithImpl(this._value, this._then);

  final Timestamp _value;
  // ignore: unused_field
  final $Res Function(Timestamp) _then;

  @override
  $Res call({
    Object time = freezed,
  }) {
    return _then(_value.copyWith(
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TimestampCopyWith<$Res> implements $TimestampCopyWith<$Res> {
  factory _$TimestampCopyWith(
          _Timestamp value, $Res Function(_Timestamp) then) =
      __$TimestampCopyWithImpl<$Res>;
  @override
  $Res call({DateTime time});
}

/// @nodoc
class __$TimestampCopyWithImpl<$Res> extends _$TimestampCopyWithImpl<$Res>
    implements _$TimestampCopyWith<$Res> {
  __$TimestampCopyWithImpl(_Timestamp _value, $Res Function(_Timestamp) _then)
      : super(_value, (v) => _then(v as _Timestamp));

  @override
  _Timestamp get _value => super._value as _Timestamp;

  @override
  $Res call({
    Object time = freezed,
  }) {
    return _then(_Timestamp(
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Timestamp implements _Timestamp {
  const _$_Timestamp({this.time});

  factory _$_Timestamp.fromJson(Map<String, dynamic> json) =>
      _$_$_TimestampFromJson(json);

  @override
  final DateTime time;

  @override
  String toString() {
    return 'Timestamp(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Timestamp &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$TimestampCopyWith<_Timestamp> get copyWith =>
      __$TimestampCopyWithImpl<_Timestamp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TimestampToJson(this);
  }
}

abstract class _Timestamp implements Timestamp {
  const factory _Timestamp({DateTime time}) = _$_Timestamp;

  factory _Timestamp.fromJson(Map<String, dynamic> json) =
      _$_Timestamp.fromJson;

  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$TimestampCopyWith<_Timestamp> get copyWith;
}
