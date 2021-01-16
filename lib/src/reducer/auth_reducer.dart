import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AuthState, SignUpError>(_signUpError),
  TypedReducer<AuthState, UpdateRegistrationInfo$>(_updateRegistrationInfo),
]);

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _signUpSuccessful(AuthState state, SignUpSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo$ action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      print('email in reducer');
      b.info.email = action.email;
    } else if (action.password != null) {
      print('password in reducer');
      b.info.password = action.password;
    } else if (action.username != null) {
      print('username in reducer');
      b.info.username = action.username;
    } else {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}

AuthState _signUpError(AuthState state, SignUpError action) {
  print(action.error);
}
