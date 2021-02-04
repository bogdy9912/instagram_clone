import 'package:built_collection/built_collection.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:redux/redux.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, InitializeAppSuccessful>(_initializeAppSuccessful),
  TypedReducer<AuthState, LoginSuccessful>(_loginSuccessful),
  TypedReducer<AuthState, SignUpSuccessful>(_signUpSuccessful),
  TypedReducer<AuthState, UpdateRegistrationInfo$>(_updateRegistrationInfo),
  TypedReducer<AuthState, SearchUsersSuccessful>(_searchUsersSuccessful),
  TypedReducer<AuthState, UpdateFollowingSuccessful>(_updateFollowingSuccessful),
  TypedReducer<AuthState, GetUserSuccessful>(_getUserSuccessful),
]);

AuthState _initializeAppSuccessful(AuthState state, InitializeAppSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _loginSuccessful(AuthState state, LoginSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _signUpSuccessful(AuthState state, SignUpSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _updateRegistrationInfo(AuthState state, UpdateRegistrationInfo$ action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.email != null) {
      b.info.email = action.email;
    } else if (action.password != null) {
      b.info.password = action.password;
    } else if (action.username != null) {
      b.info.username = action.username;
    } else {
      b.info = RegistrationInfo().toBuilder();
    }
  });
}

AuthState _searchUsersSuccessful(AuthState state, SearchUsersSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.searchResult = ListBuilder<AppUser>(action.users));
}

AuthState _updateFollowingSuccessful(AuthState state, UpdateFollowingSuccessful action) {
  return state.rebuild((AuthStateBuilder b) {
    if (action.add != null) {
      b.user.following.add(action.add);
    } else {
      b.user.following.remove(action.remove);
    }
  });
}

AuthState _getUserSuccessful(AuthState state, GetUserSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.users[action.user.uid] = action.user);
}
