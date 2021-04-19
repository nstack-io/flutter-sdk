import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nstack_api/entities/n_meta.dart';

part 'nstack_api_headers.freezed.dart';

part 'nstack_api_headers.g.dart';

@freezed
abstract class NStackApiHeaders with _$NStackApiHeaders {
  const factory NStackApiHeaders({
    required String acceptLanguage,
    required String applicationId,
    required String restApiKey,
    required NMeta nMeta,
  }) = _NStackApiHeaders;

  factory NStackApiHeaders.fromJson(Map<String, dynamic> json) =>
      _$NStackApiHeadersFromJson(json);
}

extension NStackApiHeadersExtensions on NStackApiHeaders {
  Map<String, String> get map => {
    'Accept-Language': acceptLanguage,
    'X-Application-Id': applicationId,
    'X-Rest-Api-Key': restApiKey,
    'N-Meta': nMeta.header,
  };
}
