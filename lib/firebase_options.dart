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
    apiKey: 'AIzaSyBkEbMEwu2HZycSzLoV27GUHt9a7_PONOI',
    appId: '1:1011351082788:web:4a0548d0f6ff27e7ea85b1',
    messagingSenderId: '1011351082788',
    projectId: 'tourism-b76fc',
    authDomain: 'tourism-b76fc.firebaseapp.com',
    storageBucket: 'tourism-b76fc.firebasestorage.app',
    measurementId: 'G-34GW1ELDB6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDUfakTqvjC02JIgHzqz_J0h8MWvJVMqjM',
    appId: '1:1011351082788:android:54057d6e63f4f7beea85b1',
    messagingSenderId: '1011351082788',
    projectId: 'tourism-b76fc',
    storageBucket: 'tourism-b76fc.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAM4kMw7X4TeiRZmZBukWyXVlDb8OqOBBU',
    appId: '1:1011351082788:ios:5f3d710c40dfff6cea85b1',
    messagingSenderId: '1011351082788',
    projectId: 'tourism-b76fc',
    storageBucket: 'tourism-b76fc.firebasestorage.app',
    iosBundleId: 'com.example.projecttest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAM4kMw7X4TeiRZmZBukWyXVlDb8OqOBBU',
    appId: '1:1011351082788:ios:5f3d710c40dfff6cea85b1',
    messagingSenderId: '1011351082788',
    projectId: 'tourism-b76fc',
    storageBucket: 'tourism-b76fc.firebasestorage.app',
    iosBundleId: 'com.example.projecttest',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBkEbMEwu2HZycSzLoV27GUHt9a7_PONOI',
    appId: '1:1011351082788:web:54dd5809fff121bfea85b1',
    messagingSenderId: '1011351082788',
    projectId: 'tourism-b76fc',
    authDomain: 'tourism-b76fc.firebaseapp.com',
    storageBucket: 'tourism-b76fc.firebasestorage.app',
    measurementId: 'G-X8TGB13XTQ',
  );
}
