import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  FirebaseAuth _auth = FirebaseAuth.instance;

  signUp(String email,String password){
    _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  signIn(String email,String password){
    _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  signOut(){
    _auth .signOut();
  }
}