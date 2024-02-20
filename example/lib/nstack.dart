/*
 * ❌ GENERATED BY NSTACK, DO NOT MODIFY THIS FILE BY HAND!
 * 
 * To update this file, run
 * dart run build_runner build
 * 
 * 💡 FEATURES
 * 
 * To access the NStack features:
 * - Use the BuildContext extension: `context.nstack`.
 * 
 * 🔤 LOCALIZATION
 * 
 * To access localization in your UI you can use an extension for BuildContexts:
 * `context.localization.assets.yourSection.yourKey`.
 *
 * 💬 MESSAGES
 *  
 * Use `NStackMessageWidget` to access the Messages feature.
 *
 * [NStackMessageWidget.handlerConfiguration] allows you to configure how incoming messages are handled.
 * - Use `DefaultNstackHandlerConfiguration` if you want to display a default adaptive dialog
 * - Or use `CustomNstackHandlerConfiguration` if you want to handle the message yourself.
 *   it has the `onMessage` callback that provides you with the received `Message` object.
 *
 * 🔖 VERSION CONTROL
 * 
 * Use `NStackVersionControlWidget` to enable version control feature.
 * - Pass the `onVersionUpdateNotification` function to get the `update` object and handle the update dialog yourself.
 * - Or, to display a default adaptive dialog, set the `onVersionUpdateNotification` function to null
 *   and configure the localization strings from the NStack console.
 *
 * 🛠️ IMPORTANT NOTES FOR SDK USERS
 * 
 * The default environment for the NStack SDK is `prod`.
 * As an SDK user, you typically do not need to set this value.
 * The `stg` environment is for NStack's internal use and should not be used in your `nstack.json`.
 */

/*
* Linter Exception
* The following linter exceptions have been deliberately set for specific reasons:
*/
// ignore_for_file: unnecessary_string_escapes
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_cast

import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nstack/models/app_open_platform.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/message.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/models/nstack_version_update.dart';
import 'package:nstack/models/nstack_version_update_view_request.dart';
import 'package:nstack/partial/section_key_delegate.dart';
import 'package:nstack/sdk/localization/nstack_localization.dart';
import 'package:nstack/sdk/nstack_sdk.dart';
import 'package:nstack/utils/log_util.dart';
import 'package:url_launcher/url_launcher.dart';

export 'package:nstack/models/app_open_platform.dart';

NStackSdk createNStackSdk() {
  // Define your NStackConfig with hardcoded values
  var config = NStackConfig(
    projectId: 'h6wJremI2TGFM88gbLkdyljWQuwf2hxhxvCH',
    apiKey: 'zp2S18H32b67eYAbRQh94tVw76ZzaKKXlHjd',
    env: NStackEnvironment.fromValue('production'),
  );

  final languages = [
    LocalizeIndex(
      id: 1216,
      url: 'https://nstack.io/api/v2/content/localize/resources/1216',
      lastUpdatedAt: DateTime.parse('2024-01-23T08:16:25.000Z'),
      shouldUpdate: true,
      language: const Language(
        id: 56,
        name: 'English',
        locale: 'en-EN',
        direction: 'LRM',
        isDefault: true,
        isBestFit: true,
      ),
    ),
    LocalizeIndex(
      id: 1270,
      url: 'https://nstack.io/api/v2/content/localize/resources/1270',
      lastUpdatedAt: DateTime.parse('2024-01-23T08:16:41.000Z'),
      shouldUpdate: true,
      language: const Language(
        id: 7,
        name: 'German (Austria)',
        locale: 'de-AT',
        direction: 'LRM',
        isDefault: false,
        isBestFit: false,
      ),
    ),
  ];

  const bundledTranslations = {
    'en-EN':
        r'''{"data":{"default":{"title":"NStack SDK Demo","test":"test"},"test":{"testDollarSign":"$testing again new","testSingleQuotationMark":"'testing'","testDoubleQuotationMark":"\"testing\"","testMultipleLines":"testing\nmultiple\nlines\nupdated","okButtonTitle":"Done","openUrlButtonTitle":"Open","dialogTitle":"Message"}},"meta":{"language":{"id":56,"name":"English","locale":"en-EN","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":515,"slug":"mobile"}}}''',
    'de-AT':
        r'''{"data":{"default":{"title":"NStack SDK Demo","test":"pr\u00fcfen"},"test":{"testDollarSign":"$Testen Sie noch einmal neu","testSingleQuotationMark":"'testen'","testDoubleQuotationMark":"\"testen\"","testMultipleLines":"testen\nmehrere\nLinien\nAktualisiert","okButtonTitle":"Erledigt","openUrlButtonTitle":"Offen","dialogTitle":"Nachricht"}},"meta":{"language":{"id":7,"name":"German (Austria)","locale":"de-AT","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":515,"slug":"mobile"}}}''',
  };

  // Create an instance of NStackLocalization with the predefined values
  final nstackLocalization = NStackLocalization<NStackLocalizationAsset>(
    config: config,
    assets: const NStackLocalizationAsset(),
    availableLanguages: languages as List<LocalizeIndex>,
    bundledTranslations: bundledTranslations as Map<String, String>,
    pickedLanguageLocale: '',
  );

  // Return the NStackSdk instance
  return NStackSdk(
    config: config,
    localization: nstackLocalization,
  );
}

/*
*
* Localization & Localization Section Keys
* 
*/

class NStackLocalizationAsset {
  final defaultSection = const _DefaultSection();
  final test = const _Test();
  const NStackLocalizationAsset();
}

class _DefaultSection extends SectionKeyDelegate {
  const _DefaultSection() : super('default');
  String get title => get('title', 'NStack SDK Demo');
  String get test => get('test', 'test');
}

class _Test extends SectionKeyDelegate {
  const _Test() : super('test');
  String get testDollarSign => get('testDollarSign', '\$testing again new');
  String get testSingleQuotationMark =>
      get('testSingleQuotationMark', '\'testing\'');
  String get testDoubleQuotationMark =>
      get('testDoubleQuotationMark', '\"testing\"');
  String get testMultipleLines =>
      get('testMultipleLines', 'testing\nmultiple\nlines\nupdated');
  String get okButtonTitle => get('okButtonTitle', 'Done');
  String get openUrlButtonTitle => get('openUrlButtonTitle', 'Open');
  String get dialogTitle => get('dialogTitle', 'Message');
}

/*
 *
 * NStack Flutter Widgets
 * 
 */
class NStackScope extends InheritedWidget {
  final NStackState state;
  final String checksum;

  const NStackScope({
    Key? key,
    required Widget child,
    required this.state,
    required this.checksum,
  }) : super(key: key, child: child);

  static NStackState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<NStackScope>()!.state;

  @override
  bool updateShouldNotify(NStackScope oldWidget) =>
      checksum != oldWidget.checksum;
}

class NStackWidget extends StatefulWidget {
  final Widget child;
  final AppOpenPlatform? platformOverride;
  final VoidCallback? onComplete;

  const NStackWidget({
    Key? key,
    required this.child,
    this.platformOverride,
    this.onComplete,
  }) : super(key: key);

  @override
  NStackState createState() => NStackState();
}

class NStackState extends State<NStackWidget> {
  late final NStackSdk _nstack;
  late final NStackLocalization<NStackLocalizationAsset> localization;
  late Future<bool> _nstackInitFuture;
  late final StreamSubscription _localeChangedSubscription;

  @override
  void initState() {
    super.initState();

    initNStack();

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _nstack
            .appOpen(
              Localizations.localeOf(context),
              platformOverride: widget.platformOverride,
            )
            .whenComplete(() => widget.onComplete?.call());
      },
    );
  }

  void initNStack() {
    _nstack = createNStackSdk();
    _nstackInitFuture = _nstack.init();
    localization =
        _nstack.localization as NStackLocalization<NStackLocalizationAsset>;
    _localeChangedSubscription =
        _nstack.localization.onLocaleChanged.listen(_onLocaleChanged);
  }

  void _onLocaleChanged(Locale locale) {
    setState(() {});
  }

  @Deprecated('Use `NStack.localization.changeLocalization` instead')
  Future<void> changeLanguage(Locale locale) {
    return _nstack.localization
        .changeLocalization(locale)
        .whenComplete(() => setState(() {}));
  }

  @override
  void dispose() {
    _localeChangedSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _nstackInitFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return NStackScope(
            state: this,
            checksum: _nstack.localization.checksum,
            child: widget.child,
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}

/*
 *
 * NStack Message
 * 
 */

sealed class NStackHandlerConfiguration {}

final class DefaultNstackHandlerConfiguration
    implements NStackHandlerConfiguration {
  /// Title of the OK button.
  final String? okButtonTitle;

  /// Title of the Open URL button.
  final String? openUrlButtonTitle;

  /// Title of the dialog.
  final String? dialogTitle;

  DefaultNstackHandlerConfiguration({
    this.okButtonTitle,
    this.openUrlButtonTitle,
    this.dialogTitle,
  });
}

final class CustomNstackHandlerConfiguration
    implements NStackHandlerConfiguration {
  /// Callback to customize the message UI.
  final void Function(Message message) onMessage;

  CustomNstackHandlerConfiguration({
    required this.onMessage,
  });
}

class NStackMessageWidget extends StatefulWidget {
  const NStackMessageWidget({
    super.key,
    required this.handlerConfiguration,
    this.child,
  });

  /// Configuration of how the message will be handled.
  /// It can be either `DefaultNstackHandlerConfiguration` or `CustomNstackHandlerConfiguration`.
  final NStackHandlerConfiguration handlerConfiguration;

  final Widget? child;

  @override
  State<StatefulWidget> createState() => _NStackMessageWidgetSate();
}

class _NStackMessageWidgetSate extends State<NStackMessageWidget> {
  StreamSubscription? _messageSubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _messageSubscription?.cancel();
    _messageSubscription = context.nstack.messages.onMessage.listen(_onMessage);
  }

  @override
  void dispose() {
    _messageSubscription?.cancel();
    super.dispose();
  }

  void _onMessage(Message message) {
    final messageOptions = widget.handlerConfiguration;
    switch (messageOptions) {
      case CustomNstackHandlerConfiguration():
        messageOptions.onMessage(message);
      case DefaultNstackHandlerConfiguration():
        _NStackMessageDialog.show(
          context,
          message: message,
          okButtonTitle: messageOptions.okButtonTitle,
          openUrlButtonTitle: messageOptions.openUrlButtonTitle,
          dialogTitle: messageOptions.dialogTitle,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}

/*
 *
 * NStack Version Control
 * 
 */

class NStackVersionControlWidget extends StatefulWidget {
  const NStackVersionControlWidget({
    super.key,
    this.child,
    this.onVersionUpdateNotification,
  });

  final Widget? child;
  final void Function(NStackVersionUpdate)? onVersionUpdateNotification;

  @override
  State<StatefulWidget> createState() => _NStackVersionControlWidgetSate();
}

class _NStackVersionControlWidgetSate
    extends State<NStackVersionControlWidget> {
  StreamSubscription? _versionInfoSubscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _versionInfoSubscription?.cancel();
    _versionInfoSubscription = context
        .nstack.appVersionControl.onVersionUpdateNotification
        .listen(_onVersionUpdateNotification);
  }

  @override
  void dispose() {
    _versionInfoSubscription?.cancel();
    super.dispose();
  }

  void _onVersionUpdateNotification(NStackVersionUpdate update_info) {
    if (widget.onVersionUpdateNotification != null) {
      widget.onVersionUpdateNotification!(update_info);
      return;
    }
    _NStackAppUpdateInfoDialog.show(context, update_info: update_info);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}

/*
 *
 * NStack Private Widgets
 * 
 */

class _NStackMessageDialog extends StatelessWidget {
  static const _okButtonTitleFallback = 'OK';
  static const _openUrlButtonTitleFallback = 'Open URL';
  static const _dialogTitleFallback = 'Message';

  const _NStackMessageDialog._({
    Key? key,
    required this.message,
    this.okButtonTitle = _okButtonTitleFallback,
    this.openUrlButtonTitle = _openUrlButtonTitleFallback,
    this.dialogTitle = _dialogTitleFallback,
  }) : super(key: key);

  /// Message that was received.
  final Message message;

  /// Title of the OK button.
  final String okButtonTitle;

  /// Title of the Open URL button.
  final String openUrlButtonTitle;

  /// Title of the dialog.
  final String? dialogTitle;

  /// Displays the dialog.
  static Future<void> show(
    BuildContext context, {
    required Message message,
    String? okButtonTitle,
    String? openUrlButtonTitle,
    String? dialogTitle = _dialogTitleFallback,
  }) {
    Widget builder(BuildContext context) {
      return _NStackMessageDialog._(
        message: message,
        okButtonTitle: okButtonTitle ??
            message.localization?.okBtn ??
            _okButtonTitleFallback,
        openUrlButtonTitle: openUrlButtonTitle ??
            message.localization?.urlBtn ??
            _openUrlButtonTitleFallback,
        dialogTitle: dialogTitle,
      );
    }

    final showDialog = showAdaptiveDialog(
      context: context,
      builder: builder,
    );
    return showDialog.whenComplete(() {
      context.nstack.messages.setMessageViewed(message.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final titleWidget = dialogTitle != null ? Text(dialogTitle!) : null;
    final messageWidget = Text(message.message);

    final okWidget = Text(okButtonTitle);

    final messageUrl = message.url;
    final uri = messageUrl != null ? Uri.tryParse(messageUrl) : null;
    final isUriValid = uri != null;

    final urlLaunchAction = () async {
      try {
        await launchUrl(uri!);
      } catch (e) {
        LogUtil.log(
          'Filed to open URL with error: ${e.toString()}',
          'NStackMessage',
        );
      }

      if (context.mounted) {
        Navigator.of(context).pop();
      }
    };

    return AlertDialog.adaptive(
      title: titleWidget,
      content: messageWidget,
      actions: [
        if (isUriValid)
          _AdaptiveDialogAction(
            onPressed: urlLaunchAction,
            child: Text(openUrlButtonTitle),
          ),
        _AdaptiveDialogAction(
          onPressed: Navigator.of(context).pop,
          child: okWidget,
        ),
      ],
    );
  }
}

class _NStackAppUpdateInfoDialog extends StatelessWidget {
  const _NStackAppUpdateInfoDialog._({
    Key? key,
    required this.update_info,
  }) : super(key: key);

  /// App update info that was received.
  final NStackVersionUpdate update_info;

  /// Displays the dialog.
  static Future<void> show(
    BuildContext context, {
    required NStackVersionUpdate update_info,
  }) {
    Widget builder(BuildContext context) {
      return _NStackAppUpdateInfoDialog._(
        update_info: update_info,
      );
    }

    return showAdaptiveDialog(
      context: context,
      builder: builder,
    );
  }

  @override
  Widget build(BuildContext context) {
    final titleWidget = update_info.newerVersion != null
        ? Text(update_info.newerVersion!.localizations.title)
        : update_info.newInThisVersion?.localizations != null
            ? Text(update_info.newInThisVersion!.localizations.title)
            : null;

    final messageWidget = update_info.newerVersion != null
        ? Text(update_info.newerVersion!.localizations.message)
        : update_info.newInThisVersion?.localizations != null
            ? Text(update_info.newInThisVersion!.localizations.message)
            : null;

    final dismissWidget =
        update_info.newerVersion?.localizations.negativeBtn != null
            ? Text(update_info.newerVersion!.localizations.negativeBtn!)
            : update_info.newInThisVersion?.localizations.negativeBtn != null
                ? Text(update_info.newInThisVersion!.localizations.negativeBtn!)
                : const Text('OK');

    final updateWidget =
        update_info.newerVersion?.localizations.positiveBtn != null
            ? Text(update_info.newerVersion!.localizations.positiveBtn!)
            : const Text('Update');

    final urlLaunchAction = () async {
      if (update_info.newerVersion?.lastId != null) {
        await context.nstack.appVersionControl.setUpdateInfoViewed(
          updateId: update_info.newerVersion!.lastId,
          answer: NStackVersionUpdateViewAnswer.yes,
          type: NStackVersionUpdateViewType.newerVersion,
        );
      }
      try {
        await launchUrl(update_info.newerVersion!.link!);
      } catch (e) {
        LogUtil.log(
          'Filed to open URL with error: ${e.toString()}',
          'NStackVersionControl',
        );
      }

      if (context.mounted &&
          update_info.newerVersion?.state != NStackVersionUpdateState.force) {
        Navigator.of(context).pop();
      }
    };

    final dismissAction = () async {
      if (update_info.newInThisVersion != null) {
        await context.nstack.appVersionControl.setUpdateInfoViewed(
          updateId: update_info.newInThisVersion!.lastId,
          answer: NStackVersionUpdateViewAnswer.yes,
          type: NStackVersionUpdateViewType.newInVersion,
        );
      } else if (update_info.newerVersion?.lastId != null) {
        await context.nstack.appVersionControl.setUpdateInfoViewed(
          updateId: update_info.newerVersion!.lastId,
          answer: NStackVersionUpdateViewAnswer.yes,
          type: NStackVersionUpdateViewType.newerVersion,
        );
      }
      if (context.mounted) {
        Navigator.of(context).pop();
      }
    };

    final shouldShowUrlLaunchAction = update_info.newerVersion?.link != null;
    final shouldShowDismissAction =
        update_info.newerVersion?.state != NStackVersionUpdateState.force;

    return AlertDialog.adaptive(
      title: titleWidget,
      content: messageWidget,
      actions: [
        if (shouldShowUrlLaunchAction)
          _AdaptiveDialogAction(
            onPressed: urlLaunchAction,
            child: updateWidget,
          ),
        if (shouldShowDismissAction)
          _AdaptiveDialogAction(
            onPressed: dismissAction,
            child: dismissWidget,
          ),
      ],
    );
  }
}

class _AdaptiveDialogAction extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const _AdaptiveDialogAction({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Detecting the platform and choosing the appropriate widget
    if (Platform.isIOS) {
      return CupertinoDialogAction(
        onPressed: onPressed,
        child: child,
      );
    }
    // Defaulting to Material design for other platforms
    return TextButton(
      onPressed: onPressed,
      child: child,
    );
  }
}

/*
 *
 * NStack Flutter Extensions
 * 
 */

/// Allows to access the NStack features using the BuildContext
extension NStackWidgetExtension on BuildContext {
  /// NStack SDK of this project.
  NStackSdk get nstack => NStackScope.of(this)._nstack;

  /// Provides the localization for this NStack project.
  ///
  /// Use `localization.changeLocalization` to update language of the app.
  NStackLocalization<NStackLocalizationAsset> get localization =>
      nstack.localization as NStackLocalization<NStackLocalizationAsset>;
}

/// Allows to access the NStack features from StatefulWidget's State
extension NStackStateExtension<T extends StatefulWidget> on State<T> {
  /// NStack SDK of this project.
  NStackSdk get nstack => context.nstack;

  /// Provides the localization for this NStack project.
  ///
  /// Use `localization.changeLocalization` to update language of the app.
  NStackLocalization<NStackLocalizationAsset> get localization =>
      context.localization;
}
