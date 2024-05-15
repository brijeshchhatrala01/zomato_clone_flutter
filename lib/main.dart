import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zomato_clone_flutter/firebase_options.dart';
import 'package:zomato_clone_flutter/pages/splash/splash.dart';
import 'package:zomato_clone_flutter/theme/theme.dart';

//main method
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

//root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //set theme according to device
      theme: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? ThemeDataApp.ThemeDataLight()
          : ThemeDataApp.ThemeDataLight(),
      home: const SplashScreen(),
    );
  }
}
