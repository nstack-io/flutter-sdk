// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalizeResource _$$_LocalizeResourceFromJson(Map<String, dynamic> json) =>
    _$_LocalizeResource(
      data: json['data'] as Map<String, dynamic>?,
      meta: json['meta'] == null
          ? null
          : LocalizeResourceMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocalizeResourceToJson(_$_LocalizeResource instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
