import 'package:meta/meta.dart';

class Language {
  final int? id;
  final String? name;
  final String? locale;
  final String? direction;
  final bool? isDefault;
  final bool? isBestFit;

  const Language({
    required this.id,
    required this.name,
    required this.locale,
    required this.direction,
    required this.isDefault,
    required this.isBestFit,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      id: json['id'],
      name: json['name'],
      locale: json['locale'],
      direction: json['direction'],
      isDefault: json['is_default'],
      isBestFit: json['is_best_fit'],
    );
  }
}
