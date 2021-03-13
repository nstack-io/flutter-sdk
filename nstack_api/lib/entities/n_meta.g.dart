// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'n_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NMeta _$_$_NMetaFromJson(Map<String, dynamic> json) {
  return _$_NMeta(
    platform: json['platform'] as String,
    environment: json['environment'] as String,
    appVersion: json['app_version'] as String,
    osVersion: json['os_version'] as String,
    device: json['device'] as String,
  );
}

Map<String, dynamic> _$_$_NMetaToJson(_$_NMeta instance) => <String, dynamic>{
      'platform': instance.platform,
      'environment': instance.environment,
      'app_version': instance.appVersion,
      'os_version': instance.osVersion,
      'device': instance.device,
    };
