import 'dart:io';

import 'package:nstack_cli/src/data/entities/nstack_config.dart';
import 'package:yaml/yaml.dart';

import '../constants.dart';
import '../interactor.dart';
import 'doctor_command.dart';

class DoctorInteractor implements FutureInteractor<void> {
  @override
  Future<void> execute({DoctorCommand? command}) async {
    final config = await getNStackConfig();
    final pubspecYaml = await File('pubspec.yaml')
        .readAsString()
        .then((value) => loadYaml(value));
    final pubspecYamlAssets = (pubspecYaml['flutter']['assets'] ?? []) as List;
    final pubspecYamlDependencies = (pubspecYaml['dependencies'] ?? {}) as Map;

    final hasConfigFile = await hasNStackConfigFile();
    final hasConfigId = config.applicationId.isNotEmpty;
    final hasConfigKey = config.restApiKey.isNotEmpty;
    final hasYamlAssets = pubspecYamlAssets.contains('assets/nstack/') ||
        pubspecYamlAssets.contains('assets/nstack');
    final hasYamlDependencies =
        pubspecYamlDependencies.containsKey('nstack_sdk');

    // print('Doctor summary (to see all details, run nstack_cli doctor --verbose):');
    print('Doctor summary:');

    final issues = List<String>.empty(growable: true);

    if (!hasConfigFile) {
      issues.add('$nStackConfigFilePath not found');
    }
    if (hasConfigFile && !hasConfigId) {
      issues.add('NStack application id missing or invalid');
    }
    if (hasConfigFile && !hasConfigKey) {
      issues.add('NStack rest api key missing or invalid');
    }
    if (!hasYamlAssets) {
      issues.add(
          'NStack assets reference not found. Add "- assets/nstack/" under your assets section in your pubspec.yaml file.');
    }
    if (!hasYamlDependencies) {
      issues.add(
          'NStack dependency not found. Add "nstack_sdk" under your dependencies section in your pubspec.yaml file.');
    }

    if (issues.isEmpty) {
      print('[✓] NStack configuration');
    } else {
      print('[!] NStack configuration');
    }

    if (command?.verbose == true) {
      issues.forEach((issue) {
        print('     • $issue');
      });
    }

    if (issues.length == 1) {
      print('\nDoctor found 1 issue!');
    } else if (issues.length > 1) {
      print('\nDoctor found ${issues.length} issues!');
    } else {
      print('\nDoctor found no issues!');
    }
  }
}
