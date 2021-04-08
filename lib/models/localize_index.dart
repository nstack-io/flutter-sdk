import 'package:meta/meta.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/other/extensions.dart';

class LocalizeIndex {
  final int? id;
  final String? url;
  final DateTime? lastUpdatedAt;
  final bool shouldUpdate;
  final Language? language;

  LocalizeIndex({
    required this.id,
    required this.url,
    required this.lastUpdatedAt,
    required this.shouldUpdate,
    required this.language,
  });

  factory LocalizeIndex.fromJson(Map json) {
    return LocalizeIndex(
      id: json['id'],
      url: json['url'],
      lastUpdatedAt:
          (json['last_updated_at'] as String?)?.let((it) => DateTime.parse(it)),
      shouldUpdate: json['should_update'] ?? false,
      language: (json['language'] as Map?)?.let((it) => Language.fromJson(it as Map<String, dynamic>)),
    );
  }

  @override
  String toString() {
    return 'LocalizeIndex(id: $id, url $url, lastUpdatedAt: $lastUpdatedAt, shouldUpdate: $shouldUpdate, language: $language)';
  }
}
