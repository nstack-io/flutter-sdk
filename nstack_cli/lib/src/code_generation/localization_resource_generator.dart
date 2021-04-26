import 'dart:convert';
import 'dart:io';

import 'package:nstack_api/entities/localize_resource.dart';

import '../constants.dart';

class LocalizationResourceGenerator {
  final LocalizeResource resource;

  LocalizationResourceGenerator(this.resource);

  Future<void> run() async {
    final fileName = 'default_localization.json';
    final filePath = '$nStackAssetsPath';
    final encoder = JsonEncoder.withIndent('  ');
    await Directory(filePath).create(recursive: true);
    await File('$filePath/$fileName').writeAsString(
      encoder.convert(resource.toJson()),
    );
  }
}
