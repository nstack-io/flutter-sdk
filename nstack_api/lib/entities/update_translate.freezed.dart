// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'update_translate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UpdateTranslate _$UpdateTranslateFromJson(Map<String, dynamic> json) {
  return _UpdateTranslate.fromJson(json);
}

/// @nodoc
class _$UpdateTranslateTearOff {
  const _$UpdateTranslateTearOff();

// ignore: unused_element
  _UpdateTranslate call(
      {String title,
      String message,
      @JsonKey(name: 'positive_button') String positiveButton,
      @JsonKey(name: 'negative_button') String negativeButton}) {
    return _UpdateTranslate(
      title: title,
      message: message,
      positiveButton: positiveButton,
      negativeButton: negativeButton,
    );
  }

// ignore: unused_element
  UpdateTranslate fromJson(Map<String, Object> json) {
    return UpdateTranslate.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UpdateTranslate = _$UpdateTranslateTearOff();

/// @nodoc
mixin _$UpdateTranslate {
  String get title;
  String get message;
  @JsonKey(name: 'positive_button')
  String get positiveButton;
  @JsonKey(name: 'negative_button')
  String get negativeButton;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UpdateTranslateCopyWith<UpdateTranslate> get copyWith;
}

/// @nodoc
abstract class $UpdateTranslateCopyWith<$Res> {
  factory $UpdateTranslateCopyWith(
          UpdateTranslate value, $Res Function(UpdateTranslate) then) =
      _$UpdateTranslateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String message,
      @JsonKey(name: 'positive_button') String positiveButton,
      @JsonKey(name: 'negative_button') String negativeButton});
}

/// @nodoc
class _$UpdateTranslateCopyWithImpl<$Res>
    implements $UpdateTranslateCopyWith<$Res> {
  _$UpdateTranslateCopyWithImpl(this._value, this._then);

  final UpdateTranslate _value;
  // ignore: unused_field
  final $Res Function(UpdateTranslate) _then;

  @override
  $Res call({
    Object title = freezed,
    Object message = freezed,
    Object positiveButton = freezed,
    Object negativeButton = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      message: message == freezed ? _value.message : message as String,
      positiveButton: positiveButton == freezed
          ? _value.positiveButton
          : positiveButton as String,
      negativeButton: negativeButton == freezed
          ? _value.negativeButton
          : negativeButton as String,
    ));
  }
}

/// @nodoc
abstract class _$UpdateTranslateCopyWith<$Res>
    implements $UpdateTranslateCopyWith<$Res> {
  factory _$UpdateTranslateCopyWith(
          _UpdateTranslate value, $Res Function(_UpdateTranslate) then) =
      __$UpdateTranslateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String message,
      @JsonKey(name: 'positive_button') String positiveButton,
      @JsonKey(name: 'negative_button') String negativeButton});
}

/// @nodoc
class __$UpdateTranslateCopyWithImpl<$Res>
    extends _$UpdateTranslateCopyWithImpl<$Res>
    implements _$UpdateTranslateCopyWith<$Res> {
  __$UpdateTranslateCopyWithImpl(
      _UpdateTranslate _value, $Res Function(_UpdateTranslate) _then)
      : super(_value, (v) => _then(v as _UpdateTranslate));

  @override
  _UpdateTranslate get _value => super._value as _UpdateTranslate;

  @override
  $Res call({
    Object title = freezed,
    Object message = freezed,
    Object positiveButton = freezed,
    Object negativeButton = freezed,
  }) {
    return _then(_UpdateTranslate(
      title: title == freezed ? _value.title : title as String,
      message: message == freezed ? _value.message : message as String,
      positiveButton: positiveButton == freezed
          ? _value.positiveButton
          : positiveButton as String,
      negativeButton: negativeButton == freezed
          ? _value.negativeButton
          : negativeButton as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UpdateTranslate implements _UpdateTranslate {
  const _$_UpdateTranslate(
      {this.title,
      this.message,
      @JsonKey(name: 'positive_button') this.positiveButton,
      @JsonKey(name: 'negative_button') this.negativeButton});

  factory _$_UpdateTranslate.fromJson(Map<String, dynamic> json) =>
      _$_$_UpdateTranslateFromJson(json);

  @override
  final String title;
  @override
  final String message;
  @override
  @JsonKey(name: 'positive_button')
  final String positiveButton;
  @override
  @JsonKey(name: 'negative_button')
  final String negativeButton;

  @override
  String toString() {
    return 'UpdateTranslate(title: $title, message: $message, positiveButton: $positiveButton, negativeButton: $negativeButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateTranslate &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.positiveButton, positiveButton) ||
                const DeepCollectionEquality()
                    .equals(other.positiveButton, positiveButton)) &&
            (identical(other.negativeButton, negativeButton) ||
                const DeepCollectionEquality()
                    .equals(other.negativeButton, negativeButton)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(positiveButton) ^
      const DeepCollectionEquality().hash(negativeButton);

  @JsonKey(ignore: true)
  @override
  _$UpdateTranslateCopyWith<_UpdateTranslate> get copyWith =>
      __$UpdateTranslateCopyWithImpl<_UpdateTranslate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UpdateTranslateToJson(this);
  }
}

abstract class _UpdateTranslate implements UpdateTranslate {
  const factory _UpdateTranslate(
          {String title,
          String message,
          @JsonKey(name: 'positive_button') String positiveButton,
          @JsonKey(name: 'negative_button') String negativeButton}) =
      _$_UpdateTranslate;

  factory _UpdateTranslate.fromJson(Map<String, dynamic> json) =
      _$_UpdateTranslate.fromJson;

  @override
  String get title;
  @override
  String get message;
  @override
  @JsonKey(name: 'positive_button')
  String get positiveButton;
  @override
  @JsonKey(name: 'negative_button')
  String get negativeButton;
  @override
  @JsonKey(ignore: true)
  _$UpdateTranslateCopyWith<_UpdateTranslate> get copyWith;
}
