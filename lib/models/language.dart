class Language {
	int id;
	String name;
	String locale;
	String direction;
	bool isDefault;
	bool isBestFit;

	Language({this.id, this.name, this.locale, this.direction, this.isDefault, this.isBestFit});

	Language.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		name = json['name'];
		locale = json['locale'];
		direction = json['direction'];
		isDefault = json['is_default'];
		isBestFit = json['is_best_fit'];
	}
}