import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'app_open_meta.g.dart';

@JsonSerializable()
class AppOpenMeta {
  @JsonKey(name: 'accept_language')
  final String acceptLanguage;

  const AppOpenMeta({
    @required this.acceptLanguage,
  });

  factory AppOpenMeta.fromJson(Map<String, dynamic> json) {
    return _$AppOpenMetaFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppOpenMetaToJson(this);
  }
}
