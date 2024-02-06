import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/message.dart';
import 'package:nstack/models/rate_reminder.dart';
import 'package:nstack/models/terms.dart';
import 'package:nstack/models/update.dart';
import 'package:nstack/other/extensions.dart';

class AppOpenData {
  final int? count;
  final Update? update;
  final List<LocalizeIndex>? localize;
  final String? platform;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Message? message;
  final RateReminder? rateReminder;
  final List<Terms>? terms;

  AppOpenData({
    required this.count,
    required this.update,
    required this.localize,
    required this.platform,
    required this.createdAt,
    required this.updatedAt,
    required this.message,
    required this.rateReminder,
    required this.terms,
  });

  factory AppOpenData.fromJson(Map json) {
    return AppOpenData(
      count: json['count'],
      update: (json['update'] as Map<String, dynamic>?)?.let(Update.fromJson),
      localize: (json['localize'] as List<dynamic>?)?.let(
        (item) => item
            .map(
              (item) => LocalizeIndex.fromJson(item as Map<String, dynamic>),
            )
            .toList(),
      ),
      platform: json['platform'],
      createdAt: (json['created_at'] as String?)?.let(
        DateTime.parse,
      ),
      updatedAt: (json['last_updated'] as String?)?.let(
        DateTime.parse,
      ),
      message: (json['message'] as Map?)?.let(Message.fromJson),
      rateReminder: json['rateReminder']?.let(
        RateReminder.fromJson,
      ),
      terms: json['terms']?.let((item) => item),
    );
  }
}
