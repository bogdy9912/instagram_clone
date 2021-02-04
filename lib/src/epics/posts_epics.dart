import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/data/posts_api.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class PostsEpics {
  PostsEpics({@required PostsApi api})
      : assert(api != null),
        _api = api;
  final PostsApi _api;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, CreatePost$>(_createPost),
      TypedEpic<AppState, GetFeed$>(_getFeed),
      TypedEpic<AppState, LikePost$>(_likePost),
    ]);
  }

  Stream<AppAction> _createPost(Stream<CreatePost$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((CreatePost$ action) => Stream<CreatePost$>.value(action)
            .asyncMap((CreatePost$ action) => _api.createPost(store.state.posts.info, store.state.auth.user.uid))
            .map((Post post) => CreatePost.successful(post))
            .onErrorReturnWith((dynamic error) => CreatePost.error(error)));
  }

  Stream<AppAction> _getFeedv(Stream<GetFeed$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFeed$ action) => Stream<GetFeed$>.value(action)
            .asyncMap((GetFeed$ event) => _api.getFeed(<String>[
                  store.state.auth.user.uid,
                  ...store.state.auth.user.following,
                ]))
            .expand((List<Post> posts) => <AppAction>[
                  GetFeed.successful(posts),
                  ...posts
                      .map((Post post) => post.uid)
                      .toSet()
                      .where((String uid) => store.state.auth.users[uid] == null)
                      .map((String uid) => GetUser(uid)),
                ])
            .onErrorReturnWith((dynamic error) => GetFeed.error(error)));
  }

  Stream<AppAction> _getFeed(Stream<GetFeed$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFeed$ action) => Stream<GetFeed$>.value(action)
            .asyncMap((GetFeed$ action) => _api.getFeed(<String>[
                  store.state.auth.user.uid,
                  ...store.state.auth.user.following,
                ]))
            .expand((List<Post> posts) => <AppAction>[
                  GetFeed.successful(posts),
                  ...posts
                      .map((Post post) => post.uid)
                      .toSet()
                      .where((String uid) => store.state.auth.users[uid] == null)
                      .map((String uid) => GetUser(uid)),
                ])
            .onErrorReturnWith((dynamic error) => GetFeed.error(error)));
  }

  Stream<AppAction> _likePost(Stream<LikePost$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LikePost$ action) => Stream<LikePost$>.value(action)
            .asyncMap((LikePost$ event) => _api.updateLikePost(
                  id: action.id,
                  remove: action.remove,
                  add: action.add,
                ))
            .mapTo(LikePost.successful(
              id: action.id,
              remove: action.remove,
              add: action.add,
            ))
            .onErrorReturnWith((dynamic error) => LikePost.error(error)));
  }
}
