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
    apiKey: 'AIzaSyBj7DnA-KVZjCwTOdbJivBF5gnexuzxM9A',
    appId: '1:865532905532:web:ce3d452592f9d6eb2b5b39',
    messagingSenderId: '865532905532',
    projectId: 'flutter-udg',
    authDomain: 'flutter-udg.firebaseapp.com',
    storageBucket: 'flutter-udg.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAINq5-FIi3ZYs1gEVPS6l6vjp93dMqRdI',
    appId: '1:865532905532:android:a1a640d0509888402b5b39',
    messagingSenderId: '865532905532',
    projectId: 'flutter-udg',
    storageBucket: 'flutter-udg.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA2diyxC2MeWa68ur6SV9emR_MvhaZx5m0',
    appId: '1:865532905532:ios:61195e441b6bb5bd2b5b39',
    messagingSenderId: '865532905532',
    projectId: 'flutter-udg',
    storageBucket: 'flutter-udg.firebasestorage.app',
    iosBundleId: 'com.example.ldswFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA2diyxC2MeWa68ur6SV9emR_MvhaZx5m0',
    appId: '1:865532905532:ios:61195e441b6bb5bd2b5b39',
    messagingSenderId: '865532905532',
    projectId: 'flutter-udg',
    storageBucket: 'flutter-udg.firebasestorage.app',
    iosBundleId: 'com.example.ldswFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBj7DnA-KVZjCwTOdbJivBF5gnexuzxM9A',
    appId: '1:865532905532:web:b6783d90eaa97f7a2b5b39',
    messagingSenderId: '865532905532',
    projectId: 'flutter-udg',
    authDomain: 'flutter-udg.firebaseapp.com',
    storageBucket: 'flutter-udg.firebasestorage.app',
  );
}
