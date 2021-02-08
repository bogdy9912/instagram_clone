import 'package:flutter/material.dart';
import 'package:instagram_clone/src/containers/posts/user_posts_container.dart';
import 'package:instagram_clone/src/models/index.dart';

class UserPostsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserPostsContainer(
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
