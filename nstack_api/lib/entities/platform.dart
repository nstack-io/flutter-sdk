import 'package:freezed_annotation/freezed_annotation.dart';

part 'platform.freezed.dart';

part 'platform.g.dart';

@freezed
abstract class Platform with _$Platform {
  const factory Platform({
    int? id,
    String? slug,
  }) = _Platform;

  factory Platform.fromJson(Map<String, dynamic> json) =>
      _$PlatformFromJson(json);
}
