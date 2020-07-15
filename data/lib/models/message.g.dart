// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) {
  return Message(
    id: json['id'] as int,
    applicationId: json['application_id'] as int,
    showSetting:
        _$enumDecodeNullable(_$MessageShowSettingEnumMap, json['show_setting']),
    viewCount: json['view_count'] as int,
    message: json['message'] as String,
    url: json['url'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deletedAt: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
    projectId: json['project_id'] as int,
    localization: json['localization'] == null
        ? null
        : MessageLocalization.fromJson(
            json['localization'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'application_id': instance.applicationId,
      'show_setting': _$MessageShowSettingEnumMap[instance.showSetting],
      'view_count': instance.viewCount,
      'message': instance.message,
      'url': instance.url,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
      'project_id': instance.projectId,
      'localization': instance.localization,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$MessageShowSettingEnumMap = {
  MessageShowSetting.once: 'once',
  MessageShowSetting.always: 'always',
};
