/// Generated by NStack, do not modify this file.

import 'package:flutter/widgets.dart';
import 'package:nstack/models/language.dart';
import 'package:nstack/models/nstack_config.dart';
import 'package:nstack/models/section_key.dart';
import 'package:nstack/nstack.dart';
import 'package:nstack/partial/section_key_delegate.dart';

// Update this file by running:
// - `flutter pub run build_runner build`, if your package depends on Flutter
// - `pub run build_runner build` otherwise
      
class Localization {
	_DefaultSection _defaultSection = _DefaultSection();
	_DefaultSection get defaultSection => _defaultSection;
	_Error _error = _Error();
	_Error get error => _error;
	_Test _test = _Test();
	_Test get test => _test;
}

class _DefaultSection extends SectionKeyDelegate {
	String get hi => get(SectionKey('defaultSection', 'hi', 'Hej'));
	String get cancel => get(SectionKey('defaultSection', 'cancel', 'Annuller'));
	String get no => get(SectionKey('defaultSection', 'no', 'nej'));
	String get yes => get(SectionKey('defaultSection', 'yes', 'Ja'));
	String get edit => get(SectionKey('defaultSection', 'edit', 'Redigere'));
	String get next => get(SectionKey('defaultSection', 'next', 'Næste'));
	String get on => get(SectionKey('defaultSection', 'on', 'Tændt'));
	String get off => get(SectionKey('defaultSection', 'off', 'af'));
	String get ok => get(SectionKey('defaultSection', 'ok', 'Ok'));
}

class _Error extends SectionKeyDelegate {
	String get errorRandom => get(SectionKey('error', 'errorRandom', 'Helt tilfældig fejl'));
	String get errorTitle => get(SectionKey('error', 'errorTitle', 'Fejl'));
	String get authenticationError => get(SectionKey('error', 'authenticationError', 'Login er udløbet, login venligst ind igen.'));
	String get connectionError => get(SectionKey('error', 'connectionError', 'Ingen eller dårlig forbindelse, prøv igen!'));
	String get unknownError => get(SectionKey('error', 'unknownError', 'Ukendt fejl, prøv igen.'));
}

class _Test extends SectionKeyDelegate {
	String get title => get(SectionKey('test', 'title', 'NStack Demo'));
	String get message => get(SectionKey('test', 'message', 'Bacon ipsum dolor amet magna meatball jerky in, shank sunt do burgdoggen spare ribs. Lorem boudin eiusmod short ribs pastrami. Sausage bresaola do turkey, dolor qui tail ground round culpa boudin nulla minim sunt beef ribs ham. Cillum in pastrami adipisicing swine lorem, velit sunt meatloaf bresaola short loin fugiat tri-tip boudin.'));
	String get subTitle => get(SectionKey('test', 'subTitle', 'Subtitle demo'));
	String get on => get(SectionKey('test', 'on', 'on'));
	String get off => get(SectionKey('test', 'off', 'off'));
}

final _config = NStackConfig(projectId: 'bOdrNuZd4syxuAz6gyCb3xwBCjA8U4h4IcQI', apiKey: 'X0ENl5QpKI51tS9CzKSt1PGwfZeq2gBMTU58');
    
final _languages = [
	Language(id: 6, locale: 'da-DK', direction: 'LRM', isDefault: true, isBestFit: false),
	Language(id: 11, locale: 'en-GB', direction: 'LRM', isDefault: false, isBestFit: true),
	Language(id: 15, locale: 'es-MX', direction: 'LRM', isDefault: false, isBestFit: false),
	Language(id: 20, locale: 'fr-FR', direction: 'LRM', isDefault: false, isBestFit: false),
];

final _bundledTranslations = {
	'da-DK': '{"data":{"default":{"hi":"Hej","cancel":"Annuller","no":"nej","yes":"Ja","edit":"Redigere","next":"N\u00e6ste","on":"T\u00e6ndt","off":"af","ok":"Ok"},"error":{"errorRandom":"Helt tilf\u00e6ldig fejl","errorTitle":"Fejl","authenticationError":"Login er udl\u00f8bet, login venligst ind igen.","connectionError":"Ingen eller d\u00e5rlig forbindelse, pr\u00f8v igen!","unknownError":"Ukendt fejl, pr\u00f8v igen."},"test":{"title":"NStack Demo","message":"Bacon ipsum dolor amet magna meatball jerky in, shank sunt do burgdoggen spare ribs. Lorem boudin eiusmod short ribs pastrami. Sausage bresaola do turkey, dolor qui tail ground round culpa boudin nulla minim sunt beef ribs ham. Cillum in pastrami adipisicing swine lorem, velit sunt meatloaf bresaola short loin fugiat tri-tip boudin.","subTitle":"Subtitle demo","on":"on","off":"off"}},"meta":{"language":{"id":6,"name":"Danish","locale":"da-DK","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":30,"slug":"mobile"}}}',
	'en-GB': '{"data":{"default":{"hi":"Hi","cancel":"Cancel","no":"No","yes":"Yes","edit":"Edit","next":"Next","on":"On","off":"Off","ok":"Ok"},"error":{"errorRandom":"Totally random error","errorTitle":"Error","authenticationError":"Login expired, please login again.","connectionError":"No or bad connection, please try again.","unknownError":"Unknown error, please try again."},"test":{"title":"NStack Demo","message":"Bacon ipsum dolor amet magna meatball jerky in, shank sunt do burgdoggen spare ribs. Lorem boudin eiusmod short ribs pastrami. Sausage bresaola do turkey, dolor qui tail ground round culpa boudin nulla minim sunt beef ribs ham. Cillum in pastrami adipisicing swine lorem, velit sunt meatloaf bresaola short loin fugiat tri-tip boudin.","subTitle":"Subtitle demo","on":"on","off":"off"}},"meta":{"language":{"id":11,"name":"English (UK)","locale":"en-GB","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":30,"slug":"mobile"}}}',
	'es-MX': '{"data":{"default":{"hi":"Hola","cancel":"Cancelar","no":"no","yes":"Si","edit":"Editar","next":"Siguiente","on":"Apprendido","off":"Apagado","ok":"__ok"},"error":{"errorRandom":"__errorRandom","errorTitle":"__errorTitle","authenticationError":"__authenticationError","connectionError":"__connectionError","unknownError":"__unknownError"},"test":{"title":"__title","message":"__message","subTitle":"__subTitle","on":"__on","off":"__off"}},"meta":{"language":{"id":15,"name":"Spanish (Mexico)","locale":"es-MX","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":30,"slug":"mobile"}}}',
	'fr-FR': '{"data":{"default":{"hi":"Salut","cancel":"Annuler","no":"Non","yes":"Oui","edit":"Modifier","next":"Prochain","on":"Allumez","off":"\u00c9teins","ok":"__ok"},"error":{"errorRandom":"__errorRandom","errorTitle":"__errorTitle","authenticationError":"__authenticationError","connectionError":"__connectionError","unknownError":"__unknownError"},"test":{"title":"__title","message":"__message","subTitle":"__subTitle","on":"__on","off":"__off"}},"meta":{"language":{"id":20,"name":"French (France)","locale":"fr-FR","direction":"LRM","is_default":false,"is_best_fit":false},"platform":{"id":30,"slug":"mobile"}}}',
};

final _nstack = NStack<Localization>(
		config: _config,
		localization: Localization(),
		availableLanguages: _languages,
		bundledTranslations: _bundledTranslations
);

class NStackWidget extends InheritedWidget {
  final NStack<Localization> nstack = _nstack;

  NStackWidget({Key key, @required Widget child})
      : assert(child != null),
        super(key: key, child: child);

  static NStack of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<NStackWidget>().nstack;

  @override
  bool updateShouldNotify(NStackWidget oldWidget) =>
      nstack != oldWidget.nstack;
}

/// Allows to access the Nstack Localization using the BuildContext
extension NStackWidgetExtension on BuildContext {
	Localization get localization => NStackWidget.of(this).localization;
}

/// Allows to access the Nstack Localization from StatefulWidget's State
extension NStackStateExtension<T extends StatefulWidget> on State<T> {
	Localization get localization => context.localization;
}

class NStackInitWidget extends StatefulWidget {
  final Widget child;

  const NStackInitWidget({Key key, Widget child})
      : child = child,
        super(key: key);

  @override
  _NStackInitState createState() => _NStackInitState();
}

class _NStackInitState extends State<NStackInitWidget> {
  static bool _initialized = false;

  void setupNStack(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final nstack = NStackWidget.of(context);
    nstack.appOpen(locale);
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      setupNStack(context);
      _initialized = true;
    }
    return widget.child;
  }
}

