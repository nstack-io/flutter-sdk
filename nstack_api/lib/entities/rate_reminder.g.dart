// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_reminder.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RateReminder _$_$_RateReminderFromJson(Map<String, dynamic> json) {
  return _$_RateReminder(
    title: json['title'] as String,
    body: json['body'] as String,
    yesButton: json['yes_button'] as String,
    laterButton: json['later_button'] as String,
    noButton: json['no_button'] as String,
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$_RateReminderToJson(_$_RateReminder instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'yes_button': instance.yesButton,
      'later_button': instance.laterButton,
      'no_button': instance.noButton,
      'link': instance.link,
    };
