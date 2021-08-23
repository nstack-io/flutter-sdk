// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_resource_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalizeResourceMeta _$$_LocalizeResourceMetaFromJson(
        Map<String, dynamic> json) =>
    _$_LocalizeResourceMeta(
      language: json['language'] == null
          ? null
          : LocalizeLanguage.fromJson(json['language'] as Map<String, dynamic>),
      platform: json['platform'] == null
          ? null
          : Platform.fromJson(json['platform'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocalizeResourceMetaToJson(
        _$_LocalizeResourceMeta instance) =>
    <String, dynamic>{
      'language': instance.language,
      'platform': instance.platform,
    };
