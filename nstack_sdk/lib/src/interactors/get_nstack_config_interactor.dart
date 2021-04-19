import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:nstack_sdk/src/data/entities/nstack_config.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';

class GetNStackConfigInteractor extends FutureInteractor<NStackConfig> {
  @override
  Future<NStackConfig> execute() async {
    return await rootBundle
        .loadString('assets/nstack/nstack.json')
        .then((value) => NStackConfig.fromJson(jsonDecode(value)));
  }
}
