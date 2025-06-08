import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'videocall_model.dart';
export 'videocall_model.dart';

class VideocallWidget extends StatefulWidget {
  const VideocallWidget({
    super.key,
    required this.callref,
  });

  final DocumentReference? callref;

  static String routeName = 'videocall';
  static String routePath = '/videocall';

  @override
  State<VideocallWidget> createState() => _VideocallWidgetState();
}

class _VideocallWidgetState extends State<VideocallWidget> {
  late VideocallModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideocallModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'videocall'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: StreamBuilder<CallsRecord>(
            stream: CallsRecord.getDocument(widget.callref!),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 20.0,
                    height: 20.0,
                    child: SpinKitFadingCircle(
                      color: Color(0x9D03A9F4),
                      size: 20.0,
                    ),
                  ),
                );
              }

              final stackCallsRecord = snapshot.data!;

              return Stack(
                children: [
                  StreamBuilder<List<LawyersRecord>>(
                    stream: queryLawyersRecord(
                      queryBuilder: (lawyersRecord) => lawyersRecord.where(
                        'author',
                        isEqualTo: stackCallsRecord.userB,
                      ),
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 20.0,
                            height: 20.0,
                            child: SpinKitFadingCircle(
                              color: Color(0x9D03A9F4),
                              size: 20.0,
                            ),
                          ),
                        );
                      }
                      List<LawyersRecord> containerLawyersRecordList =
                          snapshot.data!;
                      // Return an empty Container when the item does not exist.
                      if (snapshot.data!.isEmpty) {
                        return Container();
                      }
                      final containerLawyersRecord =
                          containerLawyersRecordList.isNotEmpty
                              ? containerLawyersRecordList.first
                              : null;

                      return Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          child: custom_widgets.AgoraVideoCallWidget(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            appId: stackCallsRecord.appId,
                            token: stackCallsRecord.tokenId,
                            channelName: stackCallsRecord.channelName,
                            enableVideo: true,
                            lawrefg: containerLawyersRecord!.lawyerCharge,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
