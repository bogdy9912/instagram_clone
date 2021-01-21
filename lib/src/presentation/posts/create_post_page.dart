import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone/src/containers/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';

class CreatePostPage extends StatelessWidget {
  const CreatePostPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostInfoContainer(
      builder: (BuildContext context, PostsInfo info) => Scaffold(
        appBar: AppBar(
          title: const Text('New post'),
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
                    const Icon(Icons.photo_library),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
