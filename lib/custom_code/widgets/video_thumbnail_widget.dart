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

import 'package:video_thumbnail/video_thumbnail.dart';
import 'dart:typed_data';

class VideoThumbnailWidget extends StatefulWidget {
  const VideoThumbnailWidget({
    Key? key,
    required this.videoUrl,
    this.height,
    this.width,
    this.borderRadius = 8.0,
    this.placeholder,
  }) : super(key: key);

  final String videoUrl;
  final double? height;
  final double? width;
  final double borderRadius;
  final Widget? placeholder;

  @override
  _VideoThumbnailWidgetState createState() => _VideoThumbnailWidgetState();
}

class _VideoThumbnailWidgetState extends State<VideoThumbnailWidget> {
  Uint8List? thumbnailBytes;

  @override
  void initState() {
    super.initState();
    _generateThumbnail();
  }

  Future<void> _generateThumbnail() async {
    final bytes = await VideoThumbnail.thumbnailData(
      video: widget.videoUrl,
      imageFormat: ImageFormat.JPEG,
      quality: 80,
    );
    setState(() {
      thumbnailBytes = bytes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: thumbnailBytes != null
          ? Image.memory(
              thumbnailBytes!,
              height: widget.height,
              width: widget.width,
              fit: BoxFit.cover,
            )
          : widget.placeholder ??
              Container(
                height: widget.height,
                width: widget.width,
                color: Colors.grey[300],
                child: Center(child: CircularProgressIndicator()),
              ),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
