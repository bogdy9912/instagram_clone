export 'auth/index.dart';

abstract class AppAction {
  const AppAction();
}

abstract class ErrorAction implements AppAction{
  const ErrorAction();

  Object get error;
}

typedef ActionResponse = void Function(AppAction action);