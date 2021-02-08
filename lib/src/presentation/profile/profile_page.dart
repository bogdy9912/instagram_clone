import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/src/containers/auth/index.dart';
import 'package:instagram_clone/src/containers/posts/user_posts_container.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:instagram_clone/src/models/index.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget _statWidget(int number, String category) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(
            number != null ? number.toString() : '0',
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          Text(category ?? ''),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser currentUser) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(currentUser.username),
            elevation: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (currentUser.photoUrl != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(currentUser.photoUrl),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        child: Text(currentUser.username[0]),
                      ),
                    ),
                  _statWidget(currentUser.nrPosts, 'Posts'),
                  _statWidget(currentUser.nrFollowers, 'Followers'),
                  _statWidget(currentUser.following.length, 'Following'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 4,
                ),
                child: currentUser.displayName != null
                    ? Text(
                        currentUser.displayName,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      )
                    : null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: currentUser.bio != null ? Text(currentUser.bio) : null,
              ),
              const SizedBox(
                height: 16,
              ),
              OutlineButton(
                onPressed: () {},
                child: Container(width: double.infinity, child: const Center(child: Text('Edit Profile'))),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              UserPostsContainer(
                builder: (BuildContext context, List<Post> posts) {
                  return Expanded(
                    child: GridView.builder(
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
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
