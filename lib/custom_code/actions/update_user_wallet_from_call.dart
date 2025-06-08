// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

Future<void> updateUserWalletFromCall(
    int elapsedSeconds, DocumentReference lawyerRef) async {
  try {
    final lawyerDoc = await lawyerRef.get();
    final lawyerData = lawyerDoc.data() as Map<String, dynamic>?;

    if (lawyerData == null) return;

    final int lawyerCharge = lawyerData['lawyercharge'] ?? 0;
    final int callCost = elapsedSeconds * lawyerCharge;

    final role = valueOrDefault(currentUserDocument?.role, '');
    final userRef = currentUserReference;

    if (userRef == null) return;

    if (role == 'lawyer') {
      await userRef.update({'Waller': FieldValue.increment(callCost)});
    } else {
      await userRef.update({'Waller': FieldValue.increment(-callCost)});
    }
  } catch (e) {
    // Silently fail in production without printing
  }
}
// and then add the boilerplate code using the green button on the right!
