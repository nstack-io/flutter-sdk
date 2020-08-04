// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_resource_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizeResourceMeta _$LocalizeResourceMetaFromJson(Map<String, dynamic> json) {
  return LocalizeResourceMeta(
    json['language'] == null
        ? null
        : Language.fromJson(json['language'] as Map<String, dynamic>),
    json['platform'] == null
        ? null
        : Platform.fromJson(json['platform'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LocalizeResourceMetaToJson(
        LocalizeResourceMeta instance) =>
    <String, dynamic>{
      'language': instance.language,
      'platform': instance.platform,
    };
