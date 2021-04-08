import 'package:meta/meta.dart';

class UpdateTranslate {
  final String? title;
  final String? message;
  final String? positiveButton;
  final String? negativeButton;

  UpdateTranslate({
    required this.title,
    required this.message,
    required this.positiveButton,
    required this.negativeButton,
  });

  factory UpdateTranslate.fromJson(Map json) {
    return UpdateTranslate(
      title: json['title'],
      message: json['message'],
      positiveButton: json['positiveBtn'],
      negativeButton: json['negativeBtn'],
    );
  }
}
