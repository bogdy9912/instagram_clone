import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:instagram_clone/src/models/posts/index.dart';
import 'package:meta/meta.dart';
import 'package:quiver/iterables.dart';

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

  Future<Map<String, Post>> getFeed(List<String> following) async {
    final List<Post> listOfResults = <Post>[];
    final List<List<String>> parts = partition(following, 10).toList();

    for (final List<String> part in parts) {
      final QuerySnapshot snapshot = await _firestore //
          .collection('posts')
          .where('uid', whereIn: part)
          .get();

      final List<Post> result = snapshot.docs //
          .map((QueryDocumentSnapshot doc) => Post.fromJson(doc.data()))
          .toList();

      listOfResults.addAll(result);
    }

    final Map<String, Post> mapOfResults = <String, Post>{};
    for (final Post post in listOfResults) {
      mapOfResults[post.id] = post;
    }

    return mapOfResults;
  }

  Future<void> updateLikePost({@required String id, String add, String remove}) async {
    FieldValue value;
    if (add != null) {
      value = FieldValue.arrayUnion(<String>[add]);
    } else {
      value = FieldValue.arrayRemove(<String>[remove]);
    }

    await _firestore.doc('posts/$id').update(<String, dynamic>{'likes': value});
//    final DocumentSnapshot doc = await _firestore.doc('posts/$id').get();
  }

  Stream<List<Comment>> getMessages(String postId) {
    return _firestore.collection('posts/$postId/comments').snapshots().map((QuerySnapshot snapshot) =>
        snapshot.docs.map((QueryDocumentSnapshot doc) => Comment.fromJson(doc.data())).toList());
  }

  Future<void> postComment({@required String postId, @required String text, @required String uid}) async {
    final DocumentReference _documentReference = _firestore.collection('NOT USE').doc();

    final Comment comment = Comment((CommentBuilder b) {
      b
        ..id = _documentReference.id
        ..text = text
        ..userId = uid;
    });

    await _firestore.doc('posts/$postId/comments/${comment.id}').set(comment.json);
  }

  Future<List<Post>> getUserPosts(String uid) async {
    print('data: $uid');
    final QuerySnapshot result = await _firestore.collection('posts').where('uid', isEqualTo: uid).get();
    print('result: $result');
    final List<Post> r =  result.docs.map((QueryDocumentSnapshot doc) => Post.fromJson(doc.data())).toList();
    print(r);
    return result.docs.map((QueryDocumentSnapshot doc) => Post.fromJson(doc.data())).toList();
  }
}
