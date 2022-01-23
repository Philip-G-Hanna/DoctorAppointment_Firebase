import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get user => _firebaseAuth.currentUser;

  signUp(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      print(_firebaseAuth.currentUser);
    } catch (er) {
      print(er);
    }
  }

  signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (er) {
      print(er);
    }
  }

  signOut() async {
    await _firebaseAuth.signOut();
  }
}
