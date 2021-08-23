// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_localization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageLocalization _$MessageLocalizationFromJson(Map<String, dynamic> json) {
  return _MessageLocalization.fromJson(json);
}

/// @nodoc
class _$MessageLocalizationTearOff {
  const _$MessageLocalizationTearOff();

  _MessageLocalization call(
      {@JsonKey(name: 'ok_btn') String? okBtn,
      @JsonKey(name: 'url_btn') String? urlBtn}) {
    return _MessageLocalization(
      okBtn: okBtn,
      urlBtn: urlBtn,
    );
  }

  MessageLocalization fromJson(Map<String, Object> json) {
    return MessageLocalization.fromJson(json);
  }
}

/// @nodoc
const $MessageLocalization = _$MessageLocalizationTearOff();

/// @nodoc
mixin _$MessageLocalization {
  @JsonKey(name: 'ok_btn')
  String? get okBtn => throw _privateConstructorUsedError;
  @JsonKey(name: 'url_btn')
  String? get urlBtn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageLocalizationCopyWith<MessageLocalization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageLocalizationCopyWith<$Res> {
  factory $MessageLocalizationCopyWith(
          MessageLocalization value, $Res Function(MessageLocalization) then) =
      _$MessageLocalizationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ok_btn') String? okBtn,
      @JsonKey(name: 'url_btn') String? urlBtn});
}

/// @nodoc
class _$MessageLocalizationCopyWithImpl<$Res>
    implements $MessageLocalizationCopyWith<$Res> {
  _$MessageLocalizationCopyWithImpl(this._value, this._then);

  final MessageLocalization _value;
  // ignore: unused_field
  final $Res Function(MessageLocalization) _then;

  @override
  $Res call({
    Object? okBtn = freezed,
    Object? urlBtn = freezed,
  }) {
    return _then(_value.copyWith(
      okBtn: okBtn == freezed
          ? _value.okBtn
          : okBtn // ignore: cast_nullable_to_non_nullable
              as String?,
      urlBtn: urlBtn == freezed
          ? _value.urlBtn
          : urlBtn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MessageLocalizationCopyWith<$Res>
    implements $MessageLocalizationCopyWith<$Res> {
  factory _$MessageLocalizationCopyWith(_MessageLocalization value,
          $Res Function(_MessageLocalization) then) =
      __$MessageLocalizationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ok_btn') String? okBtn,
      @JsonKey(name: 'url_btn') String? urlBtn});
}

/// @nodoc
class __$MessageLocalizationCopyWithImpl<$Res>
    extends _$MessageLocalizationCopyWithImpl<$Res>
    implements _$MessageLocalizationCopyWith<$Res> {
  __$MessageLocalizationCopyWithImpl(
      _MessageLocalization _value, $Res Function(_MessageLocalization) _then)
      : super(_value, (v) => _then(v as _MessageLocalization));

  @override
  _MessageLocalization get _value => super._value as _MessageLocalization;

  @override
  $Res call({
    Object? okBtn = freezed,
    Object? urlBtn = freezed,
  }) {
    return _then(_MessageLocalization(
      okBtn: okBtn == freezed
          ? _value.okBtn
          : okBtn // ignore: cast_nullable_to_non_nullable
              as String?,
      urlBtn: urlBtn == freezed
          ? _value.urlBtn
          : urlBtn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageLocalization implements _MessageLocalization {
  const _$_MessageLocalization(
      {@JsonKey(name: 'ok_btn') this.okBtn,
      @JsonKey(name: 'url_btn') this.urlBtn});

  factory _$_MessageLocalization.fromJson(Map<String, dynamic> json) =>
      _$$_MessageLocalizationFromJson(json);

  @override
  @JsonKey(name: 'ok_btn')
  final String? okBtn;
  @override
  @JsonKey(name: 'url_btn')
  final String? urlBtn;

  @override
  String toString() {
    return 'MessageLocalization(okBtn: $okBtn, urlBtn: $urlBtn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageLocalization &&
            (identical(other.okBtn, okBtn) ||
                const DeepCollectionEquality().equals(other.okBtn, okBtn)) &&
            (identical(other.urlBtn, urlBtn) ||
                const DeepCollectionEquality().equals(other.urlBtn, urlBtn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(okBtn) ^
      const DeepCollectionEquality().hash(urlBtn);

  @JsonKey(ignore: true)
  @override
  _$MessageLocalizationCopyWith<_MessageLocalization> get copyWith =>
      __$MessageLocalizationCopyWithImpl<_MessageLocalization>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageLocalizationToJson(this);
  }
}

abstract class _MessageLocalization implements MessageLocalization {
  const factory _MessageLocalization(
      {@JsonKey(name: 'ok_btn') String? okBtn,
      @JsonKey(name: 'url_btn') String? urlBtn}) = _$_MessageLocalization;

  factory _MessageLocalization.fromJson(Map<String, dynamic> json) =
      _$_MessageLocalization.fromJson;

  @override
  @JsonKey(name: 'ok_btn')
  String? get okBtn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url_btn')
  String? get urlBtn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageLocalizationCopyWith<_MessageLocalization> get copyWith =>
      throw _privateConstructorUsedError;
}
