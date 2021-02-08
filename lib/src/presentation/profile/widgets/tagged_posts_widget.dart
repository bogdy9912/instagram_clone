import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/posts/tagged_posts_container.dart';
import 'package:instagram_clone/src/models/index.dart';

class TaggedPostsWidget extends StatefulWidget {
  const TaggedPostsWidget({Key key, @required this.uid}) : super(key: key);

  final String uid;

  @override
  _TaggedPostsWidgetState createState() => _TaggedPostsWidgetState();
}

class _TaggedPostsWidgetState extends State<TaggedPostsWidget> {
  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context,listen: false).dispatch(GetTaggedPosts(widget.uid));
  }

  @override
  Widget build(BuildContext context) {
    return TaggedPostsContainer(
      builder: (BuildContext context, List<Post> posts) {
        return GridView.builder(
          itemCount: posts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Image.network(
                posts[index].images[0],
                fit: BoxFit.cover,
              ),
            );
          },
        );
      },
    );
  }
}
