import 'package:meta/meta.dart';

class Terms {
  final int id;
  final TermsType type;
  final String name;
  final String slug;
  final TermsVersion version;

  Terms({
    required this.id,
    required this.type,
    required this.name,
    required this.slug,
    required this.version,
  });
}

class TermsType {
  final int? id;
  final String? version;
  final String? name;
  final DateTime? publishedAt;
  final bool? hasViewed;

  TermsType({
    this.id,
    this.version,
    this.name,
    this.publishedAt,
    this.hasViewed,
  });
}

enum TermsVersion {
  termsConditions,
  privacy,
  cookie,
  other,
}
