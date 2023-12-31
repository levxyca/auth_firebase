// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAY7Nbby5WuGammC3Bg57si-MYeiaG1lFc',
    appId: '1:520039562779:web:d9ed4ad59b847d9d7cc2be',
    messagingSenderId: '520039562779',
    projectId: 'auth-firebase-a347c',
    authDomain: 'auth-firebase-a347c.firebaseapp.com',
    storageBucket: 'auth-firebase-a347c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7v2bdjLmkwzeOu5oGxuZ9Ne3iCY1KH3g',
    appId: '1:520039562779:android:7e499dad6234ceab7cc2be',
    messagingSenderId: '520039562779',
    projectId: 'auth-firebase-a347c',
    storageBucket: 'auth-firebase-a347c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCqZ8YQUjVXoMjA4DNi-FooHngrVJv_O6s',
    appId: '1:520039562779:ios:53ada2bc75e13b557cc2be',
    messagingSenderId: '520039562779',
    projectId: 'auth-firebase-a347c',
    storageBucket: 'auth-firebase-a347c.appspot.com',
    iosBundleId: 'com.example.authFirebase',
  );
}
