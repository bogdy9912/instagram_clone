import 'package:instagram_clone/src/actions/auth/index.dart';
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
      TypedEpic<AppState, InitializeApp$>(_initializeApp),
      TypedEpic<AppState, Login$>(_login),
      TypedEpic<AppState, SignUp$>(_signUp),
      TypedEpic<AppState, SignOut$>(_signOut),
      TypedEpic<AppState, ResetPassword$>(_resetPassword),
      TypedEpic<AppState, SearchUsers$>(_searchUsers),
      TypedEpic<AppState, UpdateFollowing$>(_updateFollowing),
      TypedEpic<AppState, GetUser$>(_getUser),
      TypedEpic<AppState, UpdateSavedPosts$>(_updateSavedPosts),
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp$> actions, EpicStore<AppState> store) {
    return actions.flatMap((InitializeApp$ action) => Stream<InitializeApp$>.value(action)
        .asyncMap((InitializeApp$ action) => _authApi.initializeApp())
        .map((AppUser event) => InitializeApp.successful(event))
        .onErrorReturnWith((dynamic error) => InitializeApp.error(error)));
  }

  Stream<AppAction> _login(Stream<Login$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Login$ action) => Stream<Login$>.value(action)
            .asyncMap(
              (Login$ action) => _authApi.login(
                email: action.email,
                password: action.password,
              ),
            )
            .map((AppUser user) => Login.successful(user))
            .onErrorReturnWith((dynamic error) => Login.error(error))
            .doOnData(action.response));
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

  Stream<AppAction> _signOut(Stream<SignOut$> actions, EpicStore<AppState> store) {
    return actions.flatMap((SignOut$ action) => Stream<SignOut$>.value(action)
        .asyncMap((SignOut$ event) => _authApi.signOut())
        .map((_) => const SignOut.successful())
        .onErrorReturnWith((dynamic error) => SignOut.error(error)));
  }

  Stream<AppAction> _resetPassword(Stream<ResetPassword$> actions, EpicStore<AppState> store) {
    return actions.flatMap((ResetPassword$ action) => Stream<ResetPassword$>.value(action)
        .asyncMap((ResetPassword$ action) => _authApi.resetPassword(email: action.email))
        .map((_) => const ResetPassword.successful())
        .onErrorReturnWith((dynamic error) => ResetPassword.error(error)));
  }

  Stream<AppAction> _searchUsers(Stream<SearchUsers$> actions, EpicStore<AppState> store) {
    return actions
        .debounceTime(const Duration(milliseconds: 500)) //
        .flatMap((SearchUsers$ action) => Stream<SearchUsers$>.value(action)
            .asyncMap((SearchUsers$ action) => _authApi.searchUsers(action.query))
            .map((List<AppUser> users) => SearchUsers.successful(users))
            .onErrorReturnWith((dynamic error) => SearchUsers.error(error)));
  }

  Stream<AppAction> _updateFollowing(Stream<UpdateFollowing$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateFollowing$ action) => Stream<UpdateFollowing$>.value(action)
            .asyncMap((UpdateFollowing$ action) =>
                _authApi.updateFollowing(uid: store.state.auth.user.uid, add: action.add, remove: action.remove))
            .mapTo(UpdateFollowing.successful(add: action.add, remove: action.remove))
            .onErrorReturnWith((dynamic error) => UpdateFollowing.error(error)));
  }

  Stream<AppAction> _getUser(Stream<GetUser$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUser$ action) => Stream<GetUser$>.value(action)
            .asyncMap((GetUser$ action) => _authApi.getUser(action.uid))
            .map((AppUser user) => GetUser.successful(user))
            .onErrorReturnWith((dynamic error) => GetUser.error(error)));
  }

  Stream<AppAction> _updateSavedPosts(Stream<UpdateSavedPosts$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((UpdateSavedPosts$ action) => Stream<UpdateSavedPosts$>.value(action)
            .asyncMap((UpdateSavedPosts$ action) => _authApi.updateSavedPosts(
                  add: action.add,
                  remove: action.remove,
                  uid: store.state.auth.user.uid,
                ))
            .mapTo(UpdateSavedPosts.successful(
              add: action.add,
              remove: action.remove,
            ))
            .onErrorReturnWith((dynamic error) => UpdateSavedPosts.error(error)));
  }
}
