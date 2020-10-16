// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nstack_api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NStackApiConfig _$NStackApiConfigFromJson(Map<String, dynamic> json) {
  return NStackApiConfig(
    applicationId: json['application_id'] as String,
    restApiKey: json['rest_api_key'] as String,
  );
}

Map<String, dynamic> _$NStackApiConfigToJson(NStackApiConfig instance) =>
    <String, dynamic>{
      'application_id': instance.applicationId,
      'rest_api_key': instance.restApiKey,
    };
