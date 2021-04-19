import 'package:nstack_sdk/src/interactors/interactor.dart';
import 'package:nstack_sdk/src/data/repository/local_repository.dart';
import 'package:uuid/uuid.dart';

class SetGuidInteractor extends FutureInteractor<void> {
  final LocalRepository localRepository;

  SetGuidInteractor({
    required this.localRepository,
  });

  @override
  Future<void> execute() async {
    final localGuid = await localRepository.getGuid();
    if (localGuid.isEmpty) {
      await localRepository.setGuid(Uuid().v1());
    }
  }
}
