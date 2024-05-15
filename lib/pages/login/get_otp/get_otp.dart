import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone_flutter/service/firebase_auth/authcheck.dart';

class GetOTP extends StatelessWidget {
  String mobile;
  String verificationId;
  GetOTP({super.key, required this.mobile, required this.verificationId});

  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _otpController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter OTP',
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () => mobileSignIn(context),
              child: Text('S U B M I T'),
            )
          ],
        ),
      ),
    );
  }

  mobileSignIn(BuildContext context) {
    var smsCode = _otpController.text.trim();
    final _auth = FirebaseAuth.instance;
    final _credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);
    _auth
        .signInWithCredential(_credential)
        .whenComplete(() => goToAuthCheck(context));
  }

  goToAuthCheck(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FirebaseAuthCheck(),
      ),
    );
  }
}
