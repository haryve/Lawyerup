import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAm2e1Qg28JPDObPJ97kWCAq-Y3DeRPuTs",
            authDomain: "constitution-simplified.firebaseapp.com",
            projectId: "constitution-simplified",
            storageBucket: "constitution-simplified.appspot.com",
            messagingSenderId: "263618685588",
            appId: "1:263618685588:web:ca2e646d37e76aec99a281",
            measurementId: "G-9MQ3K54GEK"));
  } else {
    await Firebase.initializeApp();
  }
}
