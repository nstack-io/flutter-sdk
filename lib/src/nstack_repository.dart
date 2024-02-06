import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nstack/exception/nstack_exception.dart';
import 'package:nstack/models/app_open_platform.dart';
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/models/update_view_request.dart';
import 'package:nstack/utils/log_util.dart';

class NStackRepository {
  late String _baseUrl;
  final NStackConfig _config;

  Map<String, String> get _headers => {
        'Accept-Language': 'en-US',
        'X-Application-Id': _config.projectId,
        'X-Rest-Api-Key': _config.apiKey,
        'N-Meta': 'android;local;1.0;1.0;nstackbuilder',
      };

  NStackRepository(this._config) {
    _baseUrl = switch (_config.env) {
      NStackEnvironment.staging => 'https://staging.nstack.io/api/v2',
      _ => 'https://nstack.io/api/v2',
    };
  }

  dynamic postAppOpen({
    required String acceptHeader,
    required NStackAppOpenData appOpenData,
    required bool devMode,
    required bool testMode,
  }) async {
    var mutableHeaders = {..._headers};
    mutableHeaders['Accept-Language'] = acceptHeader;

    final requestBody = <String, String>{
      'platform': appOpenData.platform.slug,
      'guid': appOpenData.guid,
      'version': appOpenData.version,
      'old_version': appOpenData.oldVersion,
      'last_updated': appOpenData.lastUpdated,
    };

    LogUtil.log('NStack --> App Open sending: ${requestBody.toString()}');

    final appOpenResponse = await http.post(
      Uri.parse('$_baseUrl/open?dev=$devMode&test=$testMode'),
      headers: mutableHeaders,
      body: requestBody,
    );

    if (appOpenResponse.statusCode == 200) {
      LogUtil.log('NStack --> App Open fetched: ${appOpenResponse.body}');
      return json.decode(appOpenResponse.body);
    } else {
      LogUtil.log(
        'NStack --> App Open failed: ${appOpenResponse.reasonPhrase} - ${appOpenResponse.body} - ${requestBody.toString()}',
      );
    }
  }

  Future<List<LocalizeIndex>> fetchAvailableLanguages() async {
    try {
      final response = await http.get(
        Uri.parse(
          '$_baseUrl/content/localize/resources/platforms/mobile?dev=true',
        ),
        headers: _headers,
      );
      final Map languagesJson = json.decode(response.body);
      final languagesList = (languagesJson['data'] as List<dynamic>)
          .map((it) => LocalizeIndex.fromJson(it))
          .toList();
      LogUtil.log('Fetched ${languagesList.length} languages.');
      return languagesList;
    } catch (e) {
      LogUtil.log(e);
      return [];
    }
  }

  Future<String> fetchLocalizationForLanguage(String url) async {
    return await http
        .get(Uri.parse(url), headers: _headers)
        .then((value) => value.body);
  }

  Future<String> fetchLocalizationForLanguageId(int languageId) async {
    var response = await http.get(
      Uri.parse('$_baseUrl/content/localize/resources/$languageId'),
      headers: _headers,
    );
    return response.body;
  }

  Future<void> postMessageSeen({
    required NStackAppOpenData appOpenData,
    required int messageId,
  }) async {
    final requestBody = {
      'guid': appOpenData.guid,
      'message_id': messageId.toString(),
    };

    final url = Uri.parse('$_baseUrl/notify/messages/views');

    final response = await http.post(
      url,
      headers: _headers,
      body: requestBody,
    );

    if (response.statusCode != 200) {
      throw NStackException.updateFailed('Failed to update message seen.');
    }
  }

  Future<void> postUpdateInfoSeen({
    required UpdateViewRequest updateViewRequest,
  }) async {
    final url = Uri.parse('$_baseUrl/notify/updates/views');

    final response = await http.post(
      url,
      headers: _headers,
      body: updateViewRequest.toJson(),
    );

    if (response.statusCode != 200) {
      throw NStackException.updateFailed('Failed to update change log seen.');
    }
  }
}
