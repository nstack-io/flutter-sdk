// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_open_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppOpenRequestBody _$AppOpenRequestBodyFromJson(Map<String, dynamic> json) {
  return AppOpenRequestBody(
    platform: json['platform'] as String,
    guid: json['guid'] as String,
    version: json['version'] as String,
    oldVersion: json['old_version'] as String,
    lastUpdated: json['last_updated'] == null
        ? null
        : DateTime.parse(json['last_updated'] as String),
  );
}

Map<String, dynamic> _$AppOpenRequestBodyToJson(AppOpenRequestBody instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'guid': instance.guid,
      'version': instance.version,
      'old_version': instance.oldVersion,
      'last_updated': instance.lastUpdated?.toIso8601String(),
    };
