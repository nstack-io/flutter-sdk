import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:nstack/src/constants.dart';

import '../config.dart';
import '../interactor.dart';
import 'build_command.dart';

class BuildInteractor implements FutureInteractor<void> {
  @override
  Future<void> execute({BuildCommand command}) async {
    final config = await getConfig();
    final headers = {
      'Accept-Language': 'en-US',
      'X-Application-Id': 'h6wJremI2TGFM88gbLkdyljWQuwf2hxhxvCH',
      'X-Rest-Api-Key': 'zp2S18H32b67eYAbRQh94tVw76ZzaKKXlHjd',
      'N-Meta': 'android;local;1.0;1.0;nstackbuilder'
    };

    // Fetch localize-index-resources
    final localizeIndexResources = await http
        .get(localizeIndexResourcesUrl, headers: headers)
        .then((response) => jsonDecode(response.body)['data']);

    // Fetch localize-show-resources and write them into /assets
    localizeIndexResources.forEach((indexResource) async {
      final url = indexResource['url'];
      await http.get(url, headers: headers).then((value) async {
        final resource = jsonDecode(value.body);
        final data = jsonEncode(resource['data']);
        final locale = resource['meta']['language']['locale'].toString();
        final fileName = '$locale.json';
        final filePath = '$nStackAssetsPath';
        await Directory(filePath).create(recursive: true);
        await File('$filePath/$fileName').writeAsString(data);
      });
    });

    // TODO: Generate NStack instance
    // Path: lib/nstack/nstack.dart (next to nstack.json)
    // Includes:
    //    - NStackWidget
    //    - NStackAppOpenWidget
    //    - Typesafe Localization section-key accessors
  }
}
