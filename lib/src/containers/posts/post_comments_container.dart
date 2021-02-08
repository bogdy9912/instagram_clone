import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:redux/redux.dart';

class PostCommentsContainer extends StatelessWidget {
  const PostCommentsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, Comment>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, Comment>>(
      builder: builder,
      converter: (Store<AppState> store) {
        final Map<String, Comment> mapOfPosts = <String, Comment>{};
        if (true) {
          final List<Comment> posts =
          store.state.posts.comments.values.where((Comment post) => store.state.auth.users[post.userId] != null).toList();

          for (final Comment post in posts) {
            mapOfPosts[post.id] = post;
          }
        }
        return mapOfPosts;

      },
    );
  }
}
