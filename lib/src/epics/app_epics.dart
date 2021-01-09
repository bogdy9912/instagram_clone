import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/epics/auth_epics.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics{

  const AppEpics({@required AuthApi api}): assert(api != null), _authApi= api;


  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
      AuthEpics(api: _authApi).epics,
    ]);
  }
  

}