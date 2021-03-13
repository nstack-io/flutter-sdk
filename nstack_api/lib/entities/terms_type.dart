import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_type.freezed.dart';

part 'terms_type.g.dart';

@freezed
abstract class TermsType with _$TermsType {
  const factory TermsType({
  int id,
  String version,
  String name,
  @JsonKey(name: 'published_at')
  DateTime publishedAt,
  @JsonKey(name: 'has_viewed')
  bool hasViewed,
  }) = _TermsType;

  factory TermsType.fromJson(Map<String, dynamic> json) =>
      _$TermsTypeFromJson(json);
}