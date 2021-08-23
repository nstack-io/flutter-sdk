abstract class InputInteractor<Input, Output> {
  Output execute(Input input);
}

abstract class Interactor<Output> {
  Output execute();
}
