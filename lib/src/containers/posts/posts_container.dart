import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:redux/redux.dart';

class PostsContainer extends StatelessWidget {
  const PostsContainer({Key key, @required this.builder}) : super(key: key);

  final ViewModelBuilder<Map<String, Post>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, Post>>(
      builder: builder,
      converter: (Store<AppState> store) {
        final Map<String, Post> mapOfPosts = <String, Post>{};
        if (true) {
          final List<Post> posts =
              store.state.posts.posts.values.where((Post post) => store.state.auth.users[post.uid] != null).toList();

          for (final Post post in posts) {
            mapOfPosts[post.id] = post;
          }
        }
        return mapOfPosts;
      },
    );
  }
}
