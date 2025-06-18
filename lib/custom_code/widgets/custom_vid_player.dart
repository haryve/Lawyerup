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

import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'dart:async';

class CustomVidPlayer extends StatefulWidget {
  const CustomVidPlayer({
    Key? key,
    required this.videoPath,
    this.width,
    this.height,
    this.playPauseVideoAction = false,
    this.looping = false,
    this.showControls = false,
    this.allowFullScreen = false,
    this.allowPlayBackSpeedChanging = false,
    this.controlAudio = false,
    this.loadingCircleColor,
    this.enablePlayOnFocus = false,
    this.imageThumbnail,
    this.playbackSpeed,
    this.startTimeSeconds,
    this.actualTimestamp,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String videoPath;
  final bool playPauseVideoAction;
  final bool looping;
  final bool showControls;
  final bool allowFullScreen;
  final bool allowPlayBackSpeedChanging;
  final bool controlAudio;
  final Color? loadingCircleColor;
  final bool enablePlayOnFocus;
  final String? imageThumbnail;
  final double? playbackSpeed;
  final int? startTimeSeconds;
  final Future Function(int timestampSeconds)? actualTimestamp;

  @override
  State<CustomVidPlayer> createState() => _CustomVidPlayerState();
}

class _CustomVidPlayerState extends State<CustomVidPlayer> {
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;
  Timer? _positionTimer;
  bool _isVisible = true;
  bool _isInitialized = false;

  Future<void> _initializePlayer() async {
    _videoController = VideoPlayerController.network(widget.videoPath);
    try {
      await _videoController.initialize();
      if (widget.startTimeSeconds != null) {
        _videoController.seekTo(Duration(seconds: widget.startTimeSeconds!));
      }

      _chewieController = ChewieController(
        videoPlayerController: _videoController,
        looping: widget.looping,
        showControls: widget.showControls,
        allowFullScreen: widget.allowFullScreen,
        allowPlaybackSpeedChanging: widget.allowPlayBackSpeedChanging,
        autoPlay: false,
        aspectRatio: _videoController.value.aspectRatio,
        materialProgressColors: ChewieProgressColors(
          playedColor: widget.loadingCircleColor ?? Colors.blue,
          handleColor: widget.loadingCircleColor ?? Colors.blue,
        ),
      );

      _updateAudioVolume();
      _updatePlaybackSpeed();
      _startPositionTracking();
      setState(() => _isInitialized = true);
    } catch (e) {
      debugPrint('Error initializing video: $e');
    }
  }

  void _startPositionTracking() {
    _positionTimer?.cancel();
    if (widget.actualTimestamp != null) {
      _positionTimer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (_videoController.value.isInitialized) {
          widget.actualTimestamp!(_videoController.value.position.inSeconds);
        }
      });
    }
  }

  void _updateAudioVolume() {
    _videoController.setVolume(widget.controlAudio ? 1.0 : 0.0);
  }

  void _updatePlaybackSpeed() {
    final speed = (widget.playbackSpeed ?? 1.0).clamp(0.5, 2.0);
    _videoController.setPlaybackSpeed(speed);
  }

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  @override
  void didUpdateWidget(CustomVidPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.playPauseVideoAction != oldWidget.playPauseVideoAction) {
      widget.playPauseVideoAction
          ? _videoController.play()
          : _videoController.pause();
    }
    if (widget.controlAudio != oldWidget.controlAudio) {
      _updateAudioVolume();
    }
    if (widget.playbackSpeed != oldWidget.playbackSpeed) {
      _updatePlaybackSpeed();
    }
  }

  @override
  void dispose() {
    _positionTimer?.cancel();
    _videoController.pause();
    _videoController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.videoPath),
      onVisibilityChanged: (info) {
        _isVisible = info.visibleFraction > 0.9;
        if (widget.enablePlayOnFocus) {
          if (_isVisible) {
            _videoController.play();
          } else {
            _videoController.pause();
          }
        }
      },
      child: Container(
        width: widget.width ?? double.infinity,
        height: widget.height ?? 250,
        child: !_isInitialized
            ? (widget.imageThumbnail != null
                ? Image.network(widget.imageThumbnail!, fit: BoxFit.cover)
                : Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        widget.loadingCircleColor ?? Colors.blue,
                      ),
                    ),
                  ))
            : Stack(
                children: [
                  Chewie(controller: _chewieController!),
                  if (!widget.showControls)
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        setState(() {
                          if (_videoController.value.isPlaying) {
                            _videoController.pause();
                          } else {
                            _videoController.play();
                          }
                        });
                      },
                      child: Container(
                        color: Colors.transparent,
                      ),
                    ),
                ],
              ),
      ),
    );
  }
}
