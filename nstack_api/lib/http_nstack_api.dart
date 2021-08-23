import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:nstack_api/entities/app_open.dart';
import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/localize_language_list.dart';
import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/localize_resource.dart';
import 'package:nstack_api/entities/n_meta.dart';
import 'package:nstack_api/entities/nstack_api_config.dart';
import 'package:nstack_api/nstack_api.dart';

/// TODO: Docs
class HttpNStackApi implements NStackAPI {
  /// TODO: Docs
  final NStackApiConfig config;

  /// TODO: Docs
  final NMeta meta;

  /// For example 'mobile'. TODO: Docs
  final String platform;

  /// For example 'en-US'. TODO: Docs
  final String local;

  /// TODO: Docs
  final bool isDevMode;

  /// TODO: Docs
  final bool isTestMode;

  HttpNStackApi({
    required this.config,
    required this.meta,
    required this.platform,
    required this.local,
    required this.isDevMode,
    required this.isTestMode,
  });

  Map<String, String?> get _headers => {
        'Accept-Language': local,
        'X-Application-Id': config.applicationId,
        'X-Rest-Api-Key': config.restApiKey,
        'N-Meta':
            '${meta.platform};${meta.environment};${meta.appVersion};${meta.osVersion};${meta.device}'
      };

  // TODO: Check if we can append isDevMode and isTestMode here to all requests.
  Uri uri(String path) => Uri.parse('https://nstack.io/api/v2/$path');

//<editor-fold desc="Localize">

  @override
  Future<LocalizeLanguageList> getLocalizeLanguageList() async {
    final response = await http.get(
      uri('content/localize/resources/platforms/$platform/languages'),
      headers: _headers as Map<String, String>?,
    );
    return LocalizeLanguageList.fromJson(
      json.decode(response.body),
    );
  }

  @override
  Future<LocalizeIndexList> getLocalizeIndexList() async {
    final response = await http.get(
      uri('content/localize/resources/platforms/mobile?dev=$isDevMode'),
      headers: _headers as Map<String, String>?,
    );
    return LocalizeIndexList.fromJson(
      json.decode(response.body),
    );
  }

  @override
  Future<LocalizeResource> getLocalizeResource({
    int? id,
  }) async {
    final response = await http.get(
      uri('content/localize/resources/$id'),
      headers: _headers as Map<String, String>?,
    );
    return LocalizeResource.fromJson(
      json.decode(response.body),
    );
  }

//</editor-fold>

//<editor-fold desc="App open">

  @override
  Future<AppOpen> postAppOpen({
    required AppOpenRequestBody body,
  }) async {
    final response = await http.post(
      uri('open?dev=$isDevMode&test=$isTestMode'),
      headers: _headers as Map<String, String>?,
      body: body.toJson(),
    );
    return AppOpen.fromJson(
      json.decode(response.body),
    );
  }

//</editor-fold>

}
