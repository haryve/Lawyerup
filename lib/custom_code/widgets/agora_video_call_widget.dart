// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/flutter_flow/custom_functions.dart'
    as functions; // Imports custom functions

import 'dart:async';

import 'package:flutter/foundation.dart';
import '/auth/firebase_auth/auth_util.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

/// In FlutterFlow → Custom Widgets, expose these parameters:
///  • appId       (String, required)
///  • token       (String, required)
///  • channelName (String, required)
///  • enableVideo (bool, optional, default true)
///  • width       (double, optional)
///  • height      (double, optional)

class AgoraVideoCallWidget extends StatefulWidget {
  const AgoraVideoCallWidget({
    Key? key,
    required this.lawrefg,
    required this.appId,
    required this.token,
    required this.channelName,
    this.enableVideo = true,
    this.width,
    this.height,
  }) : super(key: key);

  final String appId;
  final String token;
  final String channelName;
  final bool enableVideo;
  final double? width;
  final double? height;
  final int lawrefg;

  @override
  State<AgoraVideoCallWidget> createState() => _AgoraVideoCallWidgetState();
}

class _AgoraVideoCallWidgetState extends State<AgoraVideoCallWidget> {
  late final RtcEngine _engine;
  bool _joined = false;
  int? _remoteUid;
  Timer? _callTimer; // Timer to track call duration
  int _elapsedTime = 0;
  @override
  void initState() {
    super.initState();
    _initAgora();
  }

  void _startCallTimer() {
    _elapsedTime = 0;
    _callTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTime++;
      });
    });
  }

  void _stopCallTimer() {
    _callTimer?.cancel();
    _callTimer = null;
  }

  Future<void> _initAgora() async {
    // 1️⃣ Request permissions on mobile
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      await [Permission.camera, Permission.microphone].request();
    }

    // 2️⃣ Create engine & initialize with context
    _engine = await RtcEngine.create(widget.appId);

    // 3️⃣ Register callbacks
    _engine.setEventHandler(RtcEngineEventHandler(
      joinChannelSuccess: (_, __, ___) {
        setState(() => _joined = true);
        _startCallTimer();
      },
      userJoined: (uid, _) {
        setState(() => _remoteUid = uid);
      },
      userOffline: (uid, __) {
        setState(() => _remoteUid = null);
      },
    ));

    // Stop the timer

    String _formatElapsedTime(int elapsedTime) {
      int hours = (elapsedTime / 3600).floor();
      int minutes = ((elapsedTime % 3600) / 60).floor();
      int seconds = elapsedTime % 60;
      return "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
    }

    // 4️⃣ Enable/disable video & always enable audio
    if (widget.enableVideo) {
      await _engine.enableVideo();
      await _engine.startPreview();
    } else {
      await _engine.disableVideo();
    }
    await _engine.enableAudio();

    // 5️⃣ Join channel
    await _engine.joinChannel(
      widget.token,
      widget.channelName,
      null,
      0,
    );
  }

  @override
  void dispose() {
    _engine.leaveChannel();
    _engine.destroy();
    _stopCallTimer(); // Stop the timer when the widget is disposed
    super.dispose();
  }

  Widget _buildLocalView() {
    if (!_joined || !widget.enableVideo) {
      return const Center(child: CircularProgressIndicator());
    }
    // Mobile uses SurfaceView, desktop uses TextureView
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      return RtcLocalView.SurfaceView();
    } else {
      return RtcLocalView.TextureView();
    }
  }

  Widget _buildRemoteView() {
    if (_remoteUid == null || !widget.enableVideo) {
      return const Center(child: Text('Waiting for remote user...'));
    }
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      return RtcRemoteView.SurfaceView(
        uid: _remoteUid!,
        channelId: widget.channelName,
      );
    } else {
      return RtcRemoteView.TextureView(
        uid: _remoteUid!,
        channelId: widget.channelName,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          // Remote view or placeholder
          Positioned.fill(child: _buildRemoteView()),

          // Local preview in top‐left
          if (widget.enableVideo)
            Positioned(
              top: 16,
              left: 16,
              width: 120,
              height: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  color: Colors.black54,
                  child: _buildLocalView(),
                ),
              ),
            ),

          // Hang‐up button
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.redAccent,
                  padding: const EdgeInsets.all(16),
                ),
                onPressed: () async {
                  _engine.leaveChannel();
                  int callcostt =
                      functions.calculatecost(_elapsedTime, widget.lawrefg)!;
                  FFAppState().incall = false;
                  await TimerRecord.collection.doc().set(createTimerRecordData(
                        callstarttimee:
                            _elapsedTime, // Assuming _elapsedTime tracks the start time in milliseconds
                      ));
                  await TimerRecord.collection.doc().set(createTimerRecordData(
                        callcost: functions.calculatecost(
                            _elapsedTime, widget.lawrefg),
                        // Assuming _elapsedTime tracks the start time in milliseconds
                      ));
                  if (valueOrDefault(currentUserDocument?.role, '') ==
                      'lawyer') {
                    await currentUserReference!.update({
                      ...mapToFirestore(
                        {
                          'Waller': FieldValue.increment(callcostt),
                        },
                      ),
                    });
                  } else {
                    await currentUserReference!.update({
                      ...mapToFirestore(
                        {
                          'Waller': FieldValue.increment(-callcostt),
                        },
                      ),
                    });
                  }
                  ;
                  _stopCallTimer();
                  Navigator.of(context).maybePop();
                },
                child:
                    const Icon(Icons.call_end, color: Colors.white, size: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
