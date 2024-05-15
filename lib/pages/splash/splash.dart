import 'dart:async';
import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zomato_clone_flutter/service/firebase_auth/authcheck.dart';

import '../login/login.dart';

//splashscreen page
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //call splash method
    // splashMethod();
    checkConnectivity();
    super.initState();
  }

  void goToAuth() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const FirebaseAuthCheck(),
      ),
    );
  }

  Future<void> showNetworkError() async {
    return showDialog(
      context: context,
      builder: (context) {
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;
        return AlertDialog(
          title: const Text(
            textAlign: TextAlign.center,
            'Network Not Available!!!',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          content: Image.asset(
            'Assets/smartphone.png',
            width: width * 0.4,
            height: height * 0.4,
          ),
          actions: [
            ElevatedButton(
              onPressed: () => exit(0),
              child: const Text('E X I T'),
            )
          ],
        );
      },
    );
  }

  Future checkConnectivity() async {
    var connection = await Connectivity().checkConnectivity();

    if (connection == ConnectivityResult.mobile ||
        connection == ConnectivityResult.wifi) {
      splashMethod();
    } else {
      showNetworkError();
    }
  }

  void splashMethod() async {
    //after 3 second app screen navigate to login page
    Timer(const Duration(seconds: 3), () {
      goToAuth();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('Assets/pizza_splash.json'),
      ),
    );
  }
}
