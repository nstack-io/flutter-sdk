// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppUpdate _$AppUpdateFromJson(Map<String, dynamic> json) {
  return _AppUpdate.fromJson(json);
}

/// @nodoc
class _$AppUpdateTearOff {
  const _$AppUpdateTearOff();

// ignore: unused_element
  _AppUpdate call(
      {@JsonKey(name: 'newer_version') UpdateInfo newerVersion,
      @JsonKey(name: 'new_in_version') UpdateInfo newInVersion}) {
    return _AppUpdate(
      newerVersion: newerVersion,
      newInVersion: newInVersion,
    );
  }

// ignore: unused_element
  AppUpdate fromJson(Map<String, Object> json) {
    return AppUpdate.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppUpdate = _$AppUpdateTearOff();

/// @nodoc
mixin _$AppUpdate {
  @JsonKey(name: 'newer_version')
  UpdateInfo get newerVersion;
  @JsonKey(name: 'new_in_version')
  UpdateInfo get newInVersion;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AppUpdateCopyWith<AppUpdate> get copyWith;
}

/// @nodoc
abstract class $AppUpdateCopyWith<$Res> {
  factory $AppUpdateCopyWith(AppUpdate value, $Res Function(AppUpdate) then) =
      _$AppUpdateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'newer_version') UpdateInfo newerVersion,
      @JsonKey(name: 'new_in_version') UpdateInfo newInVersion});

  $UpdateInfoCopyWith<$Res> get newerVersion;
  $UpdateInfoCopyWith<$Res> get newInVersion;
}

/// @nodoc
class _$AppUpdateCopyWithImpl<$Res> implements $AppUpdateCopyWith<$Res> {
  _$AppUpdateCopyWithImpl(this._value, this._then);

  final AppUpdate _value;
  // ignore: unused_field
  final $Res Function(AppUpdate) _then;

  @override
  $Res call({
    Object newerVersion = freezed,
    Object newInVersion = freezed,
  }) {
    return _then(_value.copyWith(
      newerVersion: newerVersion == freezed
          ? _value.newerVersion
          : newerVersion as UpdateInfo,
      newInVersion: newInVersion == freezed
          ? _value.newInVersion
          : newInVersion as UpdateInfo,
    ));
  }

  @override
  $UpdateInfoCopyWith<$Res> get newerVersion {
    if (_value.newerVersion == null) {
      return null;
    }
    return $UpdateInfoCopyWith<$Res>(_value.newerVersion, (value) {
      return _then(_value.copyWith(newerVersion: value));
    });
  }

  @override
  $UpdateInfoCopyWith<$Res> get newInVersion {
    if (_value.newInVersion == null) {
      return null;
    }
    return $UpdateInfoCopyWith<$Res>(_value.newInVersion, (value) {
      return _then(_value.copyWith(newInVersion: value));
    });
  }
}

/// @nodoc
abstract class _$AppUpdateCopyWith<$Res> implements $AppUpdateCopyWith<$Res> {
  factory _$AppUpdateCopyWith(
          _AppUpdate value, $Res Function(_AppUpdate) then) =
      __$AppUpdateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'newer_version') UpdateInfo newerVersion,
      @JsonKey(name: 'new_in_version') UpdateInfo newInVersion});

  @override
  $UpdateInfoCopyWith<$Res> get newerVersion;
  @override
  $UpdateInfoCopyWith<$Res> get newInVersion;
}

/// @nodoc
class __$AppUpdateCopyWithImpl<$Res> extends _$AppUpdateCopyWithImpl<$Res>
    implements _$AppUpdateCopyWith<$Res> {
  __$AppUpdateCopyWithImpl(_AppUpdate _value, $Res Function(_AppUpdate) _then)
      : super(_value, (v) => _then(v as _AppUpdate));

  @override
  _AppUpdate get _value => super._value as _AppUpdate;

  @override
  $Res call({
    Object newerVersion = freezed,
    Object newInVersion = freezed,
  }) {
    return _then(_AppUpdate(
      newerVersion: newerVersion == freezed
          ? _value.newerVersion
          : newerVersion as UpdateInfo,
      newInVersion: newInVersion == freezed
          ? _value.newInVersion
          : newInVersion as UpdateInfo,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppUpdate implements _AppUpdate {
  const _$_AppUpdate(
      {@JsonKey(name: 'newer_version') this.newerVersion,
      @JsonKey(name: 'new_in_version') this.newInVersion});

  factory _$_AppUpdate.fromJson(Map<String, dynamic> json) =>
      _$_$_AppUpdateFromJson(json);

  @override
  @JsonKey(name: 'newer_version')
  final UpdateInfo newerVersion;
  @override
  @JsonKey(name: 'new_in_version')
  final UpdateInfo newInVersion;

  @override
  String toString() {
    return 'AppUpdate(newerVersion: $newerVersion, newInVersion: $newInVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUpdate &&
            (identical(other.newerVersion, newerVersion) ||
                const DeepCollectionEquality()
                    .equals(other.newerVersion, newerVersion)) &&
            (identical(other.newInVersion, newInVersion) ||
                const DeepCollectionEquality()
                    .equals(other.newInVersion, newInVersion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newerVersion) ^
      const DeepCollectionEquality().hash(newInVersion);

  @JsonKey(ignore: true)
  @override
  _$AppUpdateCopyWith<_AppUpdate> get copyWith =>
      __$AppUpdateCopyWithImpl<_AppUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppUpdateToJson(this);
  }
}

abstract class _AppUpdate implements AppUpdate {
  const factory _AppUpdate(
      {@JsonKey(name: 'newer_version') UpdateInfo newerVersion,
      @JsonKey(name: 'new_in_version') UpdateInfo newInVersion}) = _$_AppUpdate;

  factory _AppUpdate.fromJson(Map<String, dynamic> json) =
      _$_AppUpdate.fromJson;

  @override
  @JsonKey(name: 'newer_version')
  UpdateInfo get newerVersion;
  @override
  @JsonKey(name: 'new_in_version')
  UpdateInfo get newInVersion;
  @override
  @JsonKey(ignore: true)
  _$AppUpdateCopyWith<_AppUpdate> get copyWith;
}
