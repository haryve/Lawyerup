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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

// Additional imports
import '/flutter_flow/lat_lng.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:google_maps_flutter/google_maps_flutter.dart' as gmap;
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

/// A map widget that displays the user's current location and nearby
/// doctors/lawyers
class AvatarMapAdvanced extends StatefulWidget {
  const AvatarMapAdvanced({
    super.key,
    this.width,
    this.height,
    required this.doctors,
    required this.searchRadiusKm,
    required this.userLocation,
  });

  final double? width;
  final double? height;
  final List<LawyersRecord> doctors;
  final double searchRadiusKm;
  final LatLng userLocation;

  @override
  State<AvatarMapAdvanced> createState() => _AvatarMapAdvancedState();
}

class _AvatarMapAdvancedState extends State<AvatarMapAdvanced> {
  gmap.GoogleMapController? _mapController;
  final Set<gmap.Marker> _markers = {};
  gmap.BitmapDescriptor? _userMarkerIcon;

  @override
  void initState() {
    super.initState();
    _loadUserIcon();
    _loadDoctorMarkers();
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }

  /// Loads a custom icon for the user's marker from assets
  Future<void> _loadUserIcon() async {
    try {
      final byteData =
          await DefaultAssetBundle.of(context).load('assets/user_marker.png');
      final bytes = byteData.buffer.asUint8List();
      _userMarkerIcon = gmap.BitmapDescriptor.fromBytes(bytes);
      _addUserMarker();
    } catch (e) {
      debugPrint('Failed to load user marker icon: \$e');
    }
  }

  /// Adds the user location marker to the map
  void _addUserMarker() {
    if (_userMarkerIcon == null) return;
    final marker = gmap.Marker(
      markerId: const gmap.MarkerId('user_location'),
      position: gmap.LatLng(
        widget.userLocation.latitude,
        widget.userLocation.longitude,
      ),
      icon: _userMarkerIcon!,
      infoWindow: const gmap.InfoWindow(title: 'You'),
    );
    setState(() => _markers.add(marker));
  }

  /// Downloads and converts a network image into a map marker icon
  Future<gmap.BitmapDescriptor> _getMarkerIcon(
    String url, {
    int size = 100,
  }) async {
    try {
      final response = await http.get(Uri.parse(url));
      final bytes = response.bodyBytes;
      final codec = await ui.instantiateImageCodec(
        bytes,
        targetWidth: size,
        targetHeight: size,
      );
      final frame = await codec.getNextFrame();
      final data = await frame.image.toByteData(format: ui.ImageByteFormat.png);
      return gmap.BitmapDescriptor.fromBytes(data!.buffer.asUint8List());
    } catch (e) {
      debugPrint('Error loading marker icon: \$e');
      return gmap.BitmapDescriptor.defaultMarker;
    }
  }

  /// Loads markers for each doctor/lawyer within the search radius
  Future<void> _loadDoctorMarkers() async {
    final newMarkers = <gmap.Marker>{};
    for (final doc in widget.doctors) {
      try {
        final loc = doc.geoLocation;
        if (loc == null) continue;
        final pos = gmap.LatLng(loc.latitude, loc.longitude);

        final distMeters = Geolocator.distanceBetween(
          widget.userLocation.latitude,
          widget.userLocation.longitude,
          loc.latitude,
          loc.longitude,
        );
        final distKm = distMeters / 1000;

        if (!doc.online || distKm > widget.searchRadiusKm) continue;

        final displayName = doc.displayName;
        final category = doc.category;
        final iconUrl = doc.lawyerDp;

        final icon = (iconUrl != null && iconUrl.isNotEmpty)
            ? await _getMarkerIcon(iconUrl)
            : gmap.BitmapDescriptor.defaultMarker;

        newMarkers.add(gmap.Marker(
          markerId: gmap.MarkerId(displayName ?? 'Unknown'),
          position: pos,
          icon: icon,
          infoWindow: gmap.InfoWindow(
            title: displayName,
            snippet: category,
          ),
        ));
      } catch (e) {
        debugPrint('Error processing record: \$e');
      }
    }
    setState(() => _markers.addAll(newMarkers));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 200,
      child: gmap.GoogleMap(
        initialCameraPosition: gmap.CameraPosition(
          target: gmap.LatLng(
            widget.userLocation.latitude,
            widget.userLocation.longitude,
          ),
          zoom: 14,
        ),
        markers: _markers,
        onMapCreated: (controller) {
          _mapController = controller;
        },
        myLocationEnabled: false,
        myLocationButtonEnabled: false,
      ),
    );
  }
}
