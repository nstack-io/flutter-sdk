import 'package:meta/meta.dart';
import 'package:nstack_api/entities/language.dart';
import 'package:nstack_sdk/src/interactors/get_available_languages_interactor.dart';
import 'package:nstack_sdk/src/interactors/interactor.dart';

class GetCurrentLanguagesInteractor extends FutureInteractor<Language> {
  final GetAvailableLanguagesInteractor getAvailableLanguagesInteractor;

  GetCurrentLanguagesInteractor({
    @required this.getAvailableLanguagesInteractor,
  });

  @override
  Future<Language> execute() async {

  }
}
