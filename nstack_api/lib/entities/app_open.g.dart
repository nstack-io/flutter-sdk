// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_open.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppOpen _$_$_AppOpenFromJson(Map<String, dynamic> json) {
  return _$_AppOpen(
    data: json['data'] == null
        ? null
        : AppOpenData.fromJson(json['data'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : AppOpenMeta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AppOpenToJson(_$_AppOpen instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
