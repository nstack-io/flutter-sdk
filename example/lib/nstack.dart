/*
 * ❌ GENERATED BY NSTACK, DO NOT MODIFY THIS FILE BY HAND!
 * 
 * To update this file, run
 * 
 * Flutter projects: 
 *    flutter pub run build_runner build
 * 
 * Dart projects:
 *    pub run build_runner build
 * 
 * 💡 FEATURES
 * 
 * To access the NStack features:
 * - Use the global `NStack` object;
 * - Use the BuildContext extension: `context.nstack`.
 * 
 * 🔤 LOCALIZATION
 * 
 * To access localization in your UI you can use an extension for BuildContexts:
 * `context.localization.yourSection.yourKey`.
 */

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nstack/models/app_open_platform.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/localize_index.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/sdk/nstack_sdk.dart';
import 'package:nstack/sdk/localization/nstack_localization.dart';
import 'package:nstack/partial/section_key_delegate.dart';

export 'package:nstack/models/app_open_platform.dart';

NStackSdk createNStackSdk() {
    // Define your NStackConfig with hardcoded values
    const config = NStackConfig(
        projectId: 'h6wJremI2TGFM88gbLkdyljWQuwf2hxhxvCH',
        apiKey: 'zp2S18H32b67eYAbRQh94tVw76ZzaKKXlHjd',
        env: 'prod',
    );

    final languages = [
      LocalizeIndex(
      id: 1216,
      url: 'https://nstack.io/api/v2/content/localize/resources/1216',
      lastUpdatedAt: DateTime.parse('2021-09-17T18:13:38.000Z'),
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
      lastUpdatedAt: DateTime.parse('2021-11-10T11:46:52.000Z'),
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
      'en-EN': r'''{"data":{"default":{"title":"NStack SDK Demo","test":"test"},"test":{"testDollarSign":"$testing again new","testSingleQuotationMark":"\'testing\'","testDoubleQuotationMark":"\"testing\"","testMultipleLines":"testing\nmultiple\nlines\nupdated"}},"meta":{"language":{"id":56,"name":"English","locale":"en-EN","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":515,"slug":"mobile"}}}''',
'de-AT': r'''{"data":{"default":{"title":"NStack SDK Demo","test":"test"},"test":{"testDollarSign":"\u00a0","testSingleQuotationMark":"__testSingleQuotationMark","testDoubleQuotationMark":"__testDoubleQuotationMark","testMultipleLines":"__testMultipleLines"}},"meta":{"language":{"id":7,"name":"German (Austria)","locale":"de-AT","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":515,"slug":"mobile"}}}''',
    };

    // Create an instance of NStackLocalization with the predefined values
    final nstackLocalization = NStackLocalization<LocalizationAsset>(
        config: config,
        assets: const LocalizationAsset(),
        availableLanguages: languages,
        bundledTranslations: bundledTranslations,
        pickedLanguageLocale: '',
        isDebug: kDebugMode,
    );

    // Return the NStackSdk instance
    return NStackSdk(
        config: config,
        localization: nstackLocalization,
        isDebug: kDebugMode,
    );
}

/*
*
* Localization & Localization Section Keys
* 
*/

class LocalizationAsset {
    final defaultSection = const _DefaultSection();
final test = const _Test();
    const LocalizationAsset();
}

class _DefaultSection extends SectionKeyDelegate {
        const _DefaultSection() : super('default');
        String get title => get('title', "NStack SDK Demo");
String get test => get('test', "test");
    }
class _Test extends SectionKeyDelegate {
        const _Test() : super('test');
        String get testDollarSign => get('testDollarSign', "\$testing again new");
String get testSingleQuotationMark => get('testSingleQuotationMark', "\'testing\'");
String get testDoubleQuotationMark => get('testDoubleQuotationMark', "\"testing\"");
String get testMultipleLines => get('testMultipleLines', "testing\nmultiple\nlines\nupdated");
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
  final NStackSdk _nstack = createNStackSdk();
  late final NStackLocalization<LocalizationAsset> localization;
  bool _initializedNStack = false;

  late Future<bool> _nstackInitFuture;

  late final StreamSubscription _localeChangedSubscription;

  @override
  void initState() {
    super.initState();

    _nstackInitFuture = _nstack.init();
    localization =
        _nstack.localization as NStackLocalization<LocalizationAsset>;
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
    if (!_initializedNStack) {
      _nstack
          .appOpen(Localizations.localeOf(context),
              platformOverride: widget.platformOverride)
          .whenComplete(() => widget.onComplete?.call());
      _initializedNStack = true;
    }

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