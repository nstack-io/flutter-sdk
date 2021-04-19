// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nstack_api_headers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NStackApiHeaders _$_$_NStackApiHeadersFromJson(Map<String, dynamic> json) {
  return _$_NStackApiHeaders(
    acceptLanguage: json['acceptLanguage'] as String,
    applicationId: json['applicationId'] as String,
    restApiKey: json['restApiKey'] as String,
    nMeta: NMeta.fromJson(json['nMeta'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NStackApiHeadersToJson(
        _$_NStackApiHeaders instance) =>
    <String, dynamic>{
      'acceptLanguage': instance.acceptLanguage,
      'applicationId': instance.applicationId,
      'restApiKey': instance.restApiKey,
      'nMeta': instance.nMeta,
    };
