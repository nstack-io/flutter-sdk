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
import 'package:nstack/utils/log_util.dart';
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
    final outputId = buildStep.inputId.changeExtension('.dart');

    // Read nstack.json file
    final Map<String, dynamic> input =
        json.decode(await buildStep.readAsString(buildStep.inputId));

    final String projectId = input['nstack_project_id'] ?? '';
    final String apiKey = input['nstack_api_key'] ?? '';
    final String env = input['nstack_env'] ?? 'production';

    if (projectId.isNullOrBlank) {
      throw ArgumentError('"nstack_project_id" not set');
    }

    if (apiKey.isNullOrBlank) {
      throw ArgumentError('"nstack_api_key" not set');
    }

    final nstackConfig = NStackConfig(
      projectId: projectId,
      apiKey: apiKey,
      env: NStackEnvironment.fromValue(env),
    );

    final configs = {
      'projectId': projectId,
      'apiKey': apiKey,
      'env': env,
    };

    // Read the template of the file into a string.
    final assetId = AssetId('nstack', 'lib/templates/nstack_template.txt');
    final templateText = await buildStep.readAsString(assetId);

    final repository = NStackRepository(nstackConfig);
    final languages = await repository.fetchAvailableLanguages();

    // Check the languages and generate the rendered text using the template
    final renderedOutput;
    if (languages.isEmpty) {
      // There is no language rendering without the localization
      renderedOutput = getRenderedResult(
        templateText,
        configs,
        [],
        [],
        [],
        [],
      );
    } else {
      // Find the default language
      final defaultLanguage = languages.firstWhere(
        (e) => e.language.isDefault,
      );

      // Fetch localization for default language
      final localizationResponse =
          await repository.fetchLocalizationForLanguage(
        defaultLanguage.url,
      );

      final localizationData = LocalizationData.fromJson(
        jsonDecode(localizationResponse),
      );

      // Generate the data needed for the template
      final languagesData = prepareLocalizeIndexData(
        languages,
      );

      final translationsData = await prepareTranslationsData(
        languages,
        repository,
      );

      final localizationAssetData = prepareLocalizationAssetData(
        localizationData.data,
      );

      final sectionsData = prepareSectionsData(
        localizationData.data,
      );

      renderedOutput = getRenderedResult(
        templateText,
        configs,
        languagesData,
        translationsData,
        localizationAssetData,
        sectionsData,
      );
    }

    final outputFormatted = DartFormatter().format(renderedOutput);

    // Write the formatted output to the .dart file
    await buildStep.writeAsString(outputId, outputFormatted);
  }

  String getRenderedResult(
    String templateText,
    Map<String, String> configs,
    List<Map<String, Object>> languagesData,
    List<Map<String, Object>> translationsData,
    List<Map<String, Object>> localizationAssetData,
    List<Map<String, Object>> sectionsData,
  ) {
    try {
      final engine = TemplateEngine();
      engine.functionGroups.add(
        FunctionGroup('ListGenerator', [
          LanguageListGenerator(values: languagesData),
          BundledTranslationListGenerator(values: translationsData),
          LocalizationAssetListGenerator(values: localizationAssetData),
          SectionListGenerator(values: sectionsData),
        ]),
      );

      final template = TextTemplate(templateText);
      final parseResult = engine.parse(template);
      final renderResult = engine.render(parseResult, configs);
      final output = renderResult.text;
      return output;
    } catch (e) {
      LogUtil.log(e);
      return '';
    }
  }

  List<Map<String, Object>> prepareLocalizeIndexData(
    List<LocalizeIndex> languages,
  ) {
    return languages.map((lang) {
      // Construct the 'language' map and exclude all null values.
      final languageData = <String, Object>{
        'id': lang.language.id,
        'name': lang.language.name,
        'locale': lang.language.locale,
        'direction': lang.language.direction,
        'isDefault': lang.language.isDefault,
        'isBestFit': lang.language.isBestFit,
      };

      // Construct the top-level map and exclude all null values.
      final resultMap = <String, Object>{
        'shouldUpdate': lang.shouldUpdate,
        'id': lang.id,
        'url': lang.url,
        'lastUpdatedAt': lang.lastUpdatedAt.toIso8601String(),
        'language': languageData,
      };

      return resultMap;
    }).toList();
  }

  Future<List<Map<String, Object>>> prepareTranslationsData(
    List<LocalizeIndex> languages,
    NStackRepository repository,
  ) async {
    final translations = <Map<String, Object>>[];

    for (final language in languages) {
      final locale = language.language.locale;
      final content =
          await repository.fetchLocalizationForLanguage(language.url);

      translations.add({
        'locale': locale,
        'content': content,
      });
    }

    return translations;
  }

  List<Map<String, Object>> prepareLocalizationAssetData(
    Map<String, Map<String, String>> languageJson,
  ) {
    return languageJson.keys.map((sectionKey) {
      final className = getClassNameFromSectionKey(
        sectionKey,
      ); // Implement this function based on your naming convention
      final variableName =
          '${className[0].toLowerCase()}${className.substring(1)}';
      return {
        'variableName': variableName,
        'className': className,
      };
    }).toList();
  }

  List<Map<String, Object>> prepareSectionsData(
    Map<String, Map<String, String>> languageJson,
  ) {
    final sections = <Map<String, Object>>[];

    languageJson.forEach((sectionKey, translations) {
      final className = getClassNameFromSectionKey(sectionKey);

      final translationsList = translations.entries.map((e) {
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
        '.json': ['.dart'],
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
            final output = [];
            final engine = TemplateEngine();
            engine.operatorGroups.add(
              OperatorGroup('MakeStringOperation', [MakeStringOperator()]),
            );
            engine.operatorGroups.add(
              OperatorGroup(
                'MakeDateTimeOperation',
                [MakeDateTimeOperator()],
              ),
            );
            const template = TextTemplate(templateText);

            final parseResult = engine.parse(template);

            for (final element in values) {
              final filteredElement = <String, Object>{
                for (final entry in element.entries)
                  if (entry.value != null) entry.key: entry.value!,
              };
              final renderContext = RenderContext(
                engine,
                renderAsError: 'null',
                variables: filteredElement,
              );
              final renderResult = parseResult.render(renderContext);
              output.add(renderResult);
            }

            return output.map((entry) {
              return entry;
            }).join('\n');
          },
        );
}

class BundledTranslationListGenerator extends ExpressionFunction {
  static const String templateText =
      ''''{{locale}}': r\'\'\'{{content}}\'\'\',''';
  BundledTranslationListGenerator({required List<Map<String, Object?>> values})
      : super(
          name: 'generateBundledTranslations',
          description: 'This will generates the bundled translation list',
          function: (renderContext, parameters) {
            final output = [];
            final engine = TemplateEngine();
            const template = TextTemplate(templateText);

            final parseResult = engine.parse(template);

            for (final element in values) {
              final filteredElement = <String, Object>{
                for (final entry in element.entries)
                  if (entry.value != null) entry.key: entry.value!,
              };
              final renderResult = engine.render(parseResult, filteredElement);
              output.add(renderResult);
            }

            return output.map((entry) {
              return entry;
            }).join('\n');
          },
        );
}

class LocalizationAssetListGenerator extends ExpressionFunction {
  static const String templateText =
      '''final {{variableName}} = const _{{className}}();''';
  LocalizationAssetListGenerator({required List<Map<String, Object?>> values})
      : super(
          name: 'generateLocalizationAssets',
          description: 'This will generates the localization asset list',
          function: (renderContext, parameters) {
            final output = [];
            final engine = TemplateEngine();
            const template = TextTemplate(templateText);

            final parseResult = engine.parse(template);

            for (final element in values) {
              final filteredElement = <String, Object>{
                for (final entry in element.entries)
                  if (entry.value != null) entry.key: entry.value!,
              };
              final renderResult = engine.render(parseResult, filteredElement);
              output.add(renderResult);
            }

            return output.map((entry) {
              return entry;
            }).join('\n');
          },
        );
}

class SectionListGenerator extends ExpressionFunction {
  static const String sectionListTemplateText =
      '''class _{{className}} extends SectionKeyDelegate {
        const _{{className}}() : super('{{sectionKey}}');
        {{translations}}
    }''';
  static const String sectionAttributeListTemplateText =
      '''String get {{key}} => get('{{key}}', '{{value}}');''';
  SectionListGenerator({required List<Map<String, Object>> values})
      : super(
          name: 'generateSections',
          description: 'This will generates the section list',
          function: (renderContext, parameters) {
            final output = [];
            final engine = TemplateEngine();

            const sectionListTemplate = TextTemplate(sectionListTemplateText);
            final sectionListParseResult = engine.parse(sectionListTemplate);

            const sectionAttributListTemplate =
                TextTemplate(sectionAttributeListTemplateText);
            final sectionAttibuteListParseResult =
                engine.parse(sectionAttributListTemplate);

            for (final element in values) {
              final sectionAttributListOutput = [];
              final translations =
                  element['translations'] as List<Map<String, Object>>;
              for (final translation in translations) {
                final renderResult =
                    engine.render(sectionAttibuteListParseResult, translation);
                sectionAttributListOutput.add(renderResult.text);
              }
              element['translations'] = sectionAttributListOutput.join('\n');

              final renderResult =
                  engine.render(sectionListParseResult, element);
              output.add(renderResult);
            }

            return output.join('\n');
          },
        );
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
          expressionExampleResult: '\'tag\'',
        );
}

class MakeDateTimeOperator extends PrefixOperator {
  MakeDateTimeOperator()
      : super(
          operator: 'D',
          description: 'Make DateTime.parse(tag)',
          function: (value) {
            return 'DateTime.parse(\'$value\')';
          },
          expressionExample: '{{Dtag}}',
          expressionExampleResult: 'DateTime.parse(tag)',
        );
}
