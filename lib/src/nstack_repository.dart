import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/nstack_appopen_data.dart';

class NStackRepository {
  NStackRepository();

  final headers = {
    'Accept-Language': 'en-US',
    'X-Application-Id': '',
    'X-Rest-Api-Key': '',
    'N-Meta': 'android;local;1.0;1.0;nstackbuilder'
  };

  final baseUrl = 'https://nstack.io/api/v2';

  void updateHeaders(String appId, String apiKey) {
    headers['X-Application-Id'] = appId;
    headers['X-Rest-Api-Key'] = apiKey;
  }

  dynamic postAppOpen({
    String acceptHeader,
    NStackAppOpenData appOpenData,
    bool devMode,
    bool testMode,
  }) async {
    headers['Accept-Language'] = acceptHeader;

    final requestBody = <String, String>{
      'platform': appOpenData.platform,
      'guid': appOpenData.guid,
      'version': appOpenData.version,
      'old_version': appOpenData.oldVersion,
      'last_updated': appOpenData.lastUpdated
    };

    try {
      print('NStack --> App Open sending: ${requestBody.toString()}');

      final appOpenResponse = await http.post(
        '$baseUrl/open?dev=$devMode&test=$testMode',
        headers: headers,
        body: requestBody,
      );

      if (appOpenResponse.statusCode == 200) {
        print('NStack --> App Open fetched: ${appOpenResponse.body}');
        return json.decode(appOpenResponse.body);
      } else {
        print(
            'NStack --> App Open failed: ${appOpenResponse.reasonPhrase} - ${appOpenResponse.body} - ${requestBody.toString()}');
      }
    } catch (e, s) {
      print(e);
      print(s);
    }
  }

  Future<List<LocalizeIndex>> fetchAvailableLanguages() async {
    try {
      final response = await http.get(
        '$baseUrl/content/localize/resources/platforms/mobile?dev=true',
        headers: headers,
      );
      final Map languagesJson = json.decode(response.body);
      final List<LocalizeIndex> languagesList =
          (languagesJson['data'] as List<dynamic>)
              .map((it) => LocalizeIndex.fromJson(it))
              .toList();
      print('Fetched ${languagesList.length} languages.');
      return languagesList;
    } catch (e, s) {
      print(e);
      print(s);
      return [];
    }
  }

  Future<String> fetchLocalizationForLanguage(LocalizeIndex language) async {
    return (await http.get(language.url, headers: headers)).body;
  }
}
