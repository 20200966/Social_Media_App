import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

/*

This database stores posts that users have published in the app.
It is stored in a collection of 'Posts' in Firebase.

Each post contains the following:
- message
- email address
-timestamp

*/ 

class FirestoreDatabase {
  //current logged in user
  User? user = FirebaseAuth.instance.currentUser;

  //get collection of posts from Firebase
  final CollectionReference posts = FirebaseFirestore.instance.collection('Posts');

  //post message
  Future<void> addPost(String message) {
    return posts.add({
      'UserEmail': user!.email,
      'PostMessage': message,
      'TimeStamp': Timestamp.now(),
    });
  }

  //read posts from database
  Stream<QuerySnapshot> getPostsStream() {
    final postsStream = FirebaseFirestore.instance
     .collection('Posts')
     .orderBy('TimeStamp', descending: true)
     .snapshots();

    return postsStream;
  }
}