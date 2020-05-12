import 'dart:async';
import 'dart:convert';
import 'package:build/build.dart';
import 'package:nstack/src/nstack_repository.dart';

/// A builder which outputs a 'nstack.dart' file. This file provides a NStack instance, type safe section key accessors and all bundled translations.
class NstackBuilder implements Builder {
  const NstackBuilder();


  @override
  FutureOr<void> build(BuildStep buildStep) async {
    NStackRepository repository = NStackRepository();
    /// Read the input source and parse it as JSON.
    Map<String, Object> input;
    String projectId;
    String apiKey;
    final AssetId outputId = buildStep.inputId.changeExtension('.dart');
    var defaultLanguage;
    final StringBuffer output = StringBuffer();

    try {
      input = json.decode(await buildStep.readAsString(buildStep.inputId));
      projectId = input["nstack_project_id"]; // TODO: Validate.
      apiKey = input["nstack_api_key"]; // TODO: Validate.

      if(projectId.isEmpty) {
        print("ERROR in nstack.json -> 'nstack_project_id' not set");
        return;
      }

      if(apiKey.isEmpty) {
        print("ERROR in nstack.json -> 'nstack_api_key' not set");
        return;
      }

      repository.updateHeaders(projectId, apiKey);
    } catch (err) {
      print(err);
    }

    _writeHeader(output);

    try {
      var languages = await repository.fetchAvailableLanguages();

      // Find default
      defaultLanguage = languages.where((element) => element['language']['is_default'] == true).first;
      print("Found defaultLanguage: " + defaultLanguage['language'].toString());

      // Fetch localization for default language
      print("Fetching default localization from: " + defaultLanguage['url'].toString());
      var defaultLanguageJson = await repository.fetchLocalizationForLanguage(defaultLanguage);

      print("Creating Localization class...");
      _writeLocalization(defaultLanguageJson, output);
      print("Creating NStack section classes...");
      _writeSections(defaultLanguageJson, output);
      print("Creating NStackWidget...");
      await _writeNStackWidget(projectId, apiKey, languages, repository, output);
    } catch (err) {
      print(err);
    }

    await buildStep.writeAsString(outputId, output.toString());
  }

  void _writeHeader(StringBuffer output) {
    output.writeln("// Generated by NStack, do not modify this file.");
    output.writeln("import 'package:nstack/nstack.dart';");
    output.writeln("import 'package:nstack/language.dart';");
    output.writeln("import 'package:nstack/nstack_config.dart';");
    output.writeln("import 'package:flutter/cupertino.dart';");
    output.writeln("");
    output.writeln("// Update this file by running:");
    output.writeln("// - `flutter pub pub run build_runner build`, if your package depends on Flutter");
    output.writeln("// - `pub run build_runner build` otherwise");
    output.writeln("");
  }

  void _writeLanguageList(dynamic languages, StringBuffer output) {
    output.writeln("\tstatic List<Language> _languages = [");

    languages.forEach((v) {
      var language = v['language'];
      output.writeln("\t\tLanguage(id: ${language['id']}, locale: \"${language['locale']}\", direction: \"${language['direction']}\", isDefault: ${language['is_default']}, isBestFit: ${language['is_best_fit']}),");
    });

    output.writeln("\t];");
  }

  void _writeLocalization(String response, StringBuffer output) {
    var languageJson = json.decode(response)['data'];

    // Localization class
    output.writeln("// Main localization class");
    output.writeln("class Localization {");

    // Create section fields
    languageJson.forEach((section, keys) {
      // Default is a keyword
      if(section == "default") section = "defaultSection";
      var classSection = section.toString().replaceRange(0, 1, section.toString().substring(0, 1).toUpperCase());

      output.writeln("\t$classSection $section;");
    });

    // Make constructor Localization({...})
    var constructorArgs = "";
    languageJson.forEach((section, keys) {
      if(section == "default") section = "defaultSection";
      constructorArgs += "this.$section,";
    });
    output.writeln("\tLocalization({$constructorArgs});");

    // Make fallback() class method
    output.writeln("\tLocalization.fallback() {");
    languageJson.forEach((section, keys) {
      var cleanedSection = section;
      if(cleanedSection == "default") cleanedSection = "defaultSection";
      var uppercaseCleanedSection = cleanedSection.toString().replaceRange(0, 1, cleanedSection.toString().substring(0, 1).toUpperCase());
      output.writeln("\t\t$cleanedSection = $uppercaseCleanedSection();");
    });
    output.writeln("\t}");

    // Make fromJson() initializer
    output.writeln("\tLocalization.fromJson(Map<String, dynamic> json) {");
    // Each field in Localization
    languageJson.forEach((section, keys) {
      var cleanedSection = section;
      if(cleanedSection == "default") cleanedSection = "defaultSection";
      var uppercaseCleanedSection = cleanedSection.toString().replaceRange(0, 1, cleanedSection.toString().substring(0, 1).toUpperCase());
      output.writeln("\t\t$cleanedSection = $uppercaseCleanedSection.fromJson(json['$section']);");
    });
    output.writeln("\t}");
    output.writeln("}");
  }

  void _writeSections(String response, StringBuffer output) {
    output.writeln("// Section classes");
    var languageJson = json.decode(response)['data'];
    languageJson.forEach((section, keys) {
      if(section == "default") section = "defaultSection";

      var uppercaseSection = section.toString().replaceRange(0, 1, section.toString().substring(0, 1).toUpperCase());
      output.writeln("class $uppercaseSection {");

      // Actual String key = "value";
      keys.forEach((k, v) {
        output.writeln("\tString $k = \"$v\";");
      });

      // Fallback constructor
      output.writeln("\t$uppercaseSection();");

      output.writeln("\t$uppercaseSection.fromJson(Map<String, dynamic> json) {");
      // Each field in Section class
      keys.forEach((k, v) {
        output.writeln("\t\t$k = json['$k'];");
      });
      output.writeln("\t}");
      output.writeln("}");
    });
  }

  Future _writeNStackWidget(String projectId, String apiKey, dynamic languages, NStackRepository repository, StringBuffer output) async {
    output.writeln('''

class NStackWidget extends InheritedWidget {

	NStackWidget({
		Key key,
		@required Widget child
	}) : assert(child != null),
			super(key: key, child: child);
''');

    // Write dynamic local fields
    _writeLanguageList(languages, output);
    await _writeLocalizationJSON(languages, repository, output);

    output.writeln('''
	final NStack<Localization> nstack = NStack<Localization>(
	  config: NStackConfig(projectId: "$projectId", apiKey: "$apiKey"),
	  localization: Localization.fallback(),
	  availableLanguages: _languages,
	  bundledTranslations: _bundledTranslations
	);

	static NStack of(BuildContext context) {
		return context.dependOnInheritedWidgetOfExactType<NStackWidget>().nstack;
	}

	@override
	bool updateShouldNotify(NStackWidget oldWidget) => nstack != oldWidget.nstack;
}

extension NStackWidgetExtension on BuildContext {
	Localization get localization => NStackWidget.of(this).localization;
}
    ''');
  }

  Future _writeLocalizationJSON(dynamic languages, NStackRepository repository, StringBuffer output) async {
    output.writeln('''
    // App bundled translations. NStack falls back to these initially and if user clears app data.
    static Map<String, String> _bundledTranslations = {''');

    await Future.forEach(languages, (element) async {
        var locale = element['language']['locale'];
        var content = (await repository.fetchLocalizationForLanguage(element));
        output.writeln("\t\t'$locale': '$content',");
    });

    /*
    output.writeln('''
    // App bundled translations. NStack falls back to these initially and if user clears app data.
    static Map<String, String> _bundledTranslations = {
      'en_EN':'{"data":{"section1":{"key1":"value80493753","key2":"value2"}},"meta":{"language":{"id":56,"name":"English","locale":"en_EN","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":447,"slug":"mobile"}}}',
      'fr-BE': '{"data":{"section1":{"key1":"valeur1","key2":"valeur2"}},"meta":{"language":{"id":54,"name":"French (Belgian)","locale":"fr-BE","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":447,"slug":"mobile"}}}',
    };
''');
     */

    output.writeln('''
    };
''');

    return;
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        '.json': ['.dart']
      };
}
