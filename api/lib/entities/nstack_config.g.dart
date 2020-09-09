// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nstack_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NStackConfig _$NStackConfigFromJson(Map<String, dynamic> json) {
  return NStackConfig(
    projectId: json['project_id'] as String,
    apiKey: json['api_key'] as String,
  );
}

Map<String, dynamic> _$NStackConfigToJson(NStackConfig instance) =>
    <String, dynamic>{
      'project_id': instance.projectId,
      'api_key': instance.apiKey,
    };
