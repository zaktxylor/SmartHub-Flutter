// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart';
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
        return macos;
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
    apiKey: 'AIzaSyCJplHyuZ5f4yQFPzsv7tA4xIKGWnpmNU4',
    appId: '1:852941266418:web:8c4cd815b58a068d719f6b',
    messagingSenderId: '852941266418',
    projectId: 'hubminds-4710f',
    authDomain: 'hubminds-4710f.firebaseapp.com',
    storageBucket: 'hubminds-4710f.appspot.com',
    measurementId: 'G-7M7PE2HLG3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAn56HjgttOgLvjYG6yaKZw0ANND3Iy3gA',
    appId: '1:852941266418:android:7f711359e305e840719f6b',
    messagingSenderId: '852941266418',
    projectId: 'hubminds-4710f',
    storageBucket: 'hubminds-4710f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC264h4A9pA7Lrz9OfbIJddPuciTCP5XW8',
    appId: '1:852941266418:ios:1049b61447113c10719f6b',
    messagingSenderId: '852941266418',
    projectId: 'hubminds-4710f',
    storageBucket: 'hubminds-4710f.appspot.com',
    iosClientId: '852941266418-qt68dpcdri6kl8csnabe62b7fvip1qm9.apps.googleusercontent.com',
    iosBundleId: 'com.example.smarthubFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC264h4A9pA7Lrz9OfbIJddPuciTCP5XW8',
    appId: '1:852941266418:ios:1049b61447113c10719f6b',
    messagingSenderId: '852941266418',
    projectId: 'hubminds-4710f',
    storageBucket: 'hubminds-4710f.appspot.com',
    iosClientId: '852941266418-qt68dpcdri6kl8csnabe62b7fvip1qm9.apps.googleusercontent.com',
    iosBundleId: 'com.example.smarthubFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCJplHyuZ5f4yQFPzsv7tA4xIKGWnpmNU4',
    appId: '1:852941266418:web:e05cf605cb333679719f6b',
    messagingSenderId: '852941266418',
    projectId: 'hubminds-4710f',
    authDomain: 'hubminds-4710f.firebaseapp.com',
    storageBucket: 'hubminds-4710f.appspot.com',
    measurementId: 'G-8K52V2H37R',
  );

}