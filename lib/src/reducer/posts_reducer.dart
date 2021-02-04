import 'package:built_collection/built_collection.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postsReducer = combineReducers<PostsState>(<Reducer<PostsState>>[
  TypedReducer<PostsState, UpdatePostInfo$>(_updatePost),
  TypedReducer<PostsState, GetFeedSuccessful>(_getFeedSuccessful),
  TypedReducer<PostsState, UpdateLikePostSuccessful>(_updateLikesPostSuccessful),
]);

PostsState _updatePost(PostsState state, UpdatePostInfo$ action) {
  return state.rebuild((PostsStateBuilder b) {
    if (action.addImage != null) {
      b.info.paths.add(action.addImage);
    } else if (action.removeImage != null) {
      b.info.paths.remove(action.removeImage);
    } else if (action.description != null) {
      final List<String> tags =
          RegExp('\#([a-zA-Z0-9]+)').allMatches(action.description).map((RegExpMatch e) => e.group(1)).toList();

      b.info
        ..description = action.description
        ..tags = ListBuilder<String>(tags);
    } else if (action.lat != null && action.lng != null) {
      b.info
        ..lat = action.lat
        ..lng = action.lng;
    } else if (action.addUser != null) {
      b.info.users.add(action.addUser);
    } else if (action.removeUser != null) {
      b.info.users.remove(action.removeUser);
    } else {
      b.info = PostsInfo().toBuilder();
    }
  });
}

PostsState _getFeedSuccessful(PostsState state, GetFeedSuccessful action) {
  return state.rebuild((PostsStateBuilder b) => b.posts = MapBuilder<String, Post>(action.posts));
}

PostsState _updateLikesPostSuccessful(PostsState state, UpdateLikePostSuccessful action) {
  return state.rebuild((PostsStateBuilder b) {
    if (action.add != null) {
      if (!b.posts[action.id].likes.contains(action.add)) {
        b.posts[action.id] = b.posts[action.id].rebuild((PostBuilder post) => post.likes.add(action.add));
      }
    } else {
      if (b.posts[action.id].likes.contains(action.remove)) {
        b.posts[action.id] = b.posts[action.id].rebuild((PostBuilder post) => post.likes.remove(action.remove));
      }
    }
  });
}
