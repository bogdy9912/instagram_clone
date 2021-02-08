import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/presentation/app_routes.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            StoreProvider.of<AppState>(context).dispatch(const GetSavedPosts());
            Navigator.pushNamed(context, AppRoutes.savedPosts);
          },
          child: const Text('Saved'),
        ),
      ],
    );
  }
}
