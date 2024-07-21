import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA1z1olcswqDFHBL7lYNHbGMS6GhLz6JWI",
            authDomain: "constitution-simplified.firebaseapp.com",
            projectId: "constitution-simplified",
            storageBucket: "constitution-simplified.appspot.com",
            messagingSenderId: "263618685588",
            appId: "1:263618685588:web:cdb0488fde67f2b099a281",
            measurementId: "G-180BKFXHGY"));
  } else {
    await Firebase.initializeApp();
  }
}
