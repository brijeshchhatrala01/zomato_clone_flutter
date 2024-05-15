// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDG1CT23IAxLBzcpu18g_Ti30czpONpZu0',
    appId: '1:810508740069:web:75490ccae0ae1e1e36fb0c',
    messagingSenderId: '810508740069',
    projectId: 'zomato-clone-22185',
    authDomain: 'zomato-clone-22185.firebaseapp.com',
    storageBucket: 'zomato-clone-22185.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBi6Ol4rl0TwqQ1yJoJXN2y17ikI1GZryw',
    appId: '1:810508740069:android:e9456ef9e410025736fb0c',
    messagingSenderId: '810508740069',
    projectId: 'zomato-clone-22185',
    storageBucket: 'zomato-clone-22185.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTvieyauNpZYlE6pzsaUMufz9jJjy2CH0',
    appId: '1:810508740069:ios:cb1663f51b37eb1d36fb0c',
    messagingSenderId: '810508740069',
    projectId: 'zomato-clone-22185',
    storageBucket: 'zomato-clone-22185.appspot.com',
    iosBundleId: 'com.example.zomatoCloneFlutter',
  );
}
