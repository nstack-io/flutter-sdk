// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_open_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppOpenData _$AppOpenDataFromJson(Map<String, dynamic> json) {
  return _AppOpenData.fromJson(json);
}

/// @nodoc
class _$AppOpenDataTearOff {
  const _$AppOpenDataTearOff();

// ignore: unused_element
  _AppOpenData call(
      {int count,
      AppUpdate update,
      List<LocalizeIndex> localize,
      String platform,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Message message,
      @JsonKey(name: 'rate_reminder') RateReminder rateReminder,
      List<Terms> terms}) {
    return _AppOpenData(
      count: count,
      update: update,
      localize: localize,
      platform: platform,
      createdAt: createdAt,
      updatedAt: updatedAt,
      message: message,
      rateReminder: rateReminder,
      terms: terms,
    );
  }

// ignore: unused_element
  AppOpenData fromJson(Map<String, Object> json) {
    return AppOpenData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppOpenData = _$AppOpenDataTearOff();

/// @nodoc
mixin _$AppOpenData {
  int get count;
  AppUpdate get update;
  List<LocalizeIndex> get localize;
  String get platform;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  Message get message;
  @JsonKey(name: 'rate_reminder')
  RateReminder get rateReminder;
  List<Terms> get terms;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AppOpenDataCopyWith<AppOpenData> get copyWith;
}

/// @nodoc
abstract class $AppOpenDataCopyWith<$Res> {
  factory $AppOpenDataCopyWith(
          AppOpenData value, $Res Function(AppOpenData) then) =
      _$AppOpenDataCopyWithImpl<$Res>;
  $Res call(
      {int count,
      AppUpdate update,
      List<LocalizeIndex> localize,
      String platform,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Message message,
      @JsonKey(name: 'rate_reminder') RateReminder rateReminder,
      List<Terms> terms});

  $AppUpdateCopyWith<$Res> get update;
  $MessageCopyWith<$Res> get message;
  $RateReminderCopyWith<$Res> get rateReminder;
}

/// @nodoc
class _$AppOpenDataCopyWithImpl<$Res> implements $AppOpenDataCopyWith<$Res> {
  _$AppOpenDataCopyWithImpl(this._value, this._then);

  final AppOpenData _value;
  // ignore: unused_field
  final $Res Function(AppOpenData) _then;

  @override
  $Res call({
    Object count = freezed,
    Object update = freezed,
    Object localize = freezed,
    Object platform = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object message = freezed,
    Object rateReminder = freezed,
    Object terms = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      update: update == freezed ? _value.update : update as AppUpdate,
      localize: localize == freezed
          ? _value.localize
          : localize as List<LocalizeIndex>,
      platform: platform == freezed ? _value.platform : platform as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      message: message == freezed ? _value.message : message as Message,
      rateReminder: rateReminder == freezed
          ? _value.rateReminder
          : rateReminder as RateReminder,
      terms: terms == freezed ? _value.terms : terms as List<Terms>,
    ));
  }

  @override
  $AppUpdateCopyWith<$Res> get update {
    if (_value.update == null) {
      return null;
    }
    return $AppUpdateCopyWith<$Res>(_value.update, (value) {
      return _then(_value.copyWith(update: value));
    });
  }

  @override
  $MessageCopyWith<$Res> get message {
    if (_value.message == null) {
      return null;
    }
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }

  @override
  $RateReminderCopyWith<$Res> get rateReminder {
    if (_value.rateReminder == null) {
      return null;
    }
    return $RateReminderCopyWith<$Res>(_value.rateReminder, (value) {
      return _then(_value.copyWith(rateReminder: value));
    });
  }
}

/// @nodoc
abstract class _$AppOpenDataCopyWith<$Res>
    implements $AppOpenDataCopyWith<$Res> {
  factory _$AppOpenDataCopyWith(
          _AppOpenData value, $Res Function(_AppOpenData) then) =
      __$AppOpenDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      AppUpdate update,
      List<LocalizeIndex> localize,
      String platform,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Message message,
      @JsonKey(name: 'rate_reminder') RateReminder rateReminder,
      List<Terms> terms});

  @override
  $AppUpdateCopyWith<$Res> get update;
  @override
  $MessageCopyWith<$Res> get message;
  @override
  $RateReminderCopyWith<$Res> get rateReminder;
}

/// @nodoc
class __$AppOpenDataCopyWithImpl<$Res> extends _$AppOpenDataCopyWithImpl<$Res>
    implements _$AppOpenDataCopyWith<$Res> {
  __$AppOpenDataCopyWithImpl(
      _AppOpenData _value, $Res Function(_AppOpenData) _then)
      : super(_value, (v) => _then(v as _AppOpenData));

  @override
  _AppOpenData get _value => super._value as _AppOpenData;

  @override
  $Res call({
    Object count = freezed,
    Object update = freezed,
    Object localize = freezed,
    Object platform = freezed,
    Object createdAt = freezed,
    Object updatedAt = freezed,
    Object message = freezed,
    Object rateReminder = freezed,
    Object terms = freezed,
  }) {
    return _then(_AppOpenData(
      count: count == freezed ? _value.count : count as int,
      update: update == freezed ? _value.update : update as AppUpdate,
      localize: localize == freezed
          ? _value.localize
          : localize as List<LocalizeIndex>,
      platform: platform == freezed ? _value.platform : platform as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      message: message == freezed ? _value.message : message as Message,
      rateReminder: rateReminder == freezed
          ? _value.rateReminder
          : rateReminder as RateReminder,
      terms: terms == freezed ? _value.terms : terms as List<Terms>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppOpenData implements _AppOpenData {
  const _$_AppOpenData(
      {this.count,
      this.update,
      this.localize,
      this.platform,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.message,
      @JsonKey(name: 'rate_reminder') this.rateReminder,
      this.terms});

  factory _$_AppOpenData.fromJson(Map<String, dynamic> json) =>
      _$_$_AppOpenDataFromJson(json);

  @override
  final int count;
  @override
  final AppUpdate update;
  @override
  final List<LocalizeIndex> localize;
  @override
  final String platform;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final Message message;
  @override
  @JsonKey(name: 'rate_reminder')
  final RateReminder rateReminder;
  @override
  final List<Terms> terms;

  @override
  String toString() {
    return 'AppOpenData(count: $count, update: $update, localize: $localize, platform: $platform, createdAt: $createdAt, updatedAt: $updatedAt, message: $message, rateReminder: $rateReminder, terms: $terms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppOpenData &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.update, update) ||
                const DeepCollectionEquality().equals(other.update, update)) &&
            (identical(other.localize, localize) ||
                const DeepCollectionEquality()
                    .equals(other.localize, localize)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.rateReminder, rateReminder) ||
                const DeepCollectionEquality()
                    .equals(other.rateReminder, rateReminder)) &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(update) ^
      const DeepCollectionEquality().hash(localize) ^
      const DeepCollectionEquality().hash(platform) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(rateReminder) ^
      const DeepCollectionEquality().hash(terms);

  @JsonKey(ignore: true)
  @override
  _$AppOpenDataCopyWith<_AppOpenData> get copyWith =>
      __$AppOpenDataCopyWithImpl<_AppOpenData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppOpenDataToJson(this);
  }
}

abstract class _AppOpenData implements AppOpenData {
  const factory _AppOpenData(
      {int count,
      AppUpdate update,
      List<LocalizeIndex> localize,
      String platform,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      Message message,
      @JsonKey(name: 'rate_reminder') RateReminder rateReminder,
      List<Terms> terms}) = _$_AppOpenData;

  factory _AppOpenData.fromJson(Map<String, dynamic> json) =
      _$_AppOpenData.fromJson;

  @override
  int get count;
  @override
  AppUpdate get update;
  @override
  List<LocalizeIndex> get localize;
  @override
  String get platform;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  Message get message;
  @override
  @JsonKey(name: 'rate_reminder')
  RateReminder get rateReminder;
  @override
  List<Terms> get terms;
  @override
  @JsonKey(ignore: true)
  _$AppOpenDataCopyWith<_AppOpenData> get copyWith;
}
