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

import 'dart:typed_data';
import 'package:image/image.dart' as img;

Future<List<FFUploadedFile>> compressImage(FFUploadedFile image) async {
  try {
    final decoded = img.decodeImage(image.bytes!);
    if (decoded == null) throw Exception('Could not decode image');

    // Resize if larger than bounds
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

    // Enhance using best quality values (Instagram style)
    final enhanced = img.adjustColor(
      resized,
      brightness: 2,
      contrast: 2,
      saturation: 1,
    );

    // Encode to JPEG (safe for all platforms)
    final jpegBytes = Uint8List.fromList(img.encodeJpg(enhanced, quality: 85));
    final jpegFile = FFUploadedFile(
      name: 'compressed.jpg',
      bytes: jpegBytes,
      height: enhanced.height.toDouble(),
      width: enhanced.width.toDouble(),
    );

    return [jpegFile];
  } catch (e) {
    print('🛑 Compression Error: \$e');
    return [image]; // Fallback to original
  }
}
