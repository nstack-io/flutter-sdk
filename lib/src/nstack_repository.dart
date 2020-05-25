import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nstack/models/nstack_appopen_data.dart';

class NStackRepository {

	NStackRepository();

	final headers = {
		'Accept-Language'   : 'en-US',
		'X-Application-Id'  : '',
		'X-Rest-Api-Key'    : '',
		'N-Meta'            : 'android;local;1.0;1.0;nstackbuilder'
	};

	final baseUrl = "https://nstack.io/api/v2";

	void updateHeaders(
		String appId,
		String apiKey
	) {
		headers['X-Application-Id'] = appId;
		headers['X-Rest-Api-Key'] = apiKey;
	}

	dynamic postAppOpen({
		String acceptHeader,
		NStackAppOpenData appOpenData,
		bool devMode,
		bool testMode
	}) async {
		headers['Accept-Language'] = acceptHeader;

		var requestBody = <String, String>{
			'platform': appOpenData.platform,
			'guid': appOpenData.guid,
			'version': appOpenData.version,
			'old_version': appOpenData.oldVersion,
			'last_updated': appOpenData.lastUpdated
		};

		try {
			print("NStack --> App Open sending: " + requestBody.toString());

			var appOpenResponse = await http.post(
				"$baseUrl/open?dev=$devMode&test=$testMode",
				headers: headers,
				body: requestBody,
			);


			if(appOpenResponse.statusCode == 200) {
				print("NStack --> App Open fetched: " + appOpenResponse.body);
				return json.decode(appOpenResponse.body);
			} else {
				print("NStack --> App Open failed: " + appOpenResponse.reasonPhrase + " - " + appOpenResponse.body + " - " + requestBody.toString());
			}
		} catch (err) {
			print(err);
		}
	}

	dynamic fetchAvailableLanguages() async {
		try {
			var languagesResponse = await http.get(
				"$baseUrl/content/localize/resources/platforms/mobile?dev=true",
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