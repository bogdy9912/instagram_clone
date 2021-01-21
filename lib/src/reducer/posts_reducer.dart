import 'package:instagram_clone/src/actions/posts/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:redux/redux.dart';

Reducer<PostsState> postsReducer = combineReducers(<Reducer<PostsState>>[
  TypedReducer<PostsState, UpdatePostInfo>(_updatePost),
]);

PostsState _updatePost(PostsState state, UpdatePostInfo action) {
  return state.rebuild((PostsStateBuilder b) {
    if (action.addImage != null) {
      print('add');
      b.info.paths.add(action.addImage);
    } else if (action.removeImage != null) {
      print('remove');
      b.info.paths.remove(action.removeImage);
    } else if (action.lat != null && action.lng != null) {
      b.info
        ..lat = action.lat
        ..lng = action.lng;
    } else {
      b.info = PostsInfo().toBuilder();
    }
  });
}
