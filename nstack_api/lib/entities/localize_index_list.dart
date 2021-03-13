import 'package:freezed_annotation/freezed_annotation.dart';

import 'localize_index.dart';

part 'localize_index_list.freezed.dart';

part 'localize_index_list.g.dart';

@freezed
abstract class LocalizeIndexList with _$LocalizeIndexList {
  const factory LocalizeIndexList({
    List<LocalizeIndex> data,
  }) = _LocalizeIndexList;

  factory LocalizeIndexList.fromJson(Map<String, dynamic> json) =>
      _$LocalizeIndexListFromJson(json);
}
