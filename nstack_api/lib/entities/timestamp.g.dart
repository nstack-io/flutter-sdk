// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Timestamp _$_$_TimestampFromJson(Map<String, dynamic> json) {
  return _$_Timestamp(
    time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  );
}

Map<String, dynamic> _$_$_TimestampToJson(_$_Timestamp instance) =>
    <String, dynamic>{
      'time': instance.time?.toIso8601String(),
    };
