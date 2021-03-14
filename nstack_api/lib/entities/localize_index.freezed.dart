// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'localize_index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocalizeIndex _$LocalizeIndexFromJson(Map<String, dynamic> json) {
  return _LocalizeIndex.fromJson(json);
}

/// @nodoc
class _$LocalizeIndexTearOff {
  const _$LocalizeIndexTearOff();

// ignore: unused_element
  _LocalizeIndex call(
      {int id,
      String url,
      @JsonKey(name: 'last_updated_at') DateTime lastUpdatedAt,
      @JsonKey(name: 'should_update') bool shouldUpdate,
      LocalizeLanguage language}) {
    return _LocalizeIndex(
      id: id,
      url: url,
      lastUpdatedAt: lastUpdatedAt,
      shouldUpdate: shouldUpdate,
      language: language,
    );
  }

// ignore: unused_element
  LocalizeIndex fromJson(Map<String, Object> json) {
    return LocalizeIndex.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalizeIndex = _$LocalizeIndexTearOff();

/// @nodoc
mixin _$LocalizeIndex {
  int get id;
  String get url;
  @JsonKey(name: 'last_updated_at')
  DateTime get lastUpdatedAt;
  @JsonKey(name: 'should_update')
  bool get shouldUpdate;
  LocalizeLanguage get language;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocalizeIndexCopyWith<LocalizeIndex> get copyWith;
}

/// @nodoc
abstract class $LocalizeIndexCopyWith<$Res> {
  factory $LocalizeIndexCopyWith(
          LocalizeIndex value, $Res Function(LocalizeIndex) then) =
      _$LocalizeIndexCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String url,
      @JsonKey(name: 'last_updated_at') DateTime lastUpdatedAt,
      @JsonKey(name: 'should_update') bool shouldUpdate,
      LocalizeLanguage language});

  $LocalizeLanguageCopyWith<$Res> get language;
}

/// @nodoc
class _$LocalizeIndexCopyWithImpl<$Res>
    implements $LocalizeIndexCopyWith<$Res> {
  _$LocalizeIndexCopyWithImpl(this._value, this._then);

  final LocalizeIndex _value;
  // ignore: unused_field
  final $Res Function(LocalizeIndex) _then;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object lastUpdatedAt = freezed,
    Object shouldUpdate = freezed,
    Object language = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      url: url == freezed ? _value.url : url as String,
      lastUpdatedAt: lastUpdatedAt == freezed
          ? _value.lastUpdatedAt
          : lastUpdatedAt as DateTime,
      shouldUpdate:
          shouldUpdate == freezed ? _value.shouldUpdate : shouldUpdate as bool,
      language:
          language == freezed ? _value.language : language as LocalizeLanguage,
    ));
  }

  @override
  $LocalizeLanguageCopyWith<$Res> get language {
    if (_value.language == null) {
      return null;
    }
    return $LocalizeLanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

/// @nodoc
abstract class _$LocalizeIndexCopyWith<$Res>
    implements $LocalizeIndexCopyWith<$Res> {
  factory _$LocalizeIndexCopyWith(
          _LocalizeIndex value, $Res Function(_LocalizeIndex) then) =
      __$LocalizeIndexCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String url,
      @JsonKey(name: 'last_updated_at') DateTime lastUpdatedAt,
      @JsonKey(name: 'should_update') bool shouldUpdate,
      LocalizeLanguage language});

  @override
  $LocalizeLanguageCopyWith<$Res> get language;
}

/// @nodoc
class __$LocalizeIndexCopyWithImpl<$Res>
    extends _$LocalizeIndexCopyWithImpl<$Res>
    implements _$LocalizeIndexCopyWith<$Res> {
  __$LocalizeIndexCopyWithImpl(
      _LocalizeIndex _value, $Res Function(_LocalizeIndex) _then)
      : super(_value, (v) => _then(v as _LocalizeIndex));

  @override
  _LocalizeIndex get _value => super._value as _LocalizeIndex;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object lastUpdatedAt = freezed,
    Object shouldUpdate = freezed,
    Object language = freezed,
  }) {
    return _then(_LocalizeIndex(
      id: id == freezed ? _value.id : id as int,
      url: url == freezed ? _value.url : url as String,
      lastUpdatedAt: lastUpdatedAt == freezed
          ? _value.lastUpdatedAt
          : lastUpdatedAt as DateTime,
      shouldUpdate:
          shouldUpdate == freezed ? _value.shouldUpdate : shouldUpdate as bool,
      language:
          language == freezed ? _value.language : language as LocalizeLanguage,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocalizeIndex implements _LocalizeIndex {
  const _$_LocalizeIndex(
      {this.id,
      this.url,
      @JsonKey(name: 'last_updated_at') this.lastUpdatedAt,
      @JsonKey(name: 'should_update') this.shouldUpdate,
      this.language});

  factory _$_LocalizeIndex.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalizeIndexFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  @JsonKey(name: 'last_updated_at')
  final DateTime lastUpdatedAt;
  @override
  @JsonKey(name: 'should_update')
  final bool shouldUpdate;
  @override
  final LocalizeLanguage language;

  @override
  String toString() {
    return 'LocalizeIndex(id: $id, url: $url, lastUpdatedAt: $lastUpdatedAt, shouldUpdate: $shouldUpdate, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalizeIndex &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastUpdatedAt, lastUpdatedAt)) &&
            (identical(other.shouldUpdate, shouldUpdate) ||
                const DeepCollectionEquality()
                    .equals(other.shouldUpdate, shouldUpdate)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(lastUpdatedAt) ^
      const DeepCollectionEquality().hash(shouldUpdate) ^
      const DeepCollectionEquality().hash(language);

  @JsonKey(ignore: true)
  @override
  _$LocalizeIndexCopyWith<_LocalizeIndex> get copyWith =>
      __$LocalizeIndexCopyWithImpl<_LocalizeIndex>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalizeIndexToJson(this);
  }
}

abstract class _LocalizeIndex implements LocalizeIndex {
  const factory _LocalizeIndex(
      {int id,
      String url,
      @JsonKey(name: 'last_updated_at') DateTime lastUpdatedAt,
      @JsonKey(name: 'should_update') bool shouldUpdate,
      LocalizeLanguage language}) = _$_LocalizeIndex;

  factory _LocalizeIndex.fromJson(Map<String, dynamic> json) =
      _$_LocalizeIndex.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  @JsonKey(name: 'last_updated_at')
  DateTime get lastUpdatedAt;
  @override
  @JsonKey(name: 'should_update')
  bool get shouldUpdate;
  @override
  LocalizeLanguage get language;
  @override
  @JsonKey(ignore: true)
  _$LocalizeIndexCopyWith<_LocalizeIndex> get copyWith;
}
