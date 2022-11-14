import 'package:firebase_auth/firebase_auth.dart';
import 'package:benz_hook/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebase user
    User _userFromFirebaseUser(UserCredential user)
  {   
      return user != null ? User(uid: user.uid) :Null;
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously(); 
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password


  // register with email and password

  // sign out

}