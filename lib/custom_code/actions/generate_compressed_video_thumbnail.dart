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

// Add the following imports
import 'dart:typed_data';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'package:image/image.dart' as img;
import 'package:firebase_storage/firebase_storage.dart';

Future<String?> generateCompressedVideoThumbnail(String videoUrl) async {
  try {
    // Step 1: Generate thumbnail from video
    final thumbBytes = await VideoThumbnail.thumbnailData(
      video: videoUrl,
      imageFormat: ImageFormat.JPEG,
      quality: 80,
    );

    if (thumbBytes == null) throw Exception('Could not generate thumbnail');

    // Step 2: Decode image
    final decoded = img.decodeImage(thumbBytes);
    if (decoded == null) throw Exception('Could not decode thumbnail');

    // Step 3: Resize
    int maxWidth = 1440;
    int maxHeight = 1920;
    double aspectRatio = decoded.width / decoded.height;

    int resizedWidth = decoded.width;
    int resizedHeight = decoded.height;

    if (resizedWidth > maxWidth || resizedHeight > maxHeight) {
      if (aspectRatio >= 1) {
        resizedWidth = maxWidth;
        resizedHeight = (maxWidth / aspectRatio).round();
      } else {
        resizedHeight = maxHeight;
        resizedWidth = (maxHeight * aspectRatio).round();
      }
    }

    final resized = img.copyResize(
      decoded,
      width: resizedWidth,
      height: resizedHeight,
    );

    // Step 4: Enhance image
    final enhanced = img.adjustColor(
      resized,
      brightness: 2,
      contrast: 2,
      saturation: 1,
    );

    // Step 5: Encode to JPEG
    final finalBytes = Uint8List.fromList(img.encodeJpg(enhanced, quality: 85));

    // Step 6: Upload to Firebase Storage
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('thumbnails/video_thumb_$timestamp.jpg');

    final uploadTask = await storageRef.putData(finalBytes);
    final downloadUrl = await uploadTask.ref.getDownloadURL();

    return downloadUrl;
  } catch (e) {
    print('🛑 Error generating/uploading thumbnail: $e');
    return null;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
