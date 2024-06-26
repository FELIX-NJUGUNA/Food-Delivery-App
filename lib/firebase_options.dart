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
    apiKey: 'AIzaSyCsHEEGca3oWXbxKBcGXBDWsHclUg7Kuyg',
    appId: '1:1033202240356:web:ea5e071ceeac5f501fc871',
    messagingSenderId: '1033202240356',
    projectId: 'food-delivery-app-a081c',
    authDomain: 'food-delivery-app-a081c.firebaseapp.com',
    storageBucket: 'food-delivery-app-a081c.appspot.com',
    measurementId: 'G-8V1QNN1PJY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXhsojMb-fXG-sVlZOJzS9ecTJ5WWvbHk',
    appId: '1:1033202240356:android:0ebd07f85bdc28971fc871',
    messagingSenderId: '1033202240356',
    projectId: 'food-delivery-app-a081c',
    storageBucket: 'food-delivery-app-a081c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAM27iOzp_5xBLP0Ipad3pbZX2WgocZ63U',
    appId: '1:1033202240356:ios:d6ec8a137b3f16971fc871',
    messagingSenderId: '1033202240356',
    projectId: 'food-delivery-app-a081c',
    storageBucket: 'food-delivery-app-a081c.appspot.com',
    iosBundleId: 'com.fooddeliveryapp.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAM27iOzp_5xBLP0Ipad3pbZX2WgocZ63U',
    appId: '1:1033202240356:ios:d6ec8a137b3f16971fc871',
    messagingSenderId: '1033202240356',
    projectId: 'food-delivery-app-a081c',
    storageBucket: 'food-delivery-app-a081c.appspot.com',
    iosBundleId: 'com.fooddeliveryapp.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCsHEEGca3oWXbxKBcGXBDWsHclUg7Kuyg',
    appId: '1:1033202240356:web:27e87615453566341fc871',
    messagingSenderId: '1033202240356',
    projectId: 'food-delivery-app-a081c',
    authDomain: 'food-delivery-app-a081c.firebaseapp.com',
    storageBucket: 'food-delivery-app-a081c.appspot.com',
    measurementId: 'G-H8BWHJHG6P',
  );

}