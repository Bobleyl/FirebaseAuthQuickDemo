import 'package:firebase_auth/firebase_auth.dart';

Future<void> checkAuth() async {
  try {
    var user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      print("Signed In Already");
    } else {
      print("Signed Out");
    }
  } catch (e) {
    print(e);
  }
}

Future<void> signUp() async {
  try {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: 'bleyldev@gmail.com', password: 'letmein123');
  } catch (e) {
    print(e);
  }
}

Future<void> signIn() async {
  try {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: 'bleyldev@gmail.com', password: 'letmein123');
  } catch (e) {
    print(e);
  }
}

Future<void> signOut() async {
  try {
    FirebaseAuth.instance.signOut();
  } catch (e) {
    print(e);
  }
}
