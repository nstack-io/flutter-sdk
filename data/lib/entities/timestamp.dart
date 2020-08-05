import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'timestamp.g.dart';

@JsonSerializable()
class Timestamp {
  final DateTime time;

  const Timestamp({
    @required this.time,
  });

  factory Timestamp.fromJson(Map<String, dynamic> json) {
    return _$TimestampFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$TimestampToJson(this);
  }
}
