import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/data/posts_api.dart';
import 'package:instagram_clone/src/epics/app_epics.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/reducer/reducer.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

Future<Store<AppState>> init() async {
  await Firebase.initializeApp();

  final AuthApi _authApi = AuthApi(
    auth: FirebaseAuth.instance,
    firestore: FirebaseFirestore.instance,
  );
  final PostsApi _postApi = PostsApi(
    firestore: FirebaseFirestore.instance,
    storage: FirebaseStorage.instance,
  );
  final AppEpics epic = AppEpics(authApi: _authApi, postApi: _postApi);

  return Store<AppState>(
    (AppState state, dynamic action) {
      return reducer(state, action);
    },
    initialState: AppState.initialState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const InitializeApp());
}
