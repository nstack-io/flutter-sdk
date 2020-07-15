import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'app_open_data.dart';
import 'app_open_meta.dart';

part 'app_open.g.dart';

@JsonSerializable()
class AppOpen {
  final AppOpenData data;
  final AppOpenMeta meta;

  const AppOpen({
    @required this.data,
    @required this.meta,
  });

  factory AppOpen.fromJson(Map<String, dynamic> json) {
    return _$AppOpenFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppOpenToJson(this);
  }
}
