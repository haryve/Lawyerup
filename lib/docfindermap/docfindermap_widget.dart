import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'docfindermap_model.dart';
export 'docfindermap_model.dart';

class DocfindermapWidget extends StatefulWidget {
  const DocfindermapWidget({super.key});

  static String routeName = 'Docfindermap';
  static String routePath = '/docfindermap';

  @override
  State<DocfindermapWidget> createState() => _DocfindermapWidgetState();
}

class _DocfindermapWidgetState extends State<DocfindermapWidget> {
  late DocfindermapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DocfindermapModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Docfindermap'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DOCFINDERMAP_Docfindermap_ON_INIT_STATE');
      logFirebaseEvent('Docfindermap_update_app_state');
      FFAppState().Refresh = false;
      safeSetState(() {});
      logFirebaseEvent('Docfindermap_firestore_query');
      _model.doc2 = await queryLawyersRecordOnce(
        queryBuilder: (lawyersRecord) => lawyersRecord
            .where(
              'online',
              isEqualTo: true,
            )
            .where(
              'geo_location',
              isNotEqualTo: currentUserDocument?.userlocation?.toGeoPoint(),
            )
            .orderBy('geo_location'),
      );
      logFirebaseEvent('Docfindermap_wait__delay');
      await Future.delayed(const Duration(milliseconds: 600));
      logFirebaseEvent('Docfindermap_update_app_state');
      FFAppState().Refresh = true;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Visibility(
                      visible: FFAppState().Refresh,
                      child: AuthUserStreamWidget(
                        builder: (context) => Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          child: custom_widgets.AvatarMapAdvanced(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            searchRadiusKm: 5.0,
                            doctors: _model.doc2!
                                .where((e) => e.hasGeoLocation())
                                .toList(),
                            userLocation: currentUserDocument!.userlocation!,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
