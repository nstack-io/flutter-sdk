import 'package:freezed_annotation/freezed_annotation.dart';

import 'language.dart';

part 'localize_index.freezed.dart';

part 'localize_index.g.dart';

@freezed
abstract class LocalizeIndex with _$LocalizeIndex {
  const factory LocalizeIndex({
  int id,
  String url,
  @JsonKey(name: 'last_updated_at')
  DateTime lastUpdatedAt,
  @JsonKey(name: 'should_update')
  bool shouldUpdate,
  Language language,
  }) = _LocalizeIndex;

  factory LocalizeIndex.fromJson(Map<String, dynamic> json) =>
      _$LocalizeIndexFromJson(json);
}