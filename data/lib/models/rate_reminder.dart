import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'rate_reminder.g.dart';

@JsonSerializable()
class RateReminder {
  final String title;
  final String body;
  @JsonKey(name: 'yes_button')
  final String yesButton;
  @JsonKey(name: 'later_button')
  final String laterButton;
  @JsonKey(name: 'no_button')
  final String noButton;
  final String link;

  const RateReminder({
    @required this.title,
    @required this.body,
    @required this.yesButton,
    @required this.laterButton,
    @required this.noButton,
    @required this.link,
  });

  factory RateReminder.fromJson(Map<String, dynamic> json) {
    return _$RateReminderFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RateReminderToJson(this);
  }
}
