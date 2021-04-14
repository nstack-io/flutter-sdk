import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nstack_api/entities/rate_reminder.dart';
import 'package:nstack_api/entities/terms.dart';
import 'app_update.dart';
import 'localize_index.dart';
import 'message.dart';

part 'app_open_data.freezed.dart';

part 'app_open_data.g.dart';

@freezed
abstract class AppOpenData with _$AppOpenData {
  const factory AppOpenData({
  int? count,
  AppUpdate? update,
  List<LocalizeIndex>? localize,
  String? platform,
  @JsonKey(name: 'created_at')
  DateTime? createdAt,
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt,
  Message? message,
  @JsonKey(name: 'rate_reminder')
  RateReminder? rateReminder,
  List<Terms>? terms,
  }) = _AppOpenData;

  factory AppOpenData.fromJson(Map<String, dynamic> json) =>
      _$AppOpenDataFromJson(json);
}