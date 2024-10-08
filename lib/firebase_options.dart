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
    apiKey: 'AIzaSyCHDbBIK29e-sdzopeCPl_4YJco8pQBf2M',
    appId: '1:728608293847:web:fc7797e8309ea579ffc192',
    messagingSenderId: '728608293847',
    projectId: 'easy-elea',
    authDomain: 'easy-elea.firebaseapp.com',
    storageBucket: 'easy-elea.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBv_E7VcESocgMas1pr_T_U04l4wlFLIx8',
    appId: '1:728608293847:android:ea24a36939661bd2ffc192',
    messagingSenderId: '728608293847',
    projectId: 'easy-elea',
    storageBucket: 'easy-elea.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-1mx9N3VWQZth5KkvwJsHEQMVuf4i7_s',
    appId: '1:728608293847:ios:a0aad93ca385e891ffc192',
    messagingSenderId: '728608293847',
    projectId: 'easy-elea',
    storageBucket: 'easy-elea.appspot.com',
    iosBundleId: 'com.example.easyElea',
  );
}
