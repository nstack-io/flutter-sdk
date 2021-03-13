import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_reminder.freezed.dart';

part 'rate_reminder.g.dart';

@freezed
abstract class RateReminder with _$RateReminder {
  const factory RateReminder({
  String title,
  String body,
  @JsonKey(name: 'yes_button')
  String yesButton,
  @JsonKey(name: 'later_button')
  String laterButton,
  @JsonKey(name: 'no_button')
  String noButton,
  String link,
  }) = _RateReminder;

  factory RateReminder.fromJson(Map<String, dynamic> json) =>
      _$RateReminderFromJson(json);
}
