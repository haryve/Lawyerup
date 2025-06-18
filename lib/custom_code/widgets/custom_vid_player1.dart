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

// FlutterFlow auto imports
import '/custom_code/widgets/index.dart';
import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
// Do not modify above

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:async';
import 'dart:io';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:visibility_detector/visibility_detector.dart';

class CustomVidPlayer1 extends StatefulWidget {
  const CustomVidPlayer1({
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
  State<CustomVidPlayer1> createState() => _CustomVidPlayer1State();
}

class _CustomVidPlayer1State extends State<CustomVidPlayer1> {
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;
  Timer? _positionTimer;
  bool _isVisible = true;
  bool _isInitialized = false;
  String? _localPath;
  bool _isOffline = false;
  int _downloadProgress = 0;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    await _checkPermissions();
    await _checkOrDownloadVideo();

    final controller = _isOffline
        ? VideoPlayerController.file(File(_localPath!))
        : VideoPlayerController.network(widget.videoPath);

    try {
      await controller.initialize();

      if (widget.startTimeSeconds != null) {
        controller.seekTo(Duration(seconds: widget.startTimeSeconds!));
      } else {
        await _resumeLastPosition(controller);
      }

      final chewie = ChewieController(
        videoPlayerController: controller,
        looping: widget.looping,
        showControls: widget.showControls,
        allowFullScreen: widget.allowFullScreen,
        allowPlaybackSpeedChanging: widget.allowPlayBackSpeedChanging,
        autoPlay: false,
        aspectRatio: controller.value.aspectRatio,
        materialProgressColors: ChewieProgressColors(
          playedColor: widget.loadingCircleColor ?? Colors.blue,
          handleColor: widget.loadingCircleColor ?? Colors.blue,
        ),
      );

      _videoController = controller;
      _chewieController = chewie;
      _updateAudioVolume();
      _updatePlaybackSpeed();
      _startPositionTracking();
      setState(() => _isInitialized = true);
    } catch (e) {
      debugPrint('Error initializing video: $e');
    }
  }

  Future<void> _checkPermissions() async {
    if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      await Permission.storage.request();
      await Permission.notification.request();
    }
  }

  Future<void> _checkOrDownloadVideo() async {
    if (kIsWeb) return; // Skip offline for web

    final dir = await getApplicationDocumentsDirectory();
    final fileName = widget.videoPath.split('/').last;
    final path = '${dir.path}/$fileName';
    _localPath = path;

    if (File(path).existsSync()) {
      _isOffline = true;
    } else {
      final taskId = await FlutterDownloader.enqueue(
        url: widget.videoPath,
        savedDir: dir.path,
        fileName: fileName,
        showNotification: true,
        openFileFromNotification: false,
      );

      FlutterDownloader.registerCallback((id, status, progress) {
        if (progress == 100) {
          setState(() {
            _downloadProgress = 100;
            _isOffline = true;
          });
        } else {
          setState(() {
            _downloadProgress = progress;
          });
        }
      });
    }
  }

  void _startPositionTracking() {
    _positionTimer?.cancel();
    if (widget.actualTimestamp != null && _videoController != null) {
      _positionTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (_videoController!.value.isInitialized) {
          widget.actualTimestamp!(_videoController!.value.position.inSeconds);
        }
      });
    }
  }

  Future<void> _resumeLastPosition(VideoPlayerController controller) async {
    final prefs = await SharedPreferences.getInstance();
    final key = widget.videoPath.hashCode.toString();
    final pos = prefs.getInt('video_pos_$key') ?? 0;
    if (pos > 0) {
      controller.seekTo(Duration(seconds: pos));
    }
  }

  Future<void> _saveLastPosition() async {
    if (_videoController == null) return;
    final prefs = await SharedPreferences.getInstance();
    final pos = _videoController!.value.position.inSeconds;
    final key = widget.videoPath.hashCode.toString();
    await prefs.setInt('video_pos_$key', pos);
  }

  void _updateAudioVolume() {
    if (_videoController == null) return;
    _videoController!.setVolume(widget.controlAudio ? 1.0 : 0.0);
  }

  void _updatePlaybackSpeed() {
    if (_videoController == null) return;
    final speed = (widget.playbackSpeed ?? 1.0).clamp(0.5, 2.0);
    _videoController!.setPlaybackSpeed(speed);
  }

  @override
  void dispose() {
    _saveLastPosition();
    _positionTimer?.cancel();
    _videoController?.pause();
    _videoController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CustomVidPlayer1 oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_videoController == null) return;

    if (widget.playPauseVideoAction != oldWidget.playPauseVideoAction) {
      widget.playPauseVideoAction
          ? _videoController!.play()
          : _videoController!.pause();
    }
    if (widget.controlAudio != oldWidget.controlAudio) {
      _updateAudioVolume();
    }
    if (widget.playbackSpeed != oldWidget.playbackSpeed) {
      _updatePlaybackSpeed();
    }
  }

  Widget _buildSkipButtons() {
    if (_videoController == null) return const SizedBox.shrink();
    return Positioned(
      bottom: 50,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.replay_10, color: Colors.white, size: 32),
            onPressed: () {
              final pos = _videoController!.value.position;
              _videoController!.seekTo(pos - const Duration(seconds: 10));
            },
          ),
          IconButton(
            icon: const Icon(Icons.forward_10, color: Colors.white, size: 32),
            onPressed: () {
              final pos = _videoController!.value.position;
              _videoController!.seekTo(pos + const Duration(seconds: 10));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.videoPath),
      onVisibilityChanged: (info) {
        _isVisible = info.visibleFraction > 0.9;
        if (widget.enablePlayOnFocus && _videoController != null) {
          _isVisible ? _videoController!.play() : _videoController!.pause();
        }
      },
      child: Container(
        width: widget.width ?? double.infinity,
        height: widget.height ?? 250,
        child: !_isInitialized || _videoController == null
            ? Stack(
                alignment: Alignment.center,
                children: [
                  if (widget.imageThumbnail != null)
                    Image.network(widget.imageThumbnail!, fit: BoxFit.cover),
                  if (_downloadProgress > 0 && _downloadProgress < 100)
                    Text("Downloading: $_downloadProgress%"),
                  if (widget.imageThumbnail == null)
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        widget.loadingCircleColor ?? Colors.blue,
                      ),
                    ),
                ],
              )
            : Stack(
                children: [
                  Chewie(controller: _chewieController!),
                  if (!widget.showControls)
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        setState(() {
                          if (_videoController!.value.isPlaying) {
                            _videoController!.pause();
                          } else {
                            _videoController!.play();
                          }
                        });
                      },
                      child: Container(color: Colors.transparent),
                    ),
                  _buildSkipButtons(),
                ],
              ),
      ),
    );
  }
}
