import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/auth/index.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/auth/search_users_container.dart';
import 'package:instagram_clone/src/models/index.dart';

class SearchUsersPage extends StatelessWidget {
  const SearchUsersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            itemBuilder: (BuildContext context, int index) => ListTile(
              title: Text(searchResult[index].username),
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: searchResult[index].photoUrl != null
                    ? //
                    Image.network(searchResult[index].photoUrl)
                    : Container(),
              ),
              onTap: (){
                print('La');
                Navigator.pop(context, searchResult[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
