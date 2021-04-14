import 'package:freezed_annotation/freezed_annotation.dart';

import 'update_translate.dart';

part 'update_info.freezed.dart';

part 'update_info.g.dart';

@freezed
abstract class UpdateInfo with _$UpdateInfo {
  const factory UpdateInfo({
    String? state,
    @JsonKey(name: 'last_id') int? lastId,
    String? version,
    String? link,
    UpdateTranslate? translate,
    @JsonKey(name: 'file_url') String? fileUrl,
  }) = _UpdateInfo;

  factory UpdateInfo.fromJson(Map<String, dynamic> json) =>
      _$UpdateInfoFromJson(json);
}
