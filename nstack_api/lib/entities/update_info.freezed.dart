// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateInfo _$UpdateInfoFromJson(Map<String, dynamic> json) {
  return _UpdateInfo.fromJson(json);
}

/// @nodoc
class _$UpdateInfoTearOff {
  const _$UpdateInfoTearOff();

  _UpdateInfo call(
      {String? state,
      @JsonKey(name: 'last_id') int? lastId,
      String? version,
      String? link,
      UpdateTranslate? translate,
      @JsonKey(name: 'file_url') String? fileUrl}) {
    return _UpdateInfo(
      state: state,
      lastId: lastId,
      version: version,
      link: link,
      translate: translate,
      fileUrl: fileUrl,
    );
  }

  UpdateInfo fromJson(Map<String, Object> json) {
    return UpdateInfo.fromJson(json);
  }
}

/// @nodoc
const $UpdateInfo = _$UpdateInfoTearOff();

/// @nodoc
mixin _$UpdateInfo {
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_id')
  int? get lastId => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  UpdateTranslate? get translate => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  String? get fileUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateInfoCopyWith<UpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateInfoCopyWith<$Res> {
  factory $UpdateInfoCopyWith(
          UpdateInfo value, $Res Function(UpdateInfo) then) =
      _$UpdateInfoCopyWithImpl<$Res>;
  $Res call(
      {String? state,
      @JsonKey(name: 'last_id') int? lastId,
      String? version,
      String? link,
      UpdateTranslate? translate,
      @JsonKey(name: 'file_url') String? fileUrl});

  $UpdateTranslateCopyWith<$Res>? get translate;
}

/// @nodoc
class _$UpdateInfoCopyWithImpl<$Res> implements $UpdateInfoCopyWith<$Res> {
  _$UpdateInfoCopyWithImpl(this._value, this._then);

  final UpdateInfo _value;
  // ignore: unused_field
  final $Res Function(UpdateInfo) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? lastId = freezed,
    Object? version = freezed,
    Object? link = freezed,
    Object? translate = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      lastId: lastId == freezed
          ? _value.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as int?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      translate: translate == freezed
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as UpdateTranslate?,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UpdateTranslateCopyWith<$Res>? get translate {
    if (_value.translate == null) {
      return null;
    }

    return $UpdateTranslateCopyWith<$Res>(_value.translate!, (value) {
      return _then(_value.copyWith(translate: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateInfoCopyWith<$Res> implements $UpdateInfoCopyWith<$Res> {
  factory _$UpdateInfoCopyWith(
          _UpdateInfo value, $Res Function(_UpdateInfo) then) =
      __$UpdateInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? state,
      @JsonKey(name: 'last_id') int? lastId,
      String? version,
      String? link,
      UpdateTranslate? translate,
      @JsonKey(name: 'file_url') String? fileUrl});

  @override
  $UpdateTranslateCopyWith<$Res>? get translate;
}

/// @nodoc
class __$UpdateInfoCopyWithImpl<$Res> extends _$UpdateInfoCopyWithImpl<$Res>
    implements _$UpdateInfoCopyWith<$Res> {
  __$UpdateInfoCopyWithImpl(
      _UpdateInfo _value, $Res Function(_UpdateInfo) _then)
      : super(_value, (v) => _then(v as _UpdateInfo));

  @override
  _UpdateInfo get _value => super._value as _UpdateInfo;

  @override
  $Res call({
    Object? state = freezed,
    Object? lastId = freezed,
    Object? version = freezed,
    Object? link = freezed,
    Object? translate = freezed,
    Object? fileUrl = freezed,
  }) {
    return _then(_UpdateInfo(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      lastId: lastId == freezed
          ? _value.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as int?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      translate: translate == freezed
          ? _value.translate
          : translate // ignore: cast_nullable_to_non_nullable
              as UpdateTranslate?,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateInfo implements _UpdateInfo {
  const _$_UpdateInfo(
      {this.state,
      @JsonKey(name: 'last_id') this.lastId,
      this.version,
      this.link,
      this.translate,
      @JsonKey(name: 'file_url') this.fileUrl});

  factory _$_UpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateInfoFromJson(json);

  @override
  final String? state;
  @override
  @JsonKey(name: 'last_id')
  final int? lastId;
  @override
  final String? version;
  @override
  final String? link;
  @override
  final UpdateTranslate? translate;
  @override
  @JsonKey(name: 'file_url')
  final String? fileUrl;

  @override
  String toString() {
    return 'UpdateInfo(state: $state, lastId: $lastId, version: $version, link: $link, translate: $translate, fileUrl: $fileUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateInfo &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.lastId, lastId) ||
                const DeepCollectionEquality().equals(other.lastId, lastId)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.translate, translate) ||
                const DeepCollectionEquality()
                    .equals(other.translate, translate)) &&
            (identical(other.fileUrl, fileUrl) ||
                const DeepCollectionEquality().equals(other.fileUrl, fileUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(lastId) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(translate) ^
      const DeepCollectionEquality().hash(fileUrl);

  @JsonKey(ignore: true)
  @override
  _$UpdateInfoCopyWith<_UpdateInfo> get copyWith =>
      __$UpdateInfoCopyWithImpl<_UpdateInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateInfoToJson(this);
  }
}

abstract class _UpdateInfo implements UpdateInfo {
  const factory _UpdateInfo(
      {String? state,
      @JsonKey(name: 'last_id') int? lastId,
      String? version,
      String? link,
      UpdateTranslate? translate,
      @JsonKey(name: 'file_url') String? fileUrl}) = _$_UpdateInfo;

  factory _UpdateInfo.fromJson(Map<String, dynamic> json) =
      _$_UpdateInfo.fromJson;

  @override
  String? get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_id')
  int? get lastId => throw _privateConstructorUsedError;
  @override
  String? get version => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  UpdateTranslate? get translate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_url')
  String? get fileUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateInfoCopyWith<_UpdateInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
