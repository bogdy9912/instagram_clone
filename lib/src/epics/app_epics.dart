import 'package:firebase_storage/firebase_storage.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/data/posts_api.dart';
import 'package:instagram_clone/src/epics/auth_epics.dart';
import 'package:instagram_clone/src/epics/posts_epics.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics {
  const AppEpics({@required AuthApi authApi, @required PostsApi postApi})
      : assert(authApi != null),
        assert(postApi != null),
        _authApi = authApi,
        _postApi = postApi;

  final AuthApi _authApi;
  final PostsApi _postApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(authApi: _authApi).epics,
      PostsEpics(api: _postApi).epics,
    ]);
  }
}
