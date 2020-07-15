// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_translate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateTranslate _$UpdateTranslateFromJson(Map<String, dynamic> json) {
  return UpdateTranslate(
    title: json['title'] as String,
    message: json['message'] as String,
    positiveButton: json['positive_button'] as String,
    negativeButton: json['negative_button'] as String,
  );
}

Map<String, dynamic> _$UpdateTranslateToJson(UpdateTranslate instance) =>
    <String, dynamic>{
      'title': instance.title,
      'message': instance.message,
      'positive_button': instance.positiveButton,
      'negative_button': instance.negativeButton,
    };
