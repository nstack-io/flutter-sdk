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
abstract class Interactor<Output> {
  Future<Output> execute();
}
