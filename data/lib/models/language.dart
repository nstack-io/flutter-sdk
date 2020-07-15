import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'language.g.dart';

@JsonSerializable()
class Language {
  final int id;
  final String name;
  final String locale;
  final String direction;
  @JsonKey(name: 'is_default')
  final bool isDefault;
  @JsonKey(name: 'is_best_fit')
  final bool isBestFit;

  const Language({
    @required this.id,
    @required this.name,
    @required this.locale,
    @required this.direction,
    @required this.isDefault,
    @required this.isBestFit,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    return _$LanguageFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LanguageToJson(this);
  }
}
