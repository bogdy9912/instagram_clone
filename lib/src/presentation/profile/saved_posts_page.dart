import 'package:flutter/material.dart';
import 'package:instagram_clone/src/containers/posts/saved_posts_container.dart';
import 'package:instagram_clone/src/models/index.dart';

class SavedPostsPage extends StatelessWidget {
  const SavedPostsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved posts'),
      ),
      body: SavedPostsContainer(
        builder: (BuildContext context, List<Post> posts) => GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Image.network(
                posts[index].images[0],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
