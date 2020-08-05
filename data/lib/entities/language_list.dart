import 'package:data/entities/language.dart';
import 'package:json_annotation/json_annotation.dart';

part 'language_list.g.dart';

@JsonSerializable()
class LanguageList {
  final List<Language> data;

  LanguageList(
    this.data,
  );

  factory LanguageList.fromJson(Map<String, dynamic> json) {
    return _$LanguageListFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LanguageListToJson(this);
  }
}
