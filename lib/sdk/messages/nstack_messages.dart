import 'dart:async';

import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/message.dart';
import 'package:nstack/src/nstack_repository.dart';

class NStackMessages {
  final NStackRepository _repository;

  // There's no dispose / close method
  // ignore: close_sinks
  final _onMessage = StreamController<Message>.broadcast();

  Stream<Message> get onMessage => _onMessage.stream;

  NStackMessages({
    required NStackRepository repository,
  }) : _repository = repository;

  Future<void> setMessageViewed(int messageId) async {
    // TODO: Set message viewed
  }

  void onAppOpen(AppOpen appOpen) {
    final message = appOpen.data.message;

    if (message != null) {
      _onMessage.add(message);
    }
  }
}
