abstract class FutureInputInteractor<Input, Output> {
  Future<Output> execute(Input input);
}

abstract class FutureInteractor<Output> {
  Future<Output> execute();
}

abstract class InputInteractor<Input, Output> {
  Output execute(Input input);
}

abstract class Interactor<Output> {
  Output execute();
}
