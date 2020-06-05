class Language {
  final int id;
  final String name;
  final String locale;
  final String direction;
  final bool isDefault;
  final bool isBestFit;

  const Language({
    this.id,
    this.name,
    this.locale,
    this.direction,
    this.isDefault,
    this.isBestFit,
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
