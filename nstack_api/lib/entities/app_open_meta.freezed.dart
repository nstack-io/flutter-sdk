// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_open_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppOpenMeta _$AppOpenMetaFromJson(Map<String, dynamic> json) {
  return _AppOpenMeta.fromJson(json);
}

/// @nodoc
class _$AppOpenMetaTearOff {
  const _$AppOpenMetaTearOff();

  _AppOpenMeta call(
      {@JsonKey(name: 'accept_language') String? acceptLanguage}) {
    return _AppOpenMeta(
      acceptLanguage: acceptLanguage,
    );
  }

  AppOpenMeta fromJson(Map<String, Object> json) {
    return AppOpenMeta.fromJson(json);
  }
}

/// @nodoc
const $AppOpenMeta = _$AppOpenMetaTearOff();

/// @nodoc
mixin _$AppOpenMeta {
  @JsonKey(name: 'accept_language')
  String? get acceptLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppOpenMetaCopyWith<AppOpenMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOpenMetaCopyWith<$Res> {
  factory $AppOpenMetaCopyWith(
          AppOpenMeta value, $Res Function(AppOpenMeta) then) =
      _$AppOpenMetaCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'accept_language') String? acceptLanguage});
}

/// @nodoc
class _$AppOpenMetaCopyWithImpl<$Res> implements $AppOpenMetaCopyWith<$Res> {
  _$AppOpenMetaCopyWithImpl(this._value, this._then);

  final AppOpenMeta _value;
  // ignore: unused_field
  final $Res Function(AppOpenMeta) _then;

  @override
  $Res call({
    Object? acceptLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      acceptLanguage: acceptLanguage == freezed
          ? _value.acceptLanguage
          : acceptLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AppOpenMetaCopyWith<$Res>
    implements $AppOpenMetaCopyWith<$Res> {
  factory _$AppOpenMetaCopyWith(
          _AppOpenMeta value, $Res Function(_AppOpenMeta) then) =
      __$AppOpenMetaCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'accept_language') String? acceptLanguage});
}

/// @nodoc
class __$AppOpenMetaCopyWithImpl<$Res> extends _$AppOpenMetaCopyWithImpl<$Res>
    implements _$AppOpenMetaCopyWith<$Res> {
  __$AppOpenMetaCopyWithImpl(
      _AppOpenMeta _value, $Res Function(_AppOpenMeta) _then)
      : super(_value, (v) => _then(v as _AppOpenMeta));

  @override
  _AppOpenMeta get _value => super._value as _AppOpenMeta;

  @override
  $Res call({
    Object? acceptLanguage = freezed,
  }) {
    return _then(_AppOpenMeta(
      acceptLanguage: acceptLanguage == freezed
          ? _value.acceptLanguage
          : acceptLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppOpenMeta implements _AppOpenMeta {
  const _$_AppOpenMeta({@JsonKey(name: 'accept_language') this.acceptLanguage});

  factory _$_AppOpenMeta.fromJson(Map<String, dynamic> json) =>
      _$$_AppOpenMetaFromJson(json);

  @override
  @JsonKey(name: 'accept_language')
  final String? acceptLanguage;

  @override
  String toString() {
    return 'AppOpenMeta(acceptLanguage: $acceptLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppOpenMeta &&
            (identical(other.acceptLanguage, acceptLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.acceptLanguage, acceptLanguage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(acceptLanguage);

  @JsonKey(ignore: true)
  @override
  _$AppOpenMetaCopyWith<_AppOpenMeta> get copyWith =>
      __$AppOpenMetaCopyWithImpl<_AppOpenMeta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppOpenMetaToJson(this);
  }
}

abstract class _AppOpenMeta implements AppOpenMeta {
  const factory _AppOpenMeta(
          {@JsonKey(name: 'accept_language') String? acceptLanguage}) =
      _$_AppOpenMeta;

  factory _AppOpenMeta.fromJson(Map<String, dynamic> json) =
      _$_AppOpenMeta.fromJson;

  @override
  @JsonKey(name: 'accept_language')
  String? get acceptLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppOpenMetaCopyWith<_AppOpenMeta> get copyWith =>
      throw _privateConstructorUsedError;
}
