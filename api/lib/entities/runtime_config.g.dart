// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runtime_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RuntimeConfig _$RuntimeConfigFromJson(Map<String, dynamic> json) {
  return RuntimeConfig(
    platformName: json['platformName'] as String,
    platformVersion: json['platformVersion'] as String,
    device: json['device'] as String,
  );
}

Map<String, dynamic> _$RuntimeConfigToJson(RuntimeConfig instance) =>
    <String, dynamic>{
      'platformName': instance.platformName,
      'platformVersion': instance.platformVersion,
      'device': instance.device,
    };
