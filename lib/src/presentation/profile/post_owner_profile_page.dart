import 'package:flutter/material.dart';
import 'package:instagram_clone/src/containers/posts/user_posts_container.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/presentation/profile/widgets/tagged_posts_widget.dart';
import 'package:instagram_clone/src/presentation/profile/widgets/user_posts_widget.dart';

class PostOwnerProfilePage extends StatelessWidget {
  const PostOwnerProfilePage({Key key, this.user}) : super(key: key);

  final AppUser user;

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
    return Scaffold(
      appBar: AppBar(
        title: Text(user.username),
      ),
      body: UserPostsContainer(
        builder: (BuildContext context, List<Post> posts) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (user.photoUrl != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(user.photoUrl),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        child: Text(user.username[0].toUpperCase()),
                      ),
                    ),
                  _statWidget(posts.length, 'Posts'),
                  _statWidget(user.nrFollowers, 'Followers'),
                  _statWidget(user.following.length, 'Following'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 4,
                ),
                child: user.displayName != null
                    ? Text(
                        user.displayName,
                        style: const TextStyle(fontWeight: FontWeight.w700),
                      )
                    : null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: user.bio != null ? Text(user.bio) : null,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlineButton(
                        onPressed: () {},
                        child: const Center(child: Text('Follow')),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlineButton(
                        onPressed: () {},
                        child: const Center(child: Text('Message')),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.keyboard_arrow_down),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  child: Builder(
                    builder: (BuildContext context) {
                      return Column(
                        children: <Widget>[
                          const TabBar(
                            tabs: <Widget>[
                              Tab(
                                icon: Icon(Icons.grid_on),
                              ),
                              Tab(
                                icon: Icon(Icons.perm_contact_calendar),
                              ),
                            ],
                            indicatorColor: Colors.white,
                            indicatorWeight: 1.0,
                          ),
                          Expanded(
                            child: TabBarView(
                              children: <Widget>[
                                UserPostsWidget(),
                                TaggedPostsWidget(uid: user.uid),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
