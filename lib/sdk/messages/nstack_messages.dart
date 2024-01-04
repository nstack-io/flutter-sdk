import 'dart:async';

import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/message.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/src/nstack_repository.dart';

class NStackMessages {
  final NStackRepository _repository;
  late final NStackAppOpenData _appOpenData;

  // There's no dispose / close method
  // ignore: close_sinks
  final _onMessage = StreamController<Message>.broadcast();

  Stream<Message> get onMessage => _onMessage.stream;

  NStackMessages({
    required NStackRepository repository,
  }) : _repository = repository;

  Future<void> setMessageViewed(int messageId) {
    return _repository
        .postMessageSeen(
      appOpenData: _appOpenData,
      messageId: messageId,
    )
        .catchError((e, s) {
      print(
        'NStack --> Couldnt post message seen because of: $e \n $s',
      );
    });
  }

  void onAppOpen(
    AppOpen appOpen,
    NStackAppOpenData appOpenData,
  ) {
    _appOpenData = appOpenData;

    final message = appOpen.data.message;

    if (message != null) {
      _onMessage.add(message);
    }
  }
}
