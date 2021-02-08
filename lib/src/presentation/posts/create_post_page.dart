import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:instagram_clone/src/presentation/app_routes.dart';
import 'package:location/location.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostInfoContainer(
      builder: (BuildContext context, PostsInfo info) => Scaffold(
        appBar: AppBar(
          title: const Text('New post'),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const CreatePost());
                  Navigator.popUntil(context, ModalRoute.withName(AppRoutes.home));
                  StoreProvider.of<AppState>(context).dispatch(const UpdatePostInfo());
                },
                child: const Text('SHARE'))
          ],
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: <Widget>[
                    Image.file(
                      File(info.paths.first),
                      width: 72.0,
                      height: 72.0,
                      fit: BoxFit.cover,
                    ),
                    if (info.paths.length > 1)
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(Icons.photo_library),
                      ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(hintText: 'Set a description'),
                    maxLines: 3,
                    keyboardType: TextInputType.text,
                    onChanged: (String value) {
                      StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(description: value));
                    },
                  ),
                ),
              ],
            ),
            const Divider(),
            ListTile(
              title: const Text('Add people'),
              trailing: const Icon(Icons.person_add),
              onTap: () async {
                final dynamic user = await Navigator.pushNamed(context, AppRoutes.searchUsers);

                if (user != null && !info.users.contains(user)) {
                  StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addUser: user));
                }
              },
              subtitle: Wrap(
                children: info.users
                    .map((AppUser user) => Chip(
                          label: Text(user.username),
                          onDeleted: () {
                            StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(removeUser: user));
                          },
                        ))
                    .toList(),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Add location'),
              subtitle: info.lat != null ? Text('lat: ${info.lat}, lng: ${info.lng}') : null,
              trailing: IconButton(
                icon: const Icon(Icons.location_on),
                onPressed: () async {
                  final Location location = Location();

                  PermissionStatus permissionResult = await location.hasPermission();
                  if (permissionResult != PermissionStatus.granted &&
                      permissionResult != PermissionStatus.grantedLimited) {
                    permissionResult = await location.requestPermission();
                  }
                  if (permissionResult != PermissionStatus.granted &&
                      permissionResult != PermissionStatus.grantedLimited) {
                    return;
                  }

                  final LocationData result = await Location().getLocation();
                  if (result != null) {
                    StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(
                      lat: result.latitude,
                      lng: result.longitude,
                    ));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
