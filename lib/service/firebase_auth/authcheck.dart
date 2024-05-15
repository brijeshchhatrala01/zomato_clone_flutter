import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone_flutter/pages/homepae/homepage.dart';
import 'package:zomato_clone_flutter/pages/login/login.dart';

class FirebaseAuthCheck extends StatelessWidget {
  const FirebaseAuthCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Homepage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
