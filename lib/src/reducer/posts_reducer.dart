import 'package:built_collection/built_collection.dart';
import 'package:instagram_clone/src/actions/posts/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postsReducer = combineReducers(<Reducer<PostsState>>[
  TypedReducer<PostsState, UpdatePostInfo$>(_updatePost),
]);

PostsState _updatePost(PostsState state, UpdatePostInfo$ action) {
  print('a intrat in reducer post');
  return state.rebuild((PostsStateBuilder b) {
    if (action.addImage != null) {
      print('add');
      b.info.paths.add(action.addImage);
    } else if (action.removeImage != null) {
      print('remove');
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
