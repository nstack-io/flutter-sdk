import 'dart:convert';

import 'package:data/models/app_open.dart';
import 'package:data/models/localize_index.dart';
import 'package:data/models/localize_index_list.dart';
import 'package:data/models/nstack_app_open_data.dart';
import 'package:data/models/nstack_config.dart';
import 'package:http/http.dart' as http;

// TODO: Move to 'data' lib
class NStackRepository {
  final _baseUrl = 'https://nstack.io/api/v2';

  final NStackConfig _config;

  Map<String, String> get _headers => {
        'Accept-Language': 'en-US',
        'X-Application-Id': _config.projectId,
        'X-Rest-Api-Key': _config.apiKey,
        'N-Meta': 'android;local;1.0;1.0;nstackbuilder'
      };

  const NStackRepository(this._config);

  Future<AppOpen> postAppOpen({
    String acceptHeader,
    NStackAppOpenData appOpenData,
    bool devMode,
    bool testMode,
  }) async {
    _headers['Accept-Language'] = acceptHeader;

    final requestBody = <String, String>{
      'platform': appOpenData.platform,
      'guid': appOpenData.guid,
      'version': appOpenData.version,
      'old_version': appOpenData.oldVersion,
      'last_updated': appOpenData.lastUpdated
    };

    print('NStack --> App Open sending: ${requestBody.toString()}');

    final appOpenResponse = await http.post(
      '$_baseUrl/open?dev=$devMode&test=$testMode',
      headers: _headers,
      body: requestBody,
    );

    if (appOpenResponse.statusCode == 200) {
      print('NStack --> App Open fetched: ${appOpenResponse.body}');
      return AppOpen.fromJson(json.decode(appOpenResponse.body));
    } else {
      print(
          'NStack --> App Open failed: ${appOpenResponse.reasonPhrase} - ${appOpenResponse.body} - ${requestBody.toString()}');
      return null;
    }
  }

  Future<List<LocalizeIndex>> fetchAvailableLanguages() async {
    try {
      final response = await http.get(
        '$_baseUrl/content/localize/resources/platforms/mobile?dev=true',
        headers: _headers,
      );

      final localizeIndexList = LocalizeIndexList.fromJson(
        json.decode(response.body),
      );

      print('Fetched ${localizeIndexList.data.length} languages.');
      return localizeIndexList.data;
    } catch (e, s) {
      print(e);
      print(s);
      return [];
    }
  }

  Future<String> fetchLocalizationForLanguage(LocalizeIndex language) async {
    return (await http.get(language.url, headers: _headers)).body;
  }
}
