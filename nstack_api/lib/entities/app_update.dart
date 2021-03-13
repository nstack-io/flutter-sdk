import 'package:freezed_annotation/freezed_annotation.dart';

import 'update_info.dart';

part 'app_update.freezed.dart';

part 'app_update.g.dart';

@freezed
abstract class AppUpdate with _$AppUpdate {
  const factory AppUpdate({
    @JsonKey(name: 'newer_version') UpdateInfo newerVersion,
    @JsonKey(name: 'new_in_version') UpdateInfo newInVersion,
  }) = _AppUpdate;

  factory AppUpdate.fromJson(Map<String, dynamic> json) =>
      _$AppUpdateFromJson(json);
}
