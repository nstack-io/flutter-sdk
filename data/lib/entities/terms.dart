import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'terms_type.dart';
import 'terms_version.dart';

part 'terms.g.dart';

@JsonSerializable()
class Terms {
  final int id;
  final TermsType type;
  final String name;
  final String slug;
  final TermsVersion version;

  const Terms({
    @required this.id,
    @required this.type,
    @required this.name,
    @required this.slug,
    @required this.version,
  });

  factory Terms.fromJson(Map<String, dynamic> json) {
    return _$TermsFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TermsToJson(this);
  }
}
