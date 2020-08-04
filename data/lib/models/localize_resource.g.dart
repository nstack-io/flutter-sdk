// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizeResource _$LocalizeResourceFromJson(Map<String, dynamic> json) {
  return LocalizeResource(
    json['data'] as Map<String, dynamic>,
    json['meta'] == null
        ? null
        : LocalizeResourceMeta.fromJson(json['meta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LocalizeResourceToJson(LocalizeResource instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
