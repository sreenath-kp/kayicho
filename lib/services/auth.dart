import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kayicho/models/user.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Create user object
  MyUser? _userFromFirebase(User? user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<MyUser?> get user {
    return _auth.authStateChanges().map(_userFromFirebase);
    // .map((event) => _userFromFirebase(event));
  }

  //sign in anonymous
  Future<MyUser?> signInAnon(String name) async {
    try {
      UserCredential userCred = await _auth.signInAnonymously();
      User? user = userCred.user;
      await FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
        'username': name,
      });
      return _userFromFirebase(user);
    } catch (e) {
      print('auth error...$e');
      return null;
    }
  }
}