import 'package:data/entities/app_config.dart';
import 'package:data/local_repository.dart';
import 'package:flutter/services.dart';
import 'package:get_version/get_version.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/interactors/interactor.dart';
import 'package:uuid/uuid.dart';

class SetGuidInteractor extends FutureInteractor<void> {
  final LocalRepository localRepository;

  SetGuidInteractor({
    @required this.localRepository,
  });

  @override
  Future<void> execute() async {
    final localGuid = await localRepository.getGuid();
    if (localGuid == null) {
      await localRepository.setGuid(Uuid().v1());
    }
  }
}
