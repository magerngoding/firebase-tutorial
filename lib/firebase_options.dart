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

      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAmK9rr4--1ghgHtgrFekORUf-_R-rFr-0',
    appId: '1:590496052489:web:4974b7545e9b823d454fd8',
    messagingSenderId: '590496052489',
    projectId: 'magerngoding-firebase',
    authDomain: 'magerngoding-firebase.firebaseapp.com',
    databaseURL:
        'https://magerngoding-firebase-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'magerngoding-firebase.appspot.com',
    measurementId: 'G-P1RHP4CNLM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfro5zSTSo8nknC6AOd8raH49K-XDF2dU',
    appId: '1:590496052489:android:d582f0cad5327d90454fd8',
    messagingSenderId: '590496052489',
    projectId: 'magerngoding-firebase',
    databaseURL:
        'https://magerngoding-firebase-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'magerngoding-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA14jWrURhddHnRKFYwnNlK4qO4jeY7bJM',
    appId: '1:590496052489:ios:4dfb35e9ebb13d75454fd8',
    messagingSenderId: '590496052489',
    projectId: 'magerngoding-firebase',
    databaseURL:
        'https://magerngoding-firebase-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'magerngoding-firebase.appspot.com',
    iosBundleId: 'com.example.firebaseTutorial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA14jWrURhddHnRKFYwnNlK4qO4jeY7bJM',
    appId: '1:590496052489:ios:4dfb35e9ebb13d75454fd8',
    messagingSenderId: '590496052489',
    projectId: 'magerngoding-firebase',
    databaseURL:
        'https://magerngoding-firebase-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'magerngoding-firebase.appspot.com',
    iosBundleId: 'com.example.firebaseTutorial',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAmK9rr4--1ghgHtgrFekORUf-_R-rFr-0',
    appId: '1:590496052489:web:e01dc56451f0d5c5454fd8',
    messagingSenderId: '590496052489',
    projectId: 'magerngoding-firebase',
    authDomain: 'magerngoding-firebase.firebaseapp.com',
    databaseURL:
        'https://magerngoding-firebase-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'magerngoding-firebase.appspot.com',
    measurementId: 'G-K14FGLNJST',
  );
}
