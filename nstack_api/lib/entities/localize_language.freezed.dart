// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'localize_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocalizeLanguage _$LocalizeLanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
class _$LocalizeLanguageTearOff {
  const _$LocalizeLanguageTearOff();

// ignore: unused_element
  _Language call(
      {int id,
      String name,
      String locale,
      String direction,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'is_best_fit') bool isBestFit}) {
    return _Language(
      id: id,
      name: name,
      locale: locale,
      direction: direction,
      isDefault: isDefault,
      isBestFit: isBestFit,
    );
  }

// ignore: unused_element
  LocalizeLanguage fromJson(Map<String, Object> json) {
    return LocalizeLanguage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalizeLanguage = _$LocalizeLanguageTearOff();

/// @nodoc
mixin _$LocalizeLanguage {
  int get id;
  String get name;
  String get locale;
  String get direction;
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @JsonKey(name: 'is_best_fit')
  bool get isBestFit;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocalizeLanguageCopyWith<LocalizeLanguage> get copyWith;
}

/// @nodoc
abstract class $LocalizeLanguageCopyWith<$Res> {
  factory $LocalizeLanguageCopyWith(
          LocalizeLanguage value, $Res Function(LocalizeLanguage) then) =
      _$LocalizeLanguageCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String locale,
      String direction,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'is_best_fit') bool isBestFit});
}

/// @nodoc
class _$LocalizeLanguageCopyWithImpl<$Res>
    implements $LocalizeLanguageCopyWith<$Res> {
  _$LocalizeLanguageCopyWithImpl(this._value, this._then);

  final LocalizeLanguage _value;
  // ignore: unused_field
  final $Res Function(LocalizeLanguage) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object locale = freezed,
    Object direction = freezed,
    Object isDefault = freezed,
    Object isBestFit = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      locale: locale == freezed ? _value.locale : locale as String,
      direction: direction == freezed ? _value.direction : direction as String,
      isDefault: isDefault == freezed ? _value.isDefault : isDefault as bool,
      isBestFit: isBestFit == freezed ? _value.isBestFit : isBestFit as bool,
    ));
  }
}

/// @nodoc
abstract class _$LanguageCopyWith<$Res>
    implements $LocalizeLanguageCopyWith<$Res> {
  factory _$LanguageCopyWith(_Language value, $Res Function(_Language) then) =
      __$LanguageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String locale,
      String direction,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'is_best_fit') bool isBestFit});
}

/// @nodoc
class __$LanguageCopyWithImpl<$Res> extends _$LocalizeLanguageCopyWithImpl<$Res>
    implements _$LanguageCopyWith<$Res> {
  __$LanguageCopyWithImpl(_Language _value, $Res Function(_Language) _then)
      : super(_value, (v) => _then(v as _Language));

  @override
  _Language get _value => super._value as _Language;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object locale = freezed,
    Object direction = freezed,
    Object isDefault = freezed,
    Object isBestFit = freezed,
  }) {
    return _then(_Language(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      locale: locale == freezed ? _value.locale : locale as String,
      direction: direction == freezed ? _value.direction : direction as String,
      isDefault: isDefault == freezed ? _value.isDefault : isDefault as bool,
      isBestFit: isBestFit == freezed ? _value.isBestFit : isBestFit as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Language implements _Language {
  const _$_Language(
      {this.id,
      this.name,
      this.locale,
      this.direction,
      @JsonKey(name: 'is_default') this.isDefault,
      @JsonKey(name: 'is_best_fit') this.isBestFit});

  factory _$_Language.fromJson(Map<String, dynamic> json) =>
      _$_$_LanguageFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String locale;
  @override
  final String direction;
  @override
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @override
  @JsonKey(name: 'is_best_fit')
  final bool isBestFit;

  @override
  String toString() {
    return 'LocalizeLanguage(id: $id, name: $name, locale: $locale, direction: $direction, isDefault: $isDefault, isBestFit: $isBestFit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Language &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.direction, direction) ||
                const DeepCollectionEquality()
                    .equals(other.direction, direction)) &&
            (identical(other.isDefault, isDefault) ||
                const DeepCollectionEquality()
                    .equals(other.isDefault, isDefault)) &&
            (identical(other.isBestFit, isBestFit) ||
                const DeepCollectionEquality()
                    .equals(other.isBestFit, isBestFit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(direction) ^
      const DeepCollectionEquality().hash(isDefault) ^
      const DeepCollectionEquality().hash(isBestFit);

  @JsonKey(ignore: true)
  @override
  _$LanguageCopyWith<_Language> get copyWith =>
      __$LanguageCopyWithImpl<_Language>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LanguageToJson(this);
  }
}

abstract class _Language implements LocalizeLanguage {
  const factory _Language(
      {int id,
      String name,
      String locale,
      String direction,
      @JsonKey(name: 'is_default') bool isDefault,
      @JsonKey(name: 'is_best_fit') bool isBestFit}) = _$_Language;

  factory _Language.fromJson(Map<String, dynamic> json) = _$_Language.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get locale;
  @override
  String get direction;
  @override
  @JsonKey(name: 'is_default')
  bool get isDefault;
  @override
  @JsonKey(name: 'is_best_fit')
  bool get isBestFit;
  @override
  @JsonKey(ignore: true)
  _$LanguageCopyWith<_Language> get copyWith;
}
