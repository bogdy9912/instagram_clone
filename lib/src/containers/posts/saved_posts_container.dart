import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:redux/redux.dart';

class SavedPostsContainer extends StatelessWidget {

  const SavedPostsContainer({Key key, @required this.builder}): super(key: key);

  final ViewModelBuilder<List<Post>> builder;
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Post>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.posts.savedPosts.asList(),
    );
  }
}
