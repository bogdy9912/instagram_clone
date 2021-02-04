import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/auth/users_container.dart';
import 'package:instagram_clone/src/containers/posts/posts_container.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  void initState() {
    super.initState();

    StoreProvider.of<AppState>(context, listen: false).dispatch(const GetFeed());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
      ),
      body: UsersContainer(
        builder: (BuildContext context, Map<String, AppUser> users) {
          return PostsContainer(
            builder: (BuildContext context, List<Post> posts) {
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) {
                  final Post post = posts[index];
                  final AppUser user = users[post.uid];

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        title: Text(user.username),
                        leading: user.photoUrl != null
                            ? CircleAvatar(
                                backgroundImage: NetworkImage(user.photoUrl),
                              )
                            : CircleAvatar(
                                backgroundColor: Colors.grey,
                                child: Text(user.username[0].toUpperCase()),
                              ),
                      ),
                      Center(
                        child: Image.network(
                          post.images.first,
                          height: MediaQuery.of(context).size.height * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.favorite_outline),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.chat_bubble_outline),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.send),
                            onPressed: () {},
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.bookmark_border),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:16.0),
                        child: Text.rich(
                          TextSpan(
                            text: user.username,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              const TextSpan(text: ': '),
                              TextSpan(
                                text: post.description,
                                style: const TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
