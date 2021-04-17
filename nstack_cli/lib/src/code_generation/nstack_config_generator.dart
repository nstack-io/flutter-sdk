import 'dart:convert';
import 'dart:io';

import 'package:nstack_api/entities/nstack_api_config.dart';

import '../constants.dart';

class NStackConfigGenerator {
  final NStackApiConfig config;

  NStackConfigGenerator(this.config);

  Future<void> run() async {
    final fileName = 'nstack.json';
    final filePath = '$nStackAssetsPath';
    final encoder = JsonEncoder.withIndent('  ');
    await File('$filePath/$fileName').writeAsString(
      encoder.convert(config.toJson()),
    );
  }
}