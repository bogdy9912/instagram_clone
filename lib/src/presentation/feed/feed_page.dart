import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/auth/index.dart';
import 'package:instagram_clone/src/containers/auth/users_container.dart';
import 'package:instagram_clone/src/containers/posts/posts_container.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:instagram_clone/src/presentation/app_routes.dart';

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
      body: UserContainer(
        builder: (BuildContext context, AppUser currentUser) {
          return UsersContainer(
          builder: (BuildContext context, Map<String, AppUser> users) {
            return PostsContainer(
              builder: (BuildContext context, Map<String, Post> posts) {
                final List<Post> listOfPosts = posts?.values?.toList();
                return ListView.builder(
                  itemCount: listOfPosts.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Post post = listOfPosts[index];
                    final AppUser user = users[post.uid];
                    final bool isLiked = post.likes.contains(currentUser.uid);
                    final bool isSaved = currentUser.saves.contains(post.id);

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

                          onTap: (){
                            Navigator.pushNamed(context, AppRoutes.postOwnerProfile, arguments: user);
                            StoreProvider.of<AppState>(context, listen: false).dispatch(GetUserPosts(user.uid));
                          },
                        ),
                        GestureDetector(
                          onDoubleTap: () {
                            StoreProvider.of<AppState>(context)
                                .dispatch(UpdateLikePost(id: post.id, add: currentUser.uid));
                          },
                          child: Center(
                            child: Image.network(
                              post.images.first,
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: isLiked
                                  ? const Icon(Icons.favorite, color: Colors.red)
                                  : const Icon(Icons.favorite_outline),
                              onPressed: () {
                                if (isLiked) {
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(UpdateLikePost(id: post.id, remove: currentUser.uid));
                                } else {
                                  StoreProvider.of<AppState>(context)
                                      .dispatch(UpdateLikePost(id: post.id, add: currentUser.uid));
                                }
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.chat_bubble_outline),
                              onPressed: () {
                                Navigator.pushNamed(context, AppRoutes.commentsPage,arguments: post);
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.send),
                              onPressed: () {},
                            ),
                            const Spacer(),
                            IconButton(
                              icon: isSaved ? const Icon(Icons.bookmark) : const Icon(Icons.bookmark_border),
                              onPressed: () {
                                if (isSaved) {
                                  StoreProvider.of<AppState>(context).dispatch(UpdateSavedPosts(remove: post.id));
                                } else {
                                  StoreProvider.of<AppState>(context).dispatch(UpdateSavedPosts(add: post.id));
                                }
                              },
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, bottom: 4),
                          child: Text.rich(
                            TextSpan(
                              text: '${post.likes.length}',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              children: const <TextSpan>[
                                TextSpan(text: ' likes'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
        );
        },
      ),
    );
  }
}
