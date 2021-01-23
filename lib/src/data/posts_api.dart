import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:meta/meta.dart';

class PostsApi {
  PostsApi({@required FirebaseFirestore firestore, @required FirebaseStorage storage})
      : assert(firestore != null),
        assert(storage != null),
        _firestore = firestore,
        _storage = storage;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  Future<Post> createPost(PostsInfo info, String uid) async {
    final DocumentReference ref = _firestore.collection('posts').doc();

    final List<String> images = await _uploadImages(ref.id, info.paths);

    final Post post = Post((PostBuilder b) {
      b
        ..id = ref.id
        ..uid = uid
        ..lng = info.lng
        ..lat = info.lat
        ..description = info.description
        ..tags = ListBuilder<String>(info.tags)
        ..images = ListBuilder<String>(images)
        ..users = ListBuilder<String>(info.users.map((AppUser user) => user.uid).toList());
    });

    await ref.set(post.json);

    return post;
  }

  Future<List<String>> _uploadImages(String id, BuiltList<String> paths) async {
    final List<String> images = <String>[];

    for (final String path in paths) {
      final DocumentReference ref = _firestore.collection('NOT USE').doc();
      final Reference refResult = _storage.ref('posts/$id/${ref.id}');
      await refResult.putFile(File(path));

      final String url = await refResult.getDownloadURL();
      images.add(url);
    }
    return images;
  }
}
