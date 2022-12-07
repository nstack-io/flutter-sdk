import 'package:nstack/src/nstack_repository.dart';

class NStackMessages {
  final NStackRepository _repository;

  NStackMessages({
    required NStackRepository repository,
  }) : _repository = repository;

  void setMessageViewed(int messageId) {
    // TODO: Set message viewed
  }
}
