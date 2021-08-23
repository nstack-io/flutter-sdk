import 'package:freezed_annotation/freezed_annotation.dart';
import 'app_open_data.dart';
import 'app_open_meta.dart';

part 'app_open.freezed.dart';

part 'app_open.g.dart';

@freezed
abstract class AppOpen with _$AppOpen {
  const factory AppOpen({
    AppOpenData? data,
    AppOpenMeta? meta,
  }) = _AppOpen;

  factory AppOpen.fromJson(Map<String, dynamic> json) =>
      _$AppOpenFromJson(json);
}
