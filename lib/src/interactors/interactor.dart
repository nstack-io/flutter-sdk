/// An Interactor orchestrates entities to fulfill a business rule.
///
/// Example:
/// ```
/// class GreetUserInteractor extends Interactor<String> {
///   @override Future<String> execute({User user}) async {
///     return 'Hello ${user.name}!';
///   }
/// }
/// ```
abstract class FutureInteractor<Output> {
  Future<Output> execute();
}

abstract class Interactor<Output> {
  Output execute();
}
