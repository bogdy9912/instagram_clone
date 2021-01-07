import 'package:instagram_clone/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';

class AppEpics{

  const AppEpics({@required String api}): assert(api != null), _api= api;

  final String _api;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
    ]);
  }
}