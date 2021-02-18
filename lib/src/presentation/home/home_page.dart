import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/auth/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/presentation/app_routes.dart';
import 'package:instagram_clone/src/presentation/feed/feed_page.dart';
import 'package:instagram_clone/src/presentation/profile/profile_page.dart';
import 'package:instagram_clone/src/presentation/widgets/search_users_page.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        const FeedPage(),
        const SearchUsersPage(showFollow: true),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
        const ProfilePage(),
      ][_page],
      bottomNavigationBar: UserContainer(
        builder: (BuildContext context, AppUser currentUser) {
          return BottomNavigationBar(
            currentIndex: _page,
            onTap: (int i) async {
              if (i == 2) {
                StoreProvider.of<AppState>(context).dispatch(const UpdatePostInfo());
                final PickedFile file = await ImagePicker().getImage(source: ImageSource.gallery);

                if (file != null) {
                  StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addImage: file.path));

                  Navigator.pushNamed(context, AppRoutes.choosePhotosPost);
                }
              } else {
                setState(() {
                  if (i == 4){
                    StoreProvider.of<AppState>(context, listen: false).dispatch(GetUserPosts(currentUser.uid));
                  }
                  _page = i;
                });
              }
            },
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'search',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo_outlined),
                label: 'add photo',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'notification',
              ),
              BottomNavigationBarItem(
                activeIcon: currentUser.photoUrl != null
                    ? CircleAvatar(
                        backgroundImage: NetworkImage(currentUser.photoUrl),
                      )
                    : CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          currentUser.username[0],
                        ),
                      ),
                icon: const Icon(Icons.account_circle),
                label: 'profile',
              ),
            ],
          );
        },
      ),
    );
  }
}
