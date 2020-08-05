// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timestamp _$TimestampFromJson(Map<String, dynamic> json) {
  return Timestamp(
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$TimestampToJson(Timestamp instance) => <String, dynamic>{
      'time': instance.time?.toIso8601String(),
    };
