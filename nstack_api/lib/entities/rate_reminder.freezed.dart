// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'rate_reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RateReminder _$RateReminderFromJson(Map<String, dynamic> json) {
  return _RateReminder.fromJson(json);
}

/// @nodoc
class _$RateReminderTearOff {
  const _$RateReminderTearOff();

// ignore: unused_element
  _RateReminder call(
      {String title,
      String body,
      @JsonKey(name: 'yes_button') String yesButton,
      @JsonKey(name: 'later_button') String laterButton,
      @JsonKey(name: 'no_button') String noButton,
      String link}) {
    return _RateReminder(
      title: title,
      body: body,
      yesButton: yesButton,
      laterButton: laterButton,
      noButton: noButton,
      link: link,
    );
  }

// ignore: unused_element
  RateReminder fromJson(Map<String, Object> json) {
    return RateReminder.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RateReminder = _$RateReminderTearOff();

/// @nodoc
mixin _$RateReminder {
  String get title;
  String get body;
  @JsonKey(name: 'yes_button')
  String get yesButton;
  @JsonKey(name: 'later_button')
  String get laterButton;
  @JsonKey(name: 'no_button')
  String get noButton;
  String get link;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RateReminderCopyWith<RateReminder> get copyWith;
}

/// @nodoc
abstract class $RateReminderCopyWith<$Res> {
  factory $RateReminderCopyWith(
          RateReminder value, $Res Function(RateReminder) then) =
      _$RateReminderCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String body,
      @JsonKey(name: 'yes_button') String yesButton,
      @JsonKey(name: 'later_button') String laterButton,
      @JsonKey(name: 'no_button') String noButton,
      String link});
}

/// @nodoc
class _$RateReminderCopyWithImpl<$Res> implements $RateReminderCopyWith<$Res> {
  _$RateReminderCopyWithImpl(this._value, this._then);

  final RateReminder _value;
  // ignore: unused_field
  final $Res Function(RateReminder) _then;

  @override
  $Res call({
    Object title = freezed,
    Object body = freezed,
    Object yesButton = freezed,
    Object laterButton = freezed,
    Object noButton = freezed,
    Object link = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      yesButton: yesButton == freezed ? _value.yesButton : yesButton as String,
      laterButton:
          laterButton == freezed ? _value.laterButton : laterButton as String,
      noButton: noButton == freezed ? _value.noButton : noButton as String,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

/// @nodoc
abstract class _$RateReminderCopyWith<$Res>
    implements $RateReminderCopyWith<$Res> {
  factory _$RateReminderCopyWith(
          _RateReminder value, $Res Function(_RateReminder) then) =
      __$RateReminderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String body,
      @JsonKey(name: 'yes_button') String yesButton,
      @JsonKey(name: 'later_button') String laterButton,
      @JsonKey(name: 'no_button') String noButton,
      String link});
}

/// @nodoc
class __$RateReminderCopyWithImpl<$Res> extends _$RateReminderCopyWithImpl<$Res>
    implements _$RateReminderCopyWith<$Res> {
  __$RateReminderCopyWithImpl(
      _RateReminder _value, $Res Function(_RateReminder) _then)
      : super(_value, (v) => _then(v as _RateReminder));

  @override
  _RateReminder get _value => super._value as _RateReminder;

  @override
  $Res call({
    Object title = freezed,
    Object body = freezed,
    Object yesButton = freezed,
    Object laterButton = freezed,
    Object noButton = freezed,
    Object link = freezed,
  }) {
    return _then(_RateReminder(
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      yesButton: yesButton == freezed ? _value.yesButton : yesButton as String,
      laterButton:
          laterButton == freezed ? _value.laterButton : laterButton as String,
      noButton: noButton == freezed ? _value.noButton : noButton as String,
      link: link == freezed ? _value.link : link as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RateReminder implements _RateReminder {
  const _$_RateReminder(
      {this.title,
      this.body,
      @JsonKey(name: 'yes_button') this.yesButton,
      @JsonKey(name: 'later_button') this.laterButton,
      @JsonKey(name: 'no_button') this.noButton,
      this.link});

  factory _$_RateReminder.fromJson(Map<String, dynamic> json) =>
      _$_$_RateReminderFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  @JsonKey(name: 'yes_button')
  final String yesButton;
  @override
  @JsonKey(name: 'later_button')
  final String laterButton;
  @override
  @JsonKey(name: 'no_button')
  final String noButton;
  @override
  final String link;

  @override
  String toString() {
    return 'RateReminder(title: $title, body: $body, yesButton: $yesButton, laterButton: $laterButton, noButton: $noButton, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RateReminder &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.yesButton, yesButton) ||
                const DeepCollectionEquality()
                    .equals(other.yesButton, yesButton)) &&
            (identical(other.laterButton, laterButton) ||
                const DeepCollectionEquality()
                    .equals(other.laterButton, laterButton)) &&
            (identical(other.noButton, noButton) ||
                const DeepCollectionEquality()
                    .equals(other.noButton, noButton)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(yesButton) ^
      const DeepCollectionEquality().hash(laterButton) ^
      const DeepCollectionEquality().hash(noButton) ^
      const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  _$RateReminderCopyWith<_RateReminder> get copyWith =>
      __$RateReminderCopyWithImpl<_RateReminder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RateReminderToJson(this);
  }
}

abstract class _RateReminder implements RateReminder {
  const factory _RateReminder(
      {String title,
      String body,
      @JsonKey(name: 'yes_button') String yesButton,
      @JsonKey(name: 'later_button') String laterButton,
      @JsonKey(name: 'no_button') String noButton,
      String link}) = _$_RateReminder;

  factory _RateReminder.fromJson(Map<String, dynamic> json) =
      _$_RateReminder.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(name: 'yes_button')
  String get yesButton;
  @override
  @JsonKey(name: 'later_button')
  String get laterButton;
  @override
  @JsonKey(name: 'no_button')
  String get noButton;
  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$RateReminderCopyWith<_RateReminder> get copyWith;
}
