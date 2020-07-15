import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'localize_index.dart';

part 'localize_index_list.g.dart';

@JsonSerializable()
class LocalizeIndexList {
  final List<LocalizeIndex> data;

  LocalizeIndexList({
    @required this.data,
  });

  factory LocalizeIndexList.fromJson(Map<String, dynamic> json) {
    return _$LocalizeIndexListFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LocalizeIndexListToJson(this);
  }
}
