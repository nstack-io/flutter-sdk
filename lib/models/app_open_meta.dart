import 'package:meta/meta.dart';

class AppOpenMeta {
  final String? acceptLanguage;

  AppOpenMeta({required this.acceptLanguage});

  factory AppOpenMeta.fromJson(Map json) {
    return AppOpenMeta(
      acceptLanguage: json['accept_Language'],
    );
  }
}
