import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp.freezed.dart';

part 'timestamp.g.dart';

@freezed
abstract class Timestamp with _$Timestamp {
  const factory Timestamp({
    DateTime? time,
  }) = _Timestamp;

  factory Timestamp.fromJson(Map<String, dynamic> json) =>
      _$TimestampFromJson(json);
}
