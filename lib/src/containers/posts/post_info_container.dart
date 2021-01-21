part of posts_containers;

class PostInfoContainer extends StatelessWidget {
  const PostInfoContainer({@required this.builder});

  final ViewModelBuilder<PostsInfo> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PostsInfo>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.posts.info,
    );
  }
}
