import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/auth/index.dart';
import 'package:instagram_clone/src/containers/auth/search_users_container.dart';
import 'package:instagram_clone/src/models/index.dart';

class SearchUsersPage extends StatelessWidget {
  const SearchUsersPage({Key key, this.showFollow = false}) : super(key: key);

  final bool showFollow;

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser user) {
        return SearchUsersContainer(
          builder: (BuildContext context, List<AppUser> searchResult) {
            return Scaffold(
              appBar: AppBar(
                title: TextField(
                  decoration: const InputDecoration(hintText: 'Search'),
                  keyboardType: TextInputType.text,
                  onChanged: (String value) {
                    if (value != null) {
                      StoreProvider.of<AppState>(context).dispatch(SearchUsers(value));
                    }
                  },
                ),
              ),
              body: ListView.builder(
                itemCount: searchResult.length,
                itemBuilder: (BuildContext context, int index) {
                  final bool isFollowing = user.following.contains(searchResult[index].uid);

                  return ListTile(
                    title: Text(searchResult[index].username),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: searchResult[index].photoUrl != null
                          ? //
                          Image.network(searchResult[index].photoUrl)
                          : Container(),
                    ),
                    trailing: showFollow
                        ? FlatButton(
                            child: Text(isFollowing ? 'Unfollow' : 'Follow'),
                            onPressed: () {
                              AppAction action;
                              if (isFollowing) {
                                action = UpdateFollowing(remove: searchResult[index].uid);
                              } else {
                                action = UpdateFollowing(add: searchResult[index].uid);
                              }
                              StoreProvider.of<AppState>(context).dispatch(action);
                            },
                          )
                        : null,
                    onTap: () {
                      Navigator.pop(context, searchResult[index]);
                    },
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
