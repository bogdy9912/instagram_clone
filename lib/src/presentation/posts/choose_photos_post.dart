import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instagram_clone/src/actions/index.dart';
import 'package:instagram_clone/src/containers/index.dart';
import 'package:instagram_clone/src/models/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:instagram_clone/src/presentation/app_routes.dart';

class ChoosePhotosPost extends StatelessWidget {
  const ChoosePhotosPost({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostInfoContainer(
      builder: (BuildContext context, PostsInfo info) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Choose photos'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {

                    if (info.paths.isNotEmpty) {
                      Navigator.pushNamed(context, AppRoutes.createPost);
                    } else {
                      // show error
                    }
                  },
                  child: const Text('NEXT')),
            ],
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemCount: info.paths.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return Center(
                  child: IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: () async {
                      final PickedFile file = await ImagePicker().getImage(source: ImageSource.gallery);
                      if (file != null) {
                        StoreProvider.of<AppState>(context).dispatch(UpdatePostInfo(addImage: file.path));

                      }
                    },
                  ),
                );
              }
              return GridTile(
                header: GridTileBar(
                  title: const Text(''),
                  trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        StoreProvider.of<AppState>(context)
                            .dispatch(UpdatePostInfo(removeImage: info.paths[index - 1]));
                      }),
                ),
                child: Image.file(
                  File(info.paths[index - 1]),
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
