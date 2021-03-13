// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUpdate _$_$_AppUpdateFromJson(Map<String, dynamic> json) {
  return _$_AppUpdate(
    newerVersion: json['newer_version'] == null
        ? null
        : UpdateInfo.fromJson(json['newer_version'] as Map<String, dynamic>),
    newInVersion: json['new_in_version'] == null
        ? null
        : UpdateInfo.fromJson(json['new_in_version'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AppUpdateToJson(_$_AppUpdate instance) =>
    <String, dynamic>{
      'newer_version': instance.newerVersion,
      'new_in_version': instance.newInVersion,
    };
