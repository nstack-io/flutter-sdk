import 'package:meta/meta.dart';
import 'package:nstack/models/app_open_data.dart';
import 'package:nstack/models/app_open_meta.dart';

class AppOpen {
  final AppOpenData data;
  final AppOpenMeta meta;

  AppOpen({
    required this.data,
    required this.meta,
  });

  factory AppOpen.fromJson(Map json) {
    return AppOpen(
      data: AppOpenData.fromJson(json['data']),
      meta: AppOpenMeta.fromJson(json['meta']),
    );
  }
}
