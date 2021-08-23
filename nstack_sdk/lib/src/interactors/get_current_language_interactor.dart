import 'package:nstack_api/entities/localize_language.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';

class GetCurrentLanguageInteractor extends Interactor<Future<LocalizeLanguage>> {
  GetCurrentLanguageInteractor();

  @override
  Future<LocalizeLanguage> execute() async {
    // TODO: Return current bestFit language from last AppOpen response or the default language from bundle.
  }
}
