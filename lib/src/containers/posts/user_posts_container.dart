import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:redux/redux.dart';

class UserPostsContainer extends StatelessWidget {
  const UserPostsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<List<Post>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Post>>(
      converter: (Store<AppState> store) => store.state.posts.userPosts.asList(),
      builder: builder,
    );
  }
}
