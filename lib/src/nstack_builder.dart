import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:nstack/models/language_response.dart';
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/other/extensions.dart';
import 'package:nstack/other/reserved_keywords.dart';
import 'package:nstack/src/nstack_repository.dart';
import 'package:template_engine/template_engine.dart';

/// A builder which outputs a 'nstack.dart' file. This file provides a NStack instance, type safe section key accessors and all bundled translations.
class NstackBuilder implements Builder {
  const NstackBuilder();

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    if (!buildStep.inputId.toString().contains('nstack.json')) {
      return;
    }

    /// Read the input source and parse it as JSON.
    final AssetId outputId = buildStep.inputId.changeExtension('.dart');

    // Read nstack.json file
    final Map<String, dynamic> input =
        json.decode(await buildStep.readAsString(buildStep.inputId));

    final String projectId = input['nstack_project_id'] ?? '';
    final String apiKey = input['nstack_api_key'] ?? '';
    final String env = input['nstack_env'] ?? 'prod';

    throwIf(projectId.isNullOrBlank, () {
      return ArgumentError('"nstack_project_id" not set');
    });

    throwIf(apiKey.isNullOrBlank, () {
      return ArgumentError('"nstack_api_key" not set');
    });

    throwIf(env != NStackEnv.prod.toString() && env != NStackEnv.stg.toString(),
        () {
      return ArgumentError(
          'Invalid "nstack_env", valid options: ["prod", "stg"]');
    });

    final nstackConfig = NStackConfig(
      projectId: projectId,
      apiKey: apiKey,
      env: NStackEnv.fromValue(env),
    );

    final repository = NStackRepository(nstackConfig);
    final languages = await repository.fetchAvailableLanguages();

    // Find the default language
    LocalizeIndex defaultLanguage = languages
        .where(
          (it) => it.language!.isDefault == true,
        )
        .first;
    print('Found the default Language: ${defaultLanguage.language}');

    // Fetch localization for default language
    print('Fetching default localization from: ${defaultLanguage.url}');
    final localizationResponse = await repository.fetchLocalizationForLanguage(
      defaultLanguage,
    );
    final localizationData = LocalizationData.fromJson(
      jsonDecode(localizationResponse),
    );

    final configs = {
      "projectId": projectId,
      "apiKey": apiKey,
      "env": env,
    };

    // Generate the data needed for the template
    final languagesData = prepareLocalizeIndexData(
      languages,
    );
    print(languagesData.toString());

    final translationsData = await prepareTranslationsData(
      languages,
      repository,
    );
    print(translationsData);

    final localizationAssetData = prepareLocalizationAssetData(
      localizationData.data,
    );
    print(localizationAssetData);

    final sectionsData = prepareSectionsData(
      localizationData.data,
    );
    print(sectionsData);

    // Render the Mustache template with the data
    final assetId = AssetId('nstack', 'lib/src/nstack_template.txt');

    try {
      // Read the content of the file into a string.
      String templateText = await buildStep.readAsString(assetId);

      var engine = TemplateEngine();
      engine.functionGroups.add(FunctionGroup('ListGenerator', [
        LanguageListGenerator(values: languagesData),
        BundledTranslationListGenerator(values: translationsData),
        LocalizationAssetListGenerator(values: localizationAssetData),
        SectionListGenerator(values: sectionsData),
      ]));

      var template = TextTemplate(templateText);
      var parseResult = engine.parse(template);
      var renderResult = engine.render(parseResult, configs);
      var output = renderResult.text;

      final outputFormatted = DartFormatter().format(output);

      // Write the formatted output to the .dart file
      await buildStep.writeAsString(outputId, outputFormatted);
    } catch (e) {
      // If there's an error, handle it. For example, the file might not exist or you don't have read permissions.
      print('Error reading the mustache template: $e');
    }
  }

  List<Map<String, Object>> prepareLocalizeIndexData(
      List<LocalizeIndex> languages) {
    return languages.map((lang) {
      // Construct the 'language' map and exclude all null values.
      final languageData = <String, Object>{};

      if (lang.language?.id != null) {
        languageData['id'] = lang.language!.id!;
      }

      if (lang.language?.name != null) {
        languageData['name'] = lang.language!.name!;
      }

      if (lang.language?.locale != null) {
        languageData['locale'] = lang.language!.locale!;
      }

      if (lang.language?.direction != null) {
        languageData['direction'] = lang.language!.direction!;
      }

      if (lang.language?.isDefault != null) {
        languageData['isDefault'] = lang.language!.isDefault;
      }

      if (lang.language?.isBestFit != null) {
        languageData['isBestFit'] = lang.language!.isBestFit;
      }

      // Construct the top-level map and exclude all null values.
      final resultMap = <String, Object>{
        'shouldUpdate': lang.shouldUpdate,
      };

      if (lang.id != null) {
        resultMap['id'] = lang.id!;
      }

      if (lang.url != null) {
        resultMap['url'] = lang.url!;
      }

      if (lang.lastUpdatedAt != null) {
        resultMap['lastUpdatedAt'] = lang.lastUpdatedAt!.toIso8601String();
      }

      if (languageData.isNotEmpty) {
        resultMap['language'] = languageData;
      }

      return resultMap;
    }).toList();
  }

  Future<List<Map<String, Object>>> prepareTranslationsData(
    List<LocalizeIndex> languages,
    NStackRepository repository,
  ) async {
    final translations = <Map<String, Object>>[];

    for (var language in languages) {
      // Check if 'language.language' is null before proceeding
      if (language.language != null) {
        final locale = language.language!.locale;

        // Check if 'locale' is null before proceeding
        if (locale != null) {
          final content =
              await repository.fetchLocalizationForLanguage(language);

          translations.add({
            'locale': locale,
            'content': content,
          });
        }
      }
    }

    return translations;
  }

  List<Map<String, Object>> prepareLocalizationAssetData(
      Map<String, Map<String, String>> languageJson) {
    return languageJson.keys.map((sectionKey) {
      final className = getClassNameFromSectionKey(
          sectionKey); // Implement this function based on your naming convention
      final variableName =
          '${className[0].toLowerCase()}${className.substring(1)}';
      return {
        'variableName': variableName,
        'className': className,
      };
    }).toList();
  }

  List<Map<String, Object>> prepareSectionsData(
      Map<String, Map<String, String>> languageJson) {
    List<Map<String, Object>> sections = [];

    languageJson.forEach((sectionKey, translations) {
      final className = getClassNameFromSectionKey(sectionKey);

      List<Map<String, String>> translationsList =
          translations.entries.map((e) {
        return {
          'key': e.key,
          'value': escapeSpecialCharacters(e.value),
        };
      }).toList();

      sections.add({
        'className': className,
        'sectionKey': sectionKey,
        'translations': translationsList,
      });
    });

    return sections;
  }

  /// Returns a CamelCase class name from the Localization section key
  String getClassNameFromSectionKey(String sectionKey) {
    // Check if the section key is using a reserved keyword
    final adjustedSectionKey = DartKeywords.isReserved(sectionKey)
        // Append 'Section' to the name of the original sectionKey
        ? '${sectionKey}Section'
        // Use the original sectionKey
        : sectionKey;

    // Format the name to CamelCase
    return adjustedSectionKey.replaceRange(
      0,
      1,
      sectionKey.substring(0, 1).toUpperCase(),
    );
  }

  /// Escapes single quote, double quote and dollar sign with \', \", \$
  String escapeSpecialCharacters(String stringValue) {
    return stringValue
        .replaceAll("'", "\\'")
        .replaceAll('"', '\\"')
        .replaceAll('\$', '\\\$')
        .replaceAll('\n', '\\n');
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        '.json': ['.dart']
      };
}

class LanguageListGenerator extends ExpressionFunction {
  static const String templateText = '''LocalizeIndex(
      id: {{id}},
      url: {{'url}},
      lastUpdatedAt: {{DlastUpdatedAt}},
      shouldUpdate: {{shouldUpdate}},
      language: const Language(
        id: {{language.id}},
        name: {{'language.name}},
        locale: {{'language.locale}},
        direction: {{'language.direction}},
        isDefault: {{language.isDefault}},
        isBestFit: {{language.isBestFit}},
      ),
    ),''';

  LanguageListGenerator({required List<Map<String, Object?>> values})
      : super(
            name: 'generateLanguages',
            description: 'This will generates the language list',
            function: (renderContext, parameters) {
              var output = [];
              var engine = TemplateEngine();
              engine.operatorGroups.add(
                  OperatorGroup("MakeStringOperation", [MakeStringOperator()]));
              engine.operatorGroups.add(OperatorGroup(
                  "MakeDateTimeOperation", [MakeDateTimeOperator()]));
              var template = const TextTemplate(templateText);

              var parseResult = engine.parse(template);

              for (var element in values) {
                Map<String, Object> filteredElement = {
                  for (var entry in element.entries)
                    if (entry.value != null) entry.key: entry.value!,
                };
                var renderContext = RenderContext(engine,
                    renderAsError: 'null', variables: filteredElement);
                var renderResult = parseResult.render(renderContext);
                output.add(renderResult);
              }

              return output.map((entry) {
                return entry;
              }).join('\n');
            });
}

class BundledTranslationListGenerator extends ExpressionFunction {
  static const String templateText =
      ''''{{locale}}': r\'\'\'{{content}}\'\'\',''';
  BundledTranslationListGenerator({required List<Map<String, Object?>> values})
      : super(
            name: 'generateBundledTranslations',
            description: 'This will generates the bundled translation list',
            function: (renderContext, parameters) {
              var output = [];
              var engine = TemplateEngine();
              var template = const TextTemplate(templateText);

              var parseResult = engine.parse(template);

              for (var element in values) {
                Map<String, Object> filteredElement = {
                  for (var entry in element.entries)
                    if (entry.value != null) entry.key: entry.value!,
                };
                var renderResult = engine.render(parseResult, filteredElement);
                output.add(renderResult);
              }

              return output.map((entry) {
                return entry;
              }).join('\n');
            });
}

class LocalizationAssetListGenerator extends ExpressionFunction {
  static const String templateText =
      '''final {{variableName}} = const _{{className}}();''';
  LocalizationAssetListGenerator({required List<Map<String, Object?>> values})
      : super(
            name: 'generateLocalizationAssets',
            description: 'This will generates the localization asset list',
            function: (renderContext, parameters) {
              var output = [];
              var engine = TemplateEngine();
              var template = const TextTemplate(templateText);

              var parseResult = engine.parse(template);

              for (var element in values) {
                Map<String, Object> filteredElement = {
                  for (var entry in element.entries)
                    if (entry.value != null) entry.key: entry.value!,
                };
                var renderResult = engine.render(parseResult, filteredElement);
                output.add(renderResult);
              }

              return output.map((entry) {
                return entry;
              }).join('\n');
            });
}

class SectionListGenerator extends ExpressionFunction {
  static const String sectionListTemplateText =
      '''class _{{className}} extends SectionKeyDelegate {
        const _{{className}}() : super('{{sectionKey}}');
        {{translations}}
    }''';
  static const String sectionAttributeListTemplateText =
      '''String get {{key}} => get('{{key}}', "{{value}}");''';
  SectionListGenerator({required List<Map<String, Object>> values})
      : super(
            name: 'generateSections',
            description: 'This will generates the section list',
            function: (renderContext, parameters) {
              var output = [];
              var engine = TemplateEngine();

              var sectionListTemplate =
                  const TextTemplate(sectionListTemplateText);
              var sectionListParseResult = engine.parse(sectionListTemplate);

              var sectionAttributListTemplate =
                  const TextTemplate(sectionAttributeListTemplateText);
              var sectionAttibuteListParseResult =
                  engine.parse(sectionAttributListTemplate);

              for (var element in values) {
                var sectionAttributListOutput = [];
                var translations =
                    element['translations'] as List<Map<String, Object>>;
                for (var translation in translations) {
                  var renderResult = engine.render(
                      sectionAttibuteListParseResult, translation);
                  sectionAttributListOutput.add(renderResult.text);
                }
                element['translations'] = sectionAttributListOutput.join('\n');

                var renderResult =
                    engine.render(sectionListParseResult, element);
                output.add(renderResult);
              }

              return output.join('\n');
            });
}

class MakeStringOperator extends PrefixOperator {
  MakeStringOperator()
      : super(
            operator: '\'',
            description: "Add '' around the tag",
            function: (value) {
              return '\'$value\'';
            },
            expressionExample: '{{\'tag}}',
            expressionExampleResult: '\'tag\'');
}

class MakeDateTimeOperator extends PrefixOperator {
  MakeDateTimeOperator()
      : super(
            operator: 'D',
            description: "Make DateTime.parse(tag)",
            function: (value) {
              return 'DateTime.parse(\'$value\')';
            },
            expressionExample: '{{Dtag}}',
            expressionExampleResult: 'DateTime.parse(tag)');
}
