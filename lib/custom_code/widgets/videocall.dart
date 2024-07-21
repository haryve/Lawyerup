// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class Videocall extends StatefulWidget {
  const Videocall({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Videocall> createState() => _VideocallState();
}

class _VideocallState extends State<Videocall> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          yourAppID, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          yourAppSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: 'user_id',
      userName: 'user_name',
      callID: 'callID',
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
