import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';

/// A builder which outputs a 'nstack.dart' file. This file provides a NStack instance and all bundled translations.
class NstackBuilder implements Builder {
  const NstackBuilder();

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    /// Read the input source and parse it as JSON.
    Map<String, Object> input;
    String rojectId;
    String apiKey;
    final AssetId outputId = buildStep.inputId.changeExtension('.dart');
    try {
      input = json.decode(await buildStep.readAsString(buildStep.inputId));
      rojectId = input["nstack_project_id"]; // TODO: Validate.
      apiKey = input["nstack_api_key"]; // TODO: Validate.
    } catch (err) {
      // TODO: Inform SDK user about error.
    }
    final StringBuffer output = StringBuffer();
    output.writeln("// Generated by NStack, do not modify this file.");
    output.writeln("import 'package:nstack/nstack.dart';");
    output.writeln("");
    output.writeln("final NStack nstack = NStack.instance(\"$rojectId\", \"$apiKey\", _bundledTranslations);");
    output.writeln("");
    output.writeln('''
final _bundledTranslations = {
  'en_EN':'{"data":{"section1":{"key1":"value80493753","key2":"value2"}},"meta":{"language":{"id":56,"name":"English","locale":"en_EN","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":447,"slug":"mobile"}}}',
  'fr-BE': '{"data":{"section1":{"key1":"valeur1","key2":"valeur2"}},"meta":{"language":{"id":54,"name":"French (Belgian)","locale":"fr-BE","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":447,"slug":"mobile"}}}',
};
''');
    await buildStep.writeAsString(outputId, output.toString());
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        '.json': ['.dart']
      };
}
