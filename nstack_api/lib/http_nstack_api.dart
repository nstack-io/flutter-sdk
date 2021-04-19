import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nstack_api/entities/app_open.dart';
import 'package:nstack_api/entities/app_open_request_body.dart';
import 'package:nstack_api/entities/localize_index_list.dart';
import 'package:nstack_api/entities/localize_language_list.dart';
import 'package:nstack_api/entities/localize_resource.dart';
import 'package:nstack_api/entities/nstack_target.dart';
import 'package:nstack_api/nstack_api.dart';

import 'entities/nstack_api_headers.dart';

/// TODO: Docs
class HttpNStackApi implements NStackAPI {

  Uri uri(String path) => Uri.parse('https://nstack.io/api/v2/$path');

//<editor-fold desc="Localize">

  @override
  Future<LocalizeLanguageList> getLocalizeLanguageList({
    required NStackApiHeaders headers,
    required NStackTarget target,
  }) async {
    final response = await http.get(
      uri('content/localize/resources/platforms/${target.slug}/languages'),
      headers: headers.map,
    );
    return LocalizeLanguageList.fromJson(
      json.decode(response.body),
    );
  }

  @override
  Future<LocalizeIndexList> getLocalizeIndexList({
    required NStackApiHeaders headers,
    bool isDevMode = false,
  }) async {
    final response = await http.get(
      uri('content/localize/resources/platforms/mobile?dev=$isDevMode'),
      headers: headers.map,
    );
    return LocalizeIndexList.fromJson(
      json.decode(response.body),
    );
  }

  @override
  Future<LocalizeResource> getLocalizeResource({
    required NStackApiHeaders headers,
    required int id,
  }) async {
    final response = await http.get(
      uri('content/localize/resources/$id'),
      headers: headers.map,
    );
    return LocalizeResource.fromJson(
      json.decode(response.body),
    );
  }

//</editor-fold>

//<editor-fold desc="App open">

  @override
  Future<AppOpen> postAppOpen({
    required NStackApiHeaders headers,
    required AppOpenRequestBody body,
    bool isDevMode = false,
    bool isTestMode = false,
  }) async {
    final response = await http.post(
      uri('open?dev=$isDevMode&test=$isTestMode'),
      headers: headers.map,
      body: body.toJson(),
    );
    return AppOpen.fromJson(
      json.decode(response.body),
    );
  }

//</editor-fold>

}
