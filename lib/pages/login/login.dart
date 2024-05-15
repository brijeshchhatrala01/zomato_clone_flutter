import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:zomato_clone_flutter/service/auth_service.dart';
import 'package:zomato_clone_flutter/service/firebase_auth/authcheck.dart';
import 'package:zomato_clone_flutter/theme/colors.dart';

import '../../custom_widgets/custom_widgets.dart';

//login page
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void goToAuthCheck() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FirebaseAuthCheck(),
      ),
    );
  }

  //moble number controller
  final _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //get device height & width
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            //header image
            Image.asset(
              'Assets/ic_login.png',
              width: displayWidth,
              height: displayHeight / 2.3,
              fit: BoxFit.cover,
            ),
            mediumSizedBox,
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "India's #1 Food Delivery \n\t\t\t\t\t\t and Dining App",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                  mediumSizedBox,
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 10,
                      ),
                      Center(child: Text("Log in or sign up")),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  smallSizedBox,
                  TextFormField(
                    controller: _mobileNumberController,
                    style: const TextStyle(fontSize: 18),
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    autofocus: true,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 18),
                        prefixText: "+91\t",
                        prefixStyle:
                            const TextStyle(color: kBlackColor, fontSize: 18),
                        hintText: "Enter Phone Number",
                        hintStyle: TextStyle(color: Colors.grey[300]),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey[300]!)),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey[300]!)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.grey[300]!))),
                  ),
                  smallSizedBox,
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  primaryColorWhite),
                              shape: const MaterialStatePropertyAll(
                                  BeveledRectangleBorder()),
                              padding: MaterialStateProperty.all(
                                  const EdgeInsets.all(15))),
                          onPressed: () {
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => const Homepage(),
                            //   ),
                            // );
                            FirebaseAuthService().signInWithPhone(
                                _mobileNumberController.text.trim(), context);
                            print(_mobileNumberController.text);
                          },
                          child: const Text(
                            "Continue",
                            style: TextStyle(color: kWhiteColor),
                          ))),
                  smallSizedBox,
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 10,
                      ),
                      Center(child: Text("or")),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () => FirebaseAuthService()
                            .signInWithGoogleAccount(context)
                            .whenComplete(() => goToAuthCheck()),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: kGrey),
                              borderRadius: BorderRadius.circular(100)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: kWhiteColor,
                              backgroundImage:
                                  AssetImage('Assets/ic_google.png'),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: kGrey),
                            borderRadius: BorderRadius.circular(100)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: kWhiteColor,
                            child: Icon(Icons.more_horiz),
                          ),
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                  smallSizedBox,
                ],
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By Continuing, you agree to our',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Terms of Service Privacy Policy Content Policy',
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
