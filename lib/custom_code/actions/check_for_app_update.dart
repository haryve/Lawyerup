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

import 'package:in_app_update/in_app_update.dart';

Future<String> checkForAppUpdate() async {
  try {
    AppUpdateInfo updateInfo = await InAppUpdate.checkForUpdate();

    if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
      // Perform an immediate update
      try {
        await InAppUpdate.performImmediateUpdate();
        return 'Update completed successfully.';
      } catch (e) {
        return 'Error during update: $e';
      }
    } else {
      return 'Already updated app';
    }
  } catch (e) {
    return 'Error checking for updates: $e';
  }
}
