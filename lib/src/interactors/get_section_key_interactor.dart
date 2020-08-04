import 'package:data/cache_repository.dart';
import 'package:data/entities/localize_resource.dart';
import 'package:meta/meta.dart';
import 'package:nstack/src/extensions/localization_resource_extension.dart';
import 'package:nstack/src/interactors/interactor.dart';

class GetLocalizedSectionKeyInteractor extends Interactor<String> {
  final LocalizeResource fallback;
  final CacheRepository cacheRepository;

  GetLocalizedSectionKeyInteractor({
    @required this.fallback,
    @required this.cacheRepository,
  });

  @override
  Future<String> execute({
    String section,
    String key,
  }) async {
    return cacheRepository
        .getCurrentLocalizationResource()
        .then((value) => _handleValue(value, section, key))
        .catchError((error) => _handleError(error, section, key));
  }

  String _handleValue(
    LocalizeResource value,
    String section,
    String key,
  ) {
    return value.getLocalizedSectionKey(
      section,
      key,
    );
  }

  String _handleError(
    Error error,
    String section,
    String key,
  ) {
    return fallback.getLocalizedSectionKey(
      section,
      key,
    );
  }
}
