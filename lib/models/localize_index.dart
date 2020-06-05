import 'package:nstack/models/language.dart';
import 'package:nstack/other/extensions.dart';

class LocalizeIndex {
  final int id;
  final String url;
  final DateTime lastUpdatedAt;
  final bool shouldUpdate;
  final Language language;

  LocalizeIndex({
    this.id,
    this.url,
    this.lastUpdatedAt,
    this.shouldUpdate,
    this.language,
  });

  factory LocalizeIndex.fromJson(Map json) {
    return LocalizeIndex(
      id: json['id'],
      url: json['url'],
      lastUpdatedAt: (json['last_updated_at'] as String)?.let((it) => DateTime.parse(it)),
      shouldUpdate: json['should_update'] ?? false,
      language: (json['language'] as Map)?.let((it) => Language.fromJson(it)),
    );
  }
}
