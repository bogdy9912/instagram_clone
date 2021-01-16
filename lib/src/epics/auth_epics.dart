import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  AuthEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;

  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, SignUp$>(_signUp),
    ]);
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((Login$ event) => _authApi.login(email: event.email, password: event.password))
        .map((AppUser user) => Login.successful(user))
        .onErrorReturnWith((dynamic error) => Login.error(error));
  }

  Stream<AppAction> _signUp(Stream<SignUp$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignUp$ action) => Stream<SignUp$>.value(action)
        .asyncMap((SignUp$ action) => _authApi.signUp(
      email: store.state.auth.info.email,
      password: store.state.auth.info.password,
      username: store.state.auth.info.username,
    ))
        .map((AppUser user) => SignUp.successful(user))
        .onErrorReturnWith((dynamic error) => SignUp.error(error))
        .doOnData(action.response));
  }
}
