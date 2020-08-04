import 'package:json_annotation/json_annotation.dart';

part 'platform.g.dart';

@JsonSerializable()
class Platform {
  final int id;
  final String slug;

  Platform(
    this.id,
    this.slug,
  );

  factory Platform.fromJson(Map<String, dynamic> json) {
    return _$PlatformFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PlatformToJson(this);
  }
}
