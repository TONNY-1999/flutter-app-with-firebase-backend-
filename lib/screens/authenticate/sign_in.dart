import 'package:benz_hook/service/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to benz'),
      ),
       body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
        child: Text('Sign in anon'),
        onPressed: () async {
          dynamic result = await _auth.signInAnon();
          if (result == null) {
            print('error signing in');
          }else{
            print('signed in');
            print(result.uid);
          }
        },
        )
       ),
    );
  }
}