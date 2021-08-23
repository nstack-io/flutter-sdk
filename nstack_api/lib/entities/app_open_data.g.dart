// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_open_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppOpenData _$$_AppOpenDataFromJson(Map<String, dynamic> json) =>
    _$_AppOpenData(
      count: json['count'] as int?,
      update: json['update'] == null
          ? null
          : AppUpdate.fromJson(json['update'] as Map<String, dynamic>),
      localize: (json['localize'] as List<dynamic>?)
          ?.map((e) => LocalizeIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      platform: json['platform'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
      rateReminder: json['rate_reminder'] == null
          ? null
          : RateReminder.fromJson(
              json['rate_reminder'] as Map<String, dynamic>),
      terms: (json['terms'] as List<dynamic>?)
          ?.map((e) => Terms.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AppOpenDataToJson(_$_AppOpenData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'update': instance.update,
      'localize': instance.localize,
      'platform': instance.platform,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'message': instance.message,
      'rate_reminder': instance.rateReminder,
      'terms': instance.terms,
    };
