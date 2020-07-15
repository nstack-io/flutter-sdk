import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'app_update.dart';
import 'localize_index.dart';
import 'message.dart';
import 'rate_reminder.dart';
import 'terms.dart';

part 'app_open_data.g.dart';

@JsonSerializable()
class AppOpenData {
  final int count;
  final AppUpdate update;
  final List<LocalizeIndex> localize;
  final String platform;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final Message message;
  @JsonKey(name: 'rate_reminder')
  final RateReminder rateReminder;
  final List<Terms> terms;

  const AppOpenData({
    @required this.count,
    @required this.update,
    @required this.localize,
    @required this.platform,
    @required this.createdAt,
    @required this.updatedAt,
    @required this.message,
    @required this.rateReminder,
    @required this.terms,
  });

  factory AppOpenData.fromJson(Map<String, dynamic> json) {
    return _$AppOpenDataFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AppOpenDataToJson(this);
  }
}
