import 'package:built_collection/built_collection.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postsReducer = combineReducers<PostsState>(<Reducer<PostsState>>[
  TypedReducer<PostsState, UpdatePostInfo$>(_updatePost),
  TypedReducer<PostsState, GetFeedSuccessful>(_getFeedSuccessful),
  TypedReducer<PostsState, UpdateLikePostSuccessful>(_updateLikesPostSuccessful),
  TypedReducer<PostsState, GetCommentsSuccessful>(_getCommentsSuccessful),
  TypedReducer<PostsState, GetUserPostsSuccessful>(_getUserPostsSuccessful),
  TypedReducer<PostsState, GetTaggedPostsSuccessful>(_getTaggedPostsSuccessful),
  TypedReducer<PostsState, GetSavedPostsSuccessful>(_getSavedPostsSuccessful),
  TypedReducer<PostsState, UpdateLikeCommentsSuccessful>(_updateLikeCommentsSuccessful),
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

PostsState _getCommentsSuccessful(PostsState state, GetCommentsSuccessful action) {
  return state.rebuild((PostsStateBuilder b) => b.comments = MapBuilder<String, Comment>(action.comments));
}

PostsState _getUserPostsSuccessful(PostsState state, GetUserPostsSuccessful action) {
  return state.rebuild((PostsStateBuilder b) => b.userPosts = ListBuilder<Post>(action.posts));
}

PostsState _getTaggedPostsSuccessful(PostsState state, GetTaggedPostsSuccessful action) {
  return state.rebuild((PostsStateBuilder b) => b.taggedPosts = ListBuilder<Post>(action.posts));
}

PostsState _getSavedPostsSuccessful(PostsState state, GetSavedPostsSuccessful action) {
  return state.rebuild((PostsStateBuilder b) => b.savedPosts = ListBuilder<Post>(action.posts));
}

PostsState _updateLikeCommentsSuccessful(PostsState state, UpdateLikeCommentsSuccessful action) {
  print('reducer: $action');
  return state.rebuild((PostsStateBuilder b) {
    if (action.add != null){
      if (!b.comments[action.id].likes.contains(action.add)) {
        b.comments[action.id] = b.comments[action.id].rebuild((CommentBuilder comment) => comment.likes.add(action.add));
      }
    }
    else{
      if (b.comments[action.id].likes.contains(action.remove)) {
        b.comments[action.id] = b.comments[action.id].rebuild((CommentBuilder comment) => comment.likes.remove(action.remove));
      }
    }
  });
}
