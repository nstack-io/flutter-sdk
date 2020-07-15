// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_open.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppOpen _$AppOpenFromJson(Map<String, dynamic> json) {
  return AppOpen(
    data: json['data'] == null
        ? null
        : AppOpenData.fromJson(json['data'] as Map<String, dynamic>),
    meta: json['meta'] == null
        ? null
        : AppOpenMeta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppOpenToJson(AppOpen instance) => <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
