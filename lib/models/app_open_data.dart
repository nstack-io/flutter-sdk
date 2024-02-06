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
      update: (json['update'] as Map<String, dynamic>?)
          ?.let((item) => Update.fromJson(item)),
      localize: (json['localize'] as List?)?.let(
        (item) => item.map((e) => LocalizeIndex.fromJson(e)).toList(),
      ),
      platform: json['platform'],
      createdAt: (json['created_at'] as String?)?.let(
        (item) => DateTime.parse(item),
      ),
      updatedAt: (json['last_updated'] as String?)?.let(
        (item) => DateTime.parse(item),
      ),
      message: (json['message'] as Map?)?.let((item) => Message.fromJson(item)),
      rateReminder: json['rateReminder']?.let(
        (item) => RateReminder.fromJson(item),
      ),
      terms: json['terms']?.let((item) => item),
    );
  }
}
