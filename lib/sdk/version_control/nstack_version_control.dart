import 'dart:async';

import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/models/update.dart';
import 'package:nstack/models/update_view_request.dart';
import 'package:nstack/src/nstack_repository.dart';
import 'package:nstack/utils/log_util.dart';

class NStackVersionControl {
  final NStackRepository _repository;
  NStackAppOpenData? _appOpenData;

  final _onVersionUpdateNotification = StreamController<Update>.broadcast();

  Stream<Update> get onVersionUpdateNotification =>
      _onVersionUpdateNotification.stream;

  NStackVersionControl({
    required NStackRepository repository,
  }) : _repository = repository;

  Future<void> setUpdateInfoViewed({
    required int updateId,
    required UpdateViewAnswer answer,
    required UpdateViewType type,
  }) async {
    final appOpenData = _appOpenData;

    if (appOpenData == null) {
      LogUtil.log('NStack --> Could not post version info seen.');
      return;
    }

    final updateViewRequest = UpdateViewRequest(
      guid: appOpenData.guid,
      updateId: updateId.toString(),
      answer: answer,
      type: type,
    );

    try {
      await _repository.postUpdateInfoSeen(
        updateViewRequest: updateViewRequest,
      );
    } catch (e) {
      LogUtil.log('NStack --> Could not post version info seen.');
    }
  }

  void onAppOpen(
    AppOpen appOpen,
    NStackAppOpenData appOpenData,
  ) {
    _appOpenData = appOpenData;

    final update = appOpen.data.update;

    if (update != null) {
      _onVersionUpdateNotification.add(update);
    }
  }
}
