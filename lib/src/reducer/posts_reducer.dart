import 'package:instagram_clone/src/actions/posts/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postsReducer = combineReducers(<Reducer<PostsState>>[
  TypedReducer<PostsState, UpdatePostInfo$>(_updatePost),
]);

PostsState _updatePost(PostsState state, UpdatePostInfo$ action) {
  return state.rebuild((PostsStateBuilder b) {
    if (action.addImage != null) {
      print('add');
      b.info.paths.add(action.addImage);
    } else if (action.removeImage != null) {
      print('remove');
      b.info.paths.remove(action.removeImage);
    } else if (action.description != null) {
      b.info.description = action.description;
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
