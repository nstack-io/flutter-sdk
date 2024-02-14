import 'dart:async';

import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/message.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/src/nstack_repository.dart';
import 'package:nstack/utils/log_util.dart';

class NStackMessages {
  NStackMessages({
    required NStackRepository repository,
  }) : _repository = repository;

  final NStackRepository _repository;
  NStackAppOpenData? _appOpenData;

  final _onMessageController = StreamController<Message>.broadcast();

  Stream<Message> get onMessage => _onMessageController.stream;

  Future<void> setMessageViewed(int messageId) async {
    final appOpenData = _appOpenData;

    if (appOpenData == null) {
      LogUtil.log('Could not post message seen.');
      return;
    }

    try {
      await _repository.postMessageSeen(
        appOpenData: appOpenData,
        messageId: messageId,
      );
    } catch (e) {
      LogUtil.log('Could not post message seen.');
    }
  }

  void onAppOpen(
    AppOpen appOpen,
    NStackAppOpenData appOpenData,
  ) {
    _appOpenData = appOpenData;

    final message = appOpen.data.message;

    if (message != null) {
      _onMessageController.add(message);
    }
  }
}
