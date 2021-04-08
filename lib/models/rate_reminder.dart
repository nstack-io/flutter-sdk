import 'package:meta/meta.dart';

class RateReminder {
  final String? title;
  final String? body;
  final String? yesButton;
  final String? laterButton;
  final String? noButton;
  final String? link;

  RateReminder({
    required this.title,
    required this.body,
    required this.yesButton,
    required this.laterButton,
    required this.noButton,
    required this.link,
  });

  factory RateReminder.fromJson(Map json) {
    return RateReminder(
      title: json['title'],
      body: json['body'],
      yesButton: json['yesButton'],
      laterButton: json['laterButton'],
      noButton: json['noButton'],
      link: json['link'],
    );
  }
}
