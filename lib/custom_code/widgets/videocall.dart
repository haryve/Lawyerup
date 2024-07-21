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

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import 'index.dart'; // Imports other custom widgets

class Videocall extends StatefulWidget {
  const Videocall({
    super.key,
    this.width,
    this.height,
    required this.callId,
    required this.userID,
    required this.username,
  });

  final double? width;
  final double? height;
  final String callId;
  final String userID;
  final String username;

  @override
  State<Videocall> createState() => _VideocallState();
}

class _VideocallState extends State<Videocall> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          0115458464, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "59982438461c55d40907a32a5634f712c5634be9ce212ef9ee9f59838e6bdfbd", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: widget.userID,
      userName: widget.username,
      callID: widget.callId,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
