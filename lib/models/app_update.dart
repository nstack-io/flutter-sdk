import 'package:meta/meta.dart';
import 'package:nstack/models/app_update_state.dart';
import 'package:nstack/models/update_info.dart';
import 'package:nstack/other/extensions.dart';

class AppUpdate {
  final UpdateInfo? newerVersion;
  final UpdateInfo? newInVersion;

  AppUpdate({
    required this.newerVersion,
    required this.newInVersion,
  });

  factory AppUpdate.fromJson(Map json) {
    return AppUpdate(
      newerVersion: (json['newer_version'] as Map?)?.let(
        (it) => UpdateInfo.fromJson(it),
      ),
      newInVersion: (json['new_in_version'] as Map?)?.let(
        (it) => UpdateInfo.fromJson(it),
      ),
    );
  }

  UpdateInfo? get update {
    return newerVersion ?? newInVersion;
  }

  AppUpdateState get state {
    if (update?.state == "yes") {
      return AppUpdateState.update;
    }
    if (update?.state == "force") {
      return AppUpdateState.force;
    }
    if (newInVersion != null) {
      return AppUpdateState.changelog;
    }
    return AppUpdateState.none;
  }
}
