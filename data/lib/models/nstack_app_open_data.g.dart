// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nstack_app_open_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NStackAppOpenData _$NStackAppOpenDataFromJson(Map<String, dynamic> json) {
  return NStackAppOpenData(
    platform: json['platform'] as String,
    guid: json['guid'] as String,
    version: json['version'] as String,
    oldVersion: json['old_version'] as String,
    lastUpdated: json['last_updated'] as String,
  );
}

Map<String, dynamic> _$NStackAppOpenDataToJson(NStackAppOpenData instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'guid': instance.guid,
      'version': instance.version,
      'old_version': instance.oldVersion,
      'last_updated': instance.lastUpdated,
    };
