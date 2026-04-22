import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signupgoogle extends StatefulWidget {
  const Signupgoogle({Key? key}) : super(key: key);

  @override
  _SignupgoogleState createState() => _SignupgoogleState();
}

class _SignupgoogleState extends State<Signupgoogle> {
  Future<UserCredential> signInWithGoogle() async {
    GoogleAuthProvider googleProvider = GoogleAuthProvider();
    googleProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

    return await FirebaseAuth.instance.signInWithPopup(googleProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up with Google'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              UserCredential userCredential = await signInWithGoogle();
              // Handle successful sign-in
              print('Signed in as ${userCredential.user?.displayName}');

              Navigator.pushNamed(context, "/products");
            } catch (e) {
              // Handle sign-in error
              print('Error signing in with Google: $e');
            }
          },
          child: Text('Sign Up with Google'),
        ),
      ),
    );
  }
}
