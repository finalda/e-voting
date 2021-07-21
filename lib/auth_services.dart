import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

//autentikasi untuk signup
  static Future<FirebaseUser> signUp(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = result.user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

//autentikasi untuk sigin
  static Future<void> signIn(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

//autentikasi untuk signout
  static Future<void> signOut() async {
    _auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUserStream =>
      _auth.onAuthStateChanged;
}
