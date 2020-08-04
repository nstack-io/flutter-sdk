import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'update_info.dart';

part 'app_update.g.dart';

@JsonSerializable()
class AppUpdate {
  @JsonKey(name: 'newer_version')
  final UpdateInfo newerVersion;
  @JsonKey(name: 'new_in_version')
  final UpdateInfo newInVersion;

  const AppUpdate({
    @required this.newerVersion,
    @required this.newInVersion,
  });

  factory AppUpdate.fromJson(Map<String, dynamic> json) {
    return _$AppUpdateFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppUpdateToJson(this);
  }
}
