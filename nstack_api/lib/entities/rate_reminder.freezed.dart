// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rate_reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RateReminder _$RateReminderFromJson(Map<String, dynamic> json) {
  return _RateReminder.fromJson(json);
}

/// @nodoc
class _$RateReminderTearOff {
  const _$RateReminderTearOff();

  _RateReminder call(
      {String? title,
      String? body,
      @JsonKey(name: 'yes_button') String? yesButton,
      @JsonKey(name: 'later_button') String? laterButton,
      @JsonKey(name: 'no_button') String? noButton,
      String? link}) {
    return _RateReminder(
      title: title,
      body: body,
      yesButton: yesButton,
      laterButton: laterButton,
      noButton: noButton,
      link: link,
    );
  }

  RateReminder fromJson(Map<String, Object> json) {
    return RateReminder.fromJson(json);
  }
}

/// @nodoc
const $RateReminder = _$RateReminderTearOff();

/// @nodoc
mixin _$RateReminder {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'yes_button')
  String? get yesButton => throw _privateConstructorUsedError;
  @JsonKey(name: 'later_button')
  String? get laterButton => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_button')
  String? get noButton => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateReminderCopyWith<RateReminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateReminderCopyWith<$Res> {
  factory $RateReminderCopyWith(
          RateReminder value, $Res Function(RateReminder) then) =
      _$RateReminderCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? body,
      @JsonKey(name: 'yes_button') String? yesButton,
      @JsonKey(name: 'later_button') String? laterButton,
      @JsonKey(name: 'no_button') String? noButton,
      String? link});
}

/// @nodoc
class _$RateReminderCopyWithImpl<$Res> implements $RateReminderCopyWith<$Res> {
  _$RateReminderCopyWithImpl(this._value, this._then);

  final RateReminder _value;
  // ignore: unused_field
  final $Res Function(RateReminder) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? yesButton = freezed,
    Object? laterButton = freezed,
    Object? noButton = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      yesButton: yesButton == freezed
          ? _value.yesButton
          : yesButton // ignore: cast_nullable_to_non_nullable
              as String?,
      laterButton: laterButton == freezed
          ? _value.laterButton
          : laterButton // ignore: cast_nullable_to_non_nullable
              as String?,
      noButton: noButton == freezed
          ? _value.noButton
          : noButton // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? title,
      String? body,
      @JsonKey(name: 'yes_button') String? yesButton,
      @JsonKey(name: 'later_button') String? laterButton,
      @JsonKey(name: 'no_button') String? noButton,
      String? link});
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
    Object? title = freezed,
    Object? body = freezed,
    Object? yesButton = freezed,
    Object? laterButton = freezed,
    Object? noButton = freezed,
    Object? link = freezed,
  }) {
    return _then(_RateReminder(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      yesButton: yesButton == freezed
          ? _value.yesButton
          : yesButton // ignore: cast_nullable_to_non_nullable
              as String?,
      laterButton: laterButton == freezed
          ? _value.laterButton
          : laterButton // ignore: cast_nullable_to_non_nullable
              as String?,
      noButton: noButton == freezed
          ? _value.noButton
          : noButton // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RateReminder implements _RateReminder {
  const _$_RateReminder(
      {this.title,
      this.body,
      @JsonKey(name: 'yes_button') this.yesButton,
      @JsonKey(name: 'later_button') this.laterButton,
      @JsonKey(name: 'no_button') this.noButton,
      this.link});

  factory _$_RateReminder.fromJson(Map<String, dynamic> json) =>
      _$$_RateReminderFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  @override
  @JsonKey(name: 'yes_button')
  final String? yesButton;
  @override
  @JsonKey(name: 'later_button')
  final String? laterButton;
  @override
  @JsonKey(name: 'no_button')
  final String? noButton;
  @override
  final String? link;

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
    return _$$_RateReminderToJson(this);
  }
}

abstract class _RateReminder implements RateReminder {
  const factory _RateReminder(
      {String? title,
      String? body,
      @JsonKey(name: 'yes_button') String? yesButton,
      @JsonKey(name: 'later_button') String? laterButton,
      @JsonKey(name: 'no_button') String? noButton,
      String? link}) = _$_RateReminder;

  factory _RateReminder.fromJson(Map<String, dynamic> json) =
      _$_RateReminder.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get body => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'yes_button')
  String? get yesButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'later_button')
  String? get laterButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'no_button')
  String? get noButton => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RateReminderCopyWith<_RateReminder> get copyWith =>
      throw _privateConstructorUsedError;
}
