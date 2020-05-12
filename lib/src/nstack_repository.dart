import 'dart:convert';
import 'package:http/http.dart' as http;

class NStackRepository {

	NStackRepository();

	final headers = {
		'Accept-Language'   : 'en-US',
		'X-Application-Id'  : '',
		'X-Rest-Api-Key'    : '',
		'N-Meta'            : 'flutter;debug;1.0;1.0;nstackbuilder'
	};

	void updateHeaders(
		String appId,
		String apiKey
	) {
		headers['X-Application-Id'] = appId;
		headers['X-Rest-Api-Key'] = apiKey;
	}

	dynamic fetchAvailableLanguages() async {
		try {
			var languagesResponse = await http.get(
				"https://nstack.io/api/v2/content/localize/resources/platforms/mobile?dev=true",
				headers: headers
			);
			var languages = json.decode(languagesResponse.body);
			print("Fetched " + languages['data'].length.toString() + " languages...");

			return languages['data'];
		} catch (err) {
			print(err);
			return json.decode("{\"data\":[]}");
		}
	}

	dynamic fetchLocalizationForLanguage(dynamic language) async {
		try {
			return (await http.get(language['url'], headers: headers)).body;
		} catch(err) {
			print(err);
		}
		return {};
	}

}