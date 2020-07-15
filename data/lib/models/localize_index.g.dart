// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localize_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizeIndex _$LocalizeIndexFromJson(Map<String, dynamic> json) {
  return LocalizeIndex(
    id: json['id'] as int,
    url: json['url'] as String,
    lastUpdatedAt: json['last_updated_at'] == null
        ? null
        : DateTime.parse(json['last_updated_at'] as String),
    shouldUpdate: json['should_update'] as bool,
    language: json['language'] == null
        ? null
        : Language.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LocalizeIndexToJson(LocalizeIndex instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'last_updated_at': instance.lastUpdatedAt?.toIso8601String(),
      'should_update': instance.shouldUpdate,
      'language': instance.language,
    };
