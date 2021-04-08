import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/models/nstack_config.dart';

class NStackRepository {
  final _baseUrl = 'https://nstack.io/api/v2';

  final NStackConfig _config;

  Map<String, String?> get _headers => {
        'Accept-Language': 'en-US',
        'X-Application-Id': _config.projectId,
        'X-Rest-Api-Key': _config.apiKey,
        'N-Meta': 'android;local;1.0;1.0;nstackbuilder'
      };

  const NStackRepository(this._config);

  dynamic postAppOpen({
    String? acceptHeader,
    required NStackAppOpenData appOpenData,
    bool? devMode,
    bool? testMode,
  }) async {
    _headers['Accept-Language'] = acceptHeader;

    final requestBody = <String, String?>{
      'platform': appOpenData.platform,
      'guid': appOpenData.guid,
      'version': appOpenData.version,
      'old_version': appOpenData.oldVersion,
      'last_updated': appOpenData.lastUpdated
    };

    print('NStack --> App Open sending: ${requestBody.toString()}');

    final appOpenResponse = await http.post(
      Uri.parse('$_baseUrl/open?dev=$devMode&test=$testMode'),
      headers: _headers as Map<String, String>?,
      body: requestBody,
    );

    if (appOpenResponse.statusCode == 200) {
      print('NStack --> App Open fetched: ${appOpenResponse.body}');
      return json.decode(appOpenResponse.body);
    } else {
      print(
          'NStack --> App Open failed: ${appOpenResponse.reasonPhrase} - ${appOpenResponse.body} - ${requestBody.toString()}');
    }
  }

  Future<List<LocalizeIndex>> fetchAvailableLanguages() async {
    try {
      final response = await http.get(
          Uri.parse('$_baseUrl/content/localize/resources/platforms/mobile?dev=true'),
        headers: _headers as Map<String, String>?,
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
    return (await http.get( Uri.parse(language.url!), headers: _headers as Map<String, String>?)).body;
  }
}
