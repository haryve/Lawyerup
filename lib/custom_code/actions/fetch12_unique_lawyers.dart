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

Future<List<LawyersRecord>> fetch12UniqueLawyers(
    List<LawyersRecord>? existing) async {
  final existingIds = existing?.map((doc) => doc.reference.id).toSet() ?? {};
  final List<LawyersRecord> allFetched = [];

  // Random seed for variety

  final querySnapshot = await FirebaseFirestore.instance
      .collection('lawyers')
      .orderBy('createdtime', descending: true)
      .limit(12)
      .get();

  for (final doc in querySnapshot.docs) {
    final lawyer = LawyersRecord.fromSnapshot(doc);
    if (!existingIds.contains(lawyer.reference.id)) {
      allFetched.add(lawyer);
    }
    if (allFetched.length == 12) break;
  }

  // If not enough, fetch more from beginning
  if (allFetched.length < 12) {
    final moreSnapshot = await FirebaseFirestore.instance
        .collection('lawyers')
        .orderBy('createdtime', descending: true)
        .limit(12)
        .get();

    for (final doc in moreSnapshot.docs) {
      final lawyer = LawyersRecord.fromSnapshot(doc);
      if (!existingIds.contains(lawyer.reference.id) &&
          !allFetched.any((l) => l.reference.id == lawyer.reference.id)) {
        allFetched.add(lawyer);
      }
      if (allFetched.length == 12) break;
    }
  }

  return allFetched;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
