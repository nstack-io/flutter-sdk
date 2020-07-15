import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'terms_type.g.dart';

@JsonSerializable()
class TermsType {
  final int id;
  final String version;
  final String name;
  @JsonKey(name: 'published_at')
  final DateTime publishedAt;
  @JsonKey(name: 'has_viewed')
  final bool hasViewed;

  const TermsType({
    @required this.id,
    @required this.version,
    @required this.name,
    @required this.publishedAt,
    @required this.hasViewed,
  });

  factory TermsType.fromJson(Map<String, dynamic> json) {
    return _$TermsTypeFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TermsTypeToJson(this);
  }
}
