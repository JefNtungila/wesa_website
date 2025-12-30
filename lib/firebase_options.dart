import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        throw UnsupportedError('Android options not configured yet.');
      case TargetPlatform.iOS:
        throw UnsupportedError('iOS options not configured yet.');
      default:
        throw UnsupportedError('DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCLeYf4KRH0vACesyTd6uRcCFV8J5wtAps',
    authDomain: 'jefntungila-ba9ce.firebaseapp.com',
    projectId: 'jefntungila-ba9ce',
    storageBucket: 'jefntungila-ba9ce.firebasestorage.app',
    messagingSenderId: '808813136301',
    appId: '1:808813136301:web:a3472e7983bf21f5a73924',
    measurementId: 'G-MGGYG93VYM',
  );
}