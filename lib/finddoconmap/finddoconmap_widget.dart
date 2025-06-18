import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'finddoconmap_model.dart';
export 'finddoconmap_model.dart';

class FinddoconmapWidget extends StatefulWidget {
  const FinddoconmapWidget({super.key});

  static String routeName = 'Finddoconmap';
  static String routePath = '/finddoconmap';

  @override
  State<FinddoconmapWidget> createState() => _FinddoconmapWidgetState();
}

class _FinddoconmapWidgetState extends State<FinddoconmapWidget> {
  late FinddoconmapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinddoconmapModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Finddoconmap'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      builder: (context) => StreamBuilder<List<LawyersRecord>>(
        stream: queryLawyersRecord(
          queryBuilder: (lawyersRecord) => lawyersRecord.where(
            'geo_location',
            isNotEqualTo: currentUserDocument?.userlocation?.toGeoPoint(),
            isNull: (currentUserDocument?.userlocation?.toGeoPoint()) == null,
          ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Scaffold(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              body: Center(
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: SpinKitFadingCircle(
                    color: Color(0x4D03A9F4),
                    size: 20.0,
                  ),
                ),
              ),
            );
          }
          List<LawyersRecord> finddoconmapLawyersRecordList = snapshot.data!;

          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: Scaffold(
              key: scaffoldKey,
              resizeToAvoidBottomInset: false,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 22.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 22.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'FINDDOCONMAP_arrow_back_rounded_ICN_ON_T');
                    logFirebaseEvent('IconButton_navigate_back');
                    context.pop();
                  },
                ),
                title: Text(
                  'Find a Doc on Map',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        font: GoogleFonts.openSans(
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 10.0,
              ),
              body: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: FlutterFlowGoogleMap(
                        controller: _model.googleMapsController,
                        onCameraIdle: (latLng) =>
                            _model.googleMapsCenter = latLng,
                        initialLocation: _model.googleMapsCenter ??=
                            currentUserDocument?.userlocation != null
                                ? currentUserDocument!.userlocation!
                                : functions.defaultDelhiLocation(),
                        markers: finddoconmapLawyersRecordList
                            .unique((e) => e.geoLocation!)
                            .map(
                              (marker) => FlutterFlowMarker(
                                marker.reference.path,
                                marker.geoLocation!,
                              ),
                            )
                            .toList(),
                        markerColor: GoogleMarkerColor.red,
                        markerImage: MarkerImage(
                          imagePath:
                              'assets/images/ChatGPT_Image_Apr_12,_2025,_08_53_43_PM.png',
                          isAssetImage: true,
                          size: 40.0 ?? 20,
                        ),
                        mapType: MapType.normal,
                        style: GoogleMapStyle.standard,
                        initialZoom: 14.0,
                        allowInteraction: true,
                        allowZoom: true,
                        showZoomControls: true,
                        showLocation: true,
                        showCompass: false,
                        showMapToolbar: true,
                        showTraffic: true,
                        centerMapOnMarkerTap: true,
                        mapTakesGesturePreference: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
