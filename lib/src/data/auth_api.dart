import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/src/models/auth/index.dart';
import 'package:meta/meta.dart';

import 'search_index.dart';

class AuthApi {
  const AuthApi({@required FirebaseAuth auth, @required FirebaseFirestore firestore})
      : assert(auth != null),
        assert(firestore != null),
        _auth = auth,
        _firestore = firestore;

  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<AppUser> initializeApp() async {
    final User user = _auth.currentUser;
    final DocumentSnapshot result = await _firestore.doc('users/${user.uid}').get();
    return AppUser.fromJson(result.data());
  }

  Future<AppUser> login({@required String email, @required String password}) async {
    final UserCredential response = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = response.user;
    final DocumentSnapshot snapshot = await _firestore.doc('/users/${user.uid}').get();

    return AppUser.fromJson(snapshot.data());
  }

  Future<AppUser> signUp({@required String email, @required String password, @required String username}) async {
    final UserCredential response = await _auth.createUserWithEmailAndPassword(email: email, password: password);

    final User user = response.user;

    final AppUser newUser = AppUser((AppUserBuilder b) {
      b
        ..uid = user.uid
        ..email = user.email
        ..username = username
        ..searchIndex = ListBuilder<String>(<String>[username].searchIndex);
    });

    _firestore.doc('users/${user.uid}').set(newUser.json);

    return newUser;
  }

  Future<void> resetPassword({@required String email}) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<List<AppUser>> searchUsers(String query) async {
    final QuerySnapshot result = await _firestore.collection('users').where('searchIndex', arrayContains: query).get();
    return result.docs.map((QueryDocumentSnapshot snapshot) => AppUser.fromJson(snapshot.data())).toList();
  }

  Future<void> updateFollowing({@required String uid, String add, String remove}) async {
    FieldValue value;
    if (add != null) {
      value = FieldValue.arrayUnion(<String>[add]);
    } else {
      value = FieldValue.arrayRemove(<String>[remove]);
    }
    if (value != null) {
      await _firestore.doc('users/$uid').update(<String, dynamic>{'following': value});
    }
  }


  Future<AppUser> getUser(String uid)async{
    final DocumentSnapshot result = await _firestore.doc('users/$uid').get();
    return AppUser.fromJson(result.data());
  }




}
