import 'package:freezed_annotation/freezed_annotation.dart';

import 'terms_type.dart';
import 'terms_version.dart';

part 'terms.freezed.dart';

part 'terms.g.dart';

@freezed
abstract class Terms with _$Terms {
  const factory Terms({
    int id,
    TermsType type,
    String name,
    String slug,
    TermsVersion version,
  }) = _Terms;

  factory Terms.fromJson(Map<String, dynamic> json) => _$TermsFromJson(json);
}
