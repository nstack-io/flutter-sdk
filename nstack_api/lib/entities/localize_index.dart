import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'language.dart';

part 'localize_index.g.dart';

@JsonSerializable()
class LocalizeIndex {
  final int id;
  final String url;
  @JsonKey(name: 'last_updated_at')
  final DateTime lastUpdatedAt;
  @JsonKey(name: 'should_update')
  final bool shouldUpdate;
  final Language language;

  const LocalizeIndex({
    @required this.id,
    @required this.url,
    @required this.lastUpdatedAt,
    @required this.shouldUpdate,
    @required this.language,
  });

  factory LocalizeIndex.fromJson(Map<String, dynamic> json) {
    return _$LocalizeIndexFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LocalizeIndexToJson(this);
  }
}
