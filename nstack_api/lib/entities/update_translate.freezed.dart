// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_translate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateTranslate _$UpdateTranslateFromJson(Map<String, dynamic> json) {
  return _UpdateTranslate.fromJson(json);
}

/// @nodoc
class _$UpdateTranslateTearOff {
  const _$UpdateTranslateTearOff();

  _UpdateTranslate call(
      {String? title,
      String? message,
      @JsonKey(name: 'positive_button') String? positiveButton,
      @JsonKey(name: 'negative_button') String? negativeButton}) {
    return _UpdateTranslate(
      title: title,
      message: message,
      positiveButton: positiveButton,
      negativeButton: negativeButton,
    );
  }

  UpdateTranslate fromJson(Map<String, Object> json) {
    return UpdateTranslate.fromJson(json);
  }
}

/// @nodoc
const $UpdateTranslate = _$UpdateTranslateTearOff();

/// @nodoc
mixin _$UpdateTranslate {
  String? get title => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'positive_button')
  String? get positiveButton => throw _privateConstructorUsedError;
  @JsonKey(name: 'negative_button')
  String? get negativeButton => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTranslateCopyWith<UpdateTranslate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTranslateCopyWith<$Res> {
  factory $UpdateTranslateCopyWith(
          UpdateTranslate value, $Res Function(UpdateTranslate) then) =
      _$UpdateTranslateCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? message,
      @JsonKey(name: 'positive_button') String? positiveButton,
      @JsonKey(name: 'negative_button') String? negativeButton});
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
    Object? title = freezed,
    Object? message = freezed,
    Object? positiveButton = freezed,
    Object? negativeButton = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      positiveButton: positiveButton == freezed
          ? _value.positiveButton
          : positiveButton // ignore: cast_nullable_to_non_nullable
              as String?,
      negativeButton: negativeButton == freezed
          ? _value.negativeButton
          : negativeButton // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? title,
      String? message,
      @JsonKey(name: 'positive_button') String? positiveButton,
      @JsonKey(name: 'negative_button') String? negativeButton});
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
    Object? title = freezed,
    Object? message = freezed,
    Object? positiveButton = freezed,
    Object? negativeButton = freezed,
  }) {
    return _then(_UpdateTranslate(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      positiveButton: positiveButton == freezed
          ? _value.positiveButton
          : positiveButton // ignore: cast_nullable_to_non_nullable
              as String?,
      negativeButton: negativeButton == freezed
          ? _value.negativeButton
          : negativeButton // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateTranslate implements _UpdateTranslate {
  const _$_UpdateTranslate(
      {this.title,
      this.message,
      @JsonKey(name: 'positive_button') this.positiveButton,
      @JsonKey(name: 'negative_button') this.negativeButton});

  factory _$_UpdateTranslate.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateTranslateFromJson(json);

  @override
  final String? title;
  @override
  final String? message;
  @override
  @JsonKey(name: 'positive_button')
  final String? positiveButton;
  @override
  @JsonKey(name: 'negative_button')
  final String? negativeButton;

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
    return _$$_UpdateTranslateToJson(this);
  }
}

abstract class _UpdateTranslate implements UpdateTranslate {
  const factory _UpdateTranslate(
          {String? title,
          String? message,
          @JsonKey(name: 'positive_button') String? positiveButton,
          @JsonKey(name: 'negative_button') String? negativeButton}) =
      _$_UpdateTranslate;

  factory _UpdateTranslate.fromJson(Map<String, dynamic> json) =
      _$_UpdateTranslate.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'positive_button')
  String? get positiveButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'negative_button')
  String? get negativeButton => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateTranslateCopyWith<_UpdateTranslate> get copyWith =>
      throw _privateConstructorUsedError;
}
