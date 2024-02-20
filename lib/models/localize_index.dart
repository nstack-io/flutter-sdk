import 'package:nstack/models/language.dart';
import 'package:nstack/other/extensions.dart';

class LocalizeIndex {
  final int id;
  final String url;
  final DateTime lastUpdatedAt;
  final bool shouldUpdate;
  final Language language;

  LocalizeIndex({
    required this.id,
    required this.url,
    required this.lastUpdatedAt,
    required this.shouldUpdate,
    required this.language,
  });

  factory LocalizeIndex.fromJson(Map<String, dynamic> json) {
    return LocalizeIndex(
      id: json['id'],
      url: json['url'],
      lastUpdatedAt: (json['last_updated_at'] as String).let(DateTime.parse),
      shouldUpdate: json['should_update'],
      language:
          (json['language'] as Map<String, dynamic>).let(Language.fromJson),
    );
  }

  @override
  String toString() {
    return 'LocalizeIndex(id: $id, url $url, lastUpdatedAt: $lastUpdatedAt, shouldUpdate: $shouldUpdate, language: $language)';
  }
}
