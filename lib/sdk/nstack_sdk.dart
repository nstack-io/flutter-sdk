import 'dart:io';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/widgets.dart';
import 'package:nstack/models/app_open.dart';
import 'package:nstack/models/app_open_platform.dart';
import 'package:nstack/models/nstack_appopen_data.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/sdk/localization/nstack_localization.dart';
import 'package:nstack/sdk/messages/nstack_messages.dart';
import 'package:nstack/sdk/version_control/nstack_version_control.dart';
import 'package:nstack/src/nstack_repository.dart';
import 'package:nstack/src/repository.dart';
import 'package:nstack/utils/log_util.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// The core class containing all the NStack features.
class NStackSdk {
  final NStackConfig config;

  final String _prefsKeyLastUpdated = 'nstack_last_updated';
  final String _prefsKeyGuid = 'nstack_guid';

  late final NStackRepository _repository;
  late NStackAppOpenData _appOpenData;

  final NStackLocalization localization;
  late final NStackMessages messages;
  late final NStackVersionControl appVersionControl;

  var _appOpenCalled = false;

  NStackSdk({
    required this.config,
    required this.localization,
  }) {
    _repository = NStackRepository(config);
    messages = NStackMessages(repository: _repository);
    appVersionControl = NStackVersionControl(repository: _repository);
  }

  Future<void> _setupAppOpenData(AppOpenPlatform? platformOverride) async {
    WidgetsFlutterBinding.ensureInitialized();

    final prefs = await SharedPreferences.getInstance();
    String projectVersion;
    String guid;
    String lastUpdated;
    AppOpenPlatform platform;

    projectVersion = await PackageInfo.fromPlatform()
        .then((PackageInfo info) => info.version)
        .catchError((error) => '1');

    guid = prefs.getString(_prefsKeyGuid) ?? '';
    if (guid.isEmpty) {
      guid = const Uuid().v1();
      await prefs.setString(_prefsKeyGuid, guid);
    }

    lastUpdated = prefs.getString(_prefsKeyLastUpdated) ?? '';
    if (lastUpdated.isEmpty) {
      lastUpdated = DateTime.utc(1980, 1, 1).toIso8601String();
      await prefs.setString(_prefsKeyLastUpdated, lastUpdated);
    }

    if (!kIsWeb) {
      if (Platform.isAndroid) {
        platform = AppOpenPlatform.android;
      } else if (Platform.isIOS) {
        platform = AppOpenPlatform.ios;
      } else {
        platform = AppOpenPlatform.unknown;
      }
    } else {
      platform = AppOpenPlatform.web;
    }

    _appOpenData = NStackAppOpenData(
      platform: platformOverride ?? platform,
      guid: guid,
      lastUpdated: lastUpdated,
      oldVersion: projectVersion,
      version: projectVersion,
    );
  }

  Future<bool> init() async {
    final localizationInit = await localization.init();
    return localizationInit;
  }

  Future<AppOpenResult> appOpen(
    Locale defaultLocale, {
    AppOpenPlatform? platformOverride,
  }) async {
    try {
      if (_appOpenCalled) {
        LogUtil.log(
          'NStack.appOpen() has already been called, returning early...',
        );
        return AppOpenResult.success;
      }

      await _setupAppOpenData(platformOverride);

      final selectedLanguageTag =
          await localization.getUserSelectedLanguageTag() ??
              defaultLocale.toLanguageTag();

      LogUtil.log('NStack --> Calling App Open...');
      final result = await _repository.postAppOpen(
        acceptHeader: selectedLanguageTag,
        appOpenData: _appOpenData,
        devMode: kDebugMode,
        testMode: false,
      );

      final appOpen = AppOpen.fromJson(result);

      await localization.updateOnAppOpen(appOpen);
      messages.onAppOpen(appOpen, _appOpenData);
      appVersionControl.onAppOpen(appOpen, _appOpenData);

      LogUtil.log('NStack --> Updated localization.');

      _appOpenCalled = true;

      return AppOpenResult.success;
    } catch (e, s) {
      _appOpenCalled = true;
      LocalizationRepository().switchBundledLocalization(
        defaultLocale.toLanguageTag(),
      );
      LogUtil.log('NStack --> App Open failed because of: ${e.toString()}');
      LogUtil.log(s.toString());
      return AppOpenResult.failed;
    }
  }
}

enum AppOpenResult { success, failed }
