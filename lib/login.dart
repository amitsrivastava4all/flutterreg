import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  _showSnackBar(message) {
    Scaffold.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: Duration(seconds: 3)));
  }

  Future<FirebaseUser> _loginIn() async {
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication gSA = await googleSignInAccount.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: gSA.accessToken,
      idToken: gSA.idToken,
    );
    final FirebaseUser user = await _auth.signInWithCredential(credential);
    print("User is $user");
    return user;
  }

  _logout() {
    googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text(
          'Login with Gmail',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                _loginIn().then((fireBaseUser) {
                  print("FireBase User $fireBaseUser");
                  //_showSnackBar('Login SuccessFully');
                }).catchError((err) {
                  print("Error is $err");
                  // _showSnackBar("Error During Login");
                });
              },
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20),
              ),
            ),
            RaisedButton(
              color: Colors.lightGreenAccent,
              onPressed: () {
                _logout();
              },
              child: Text(
                'Logout',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
