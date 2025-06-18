import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'incomming_call_box_model.dart';
export 'incomming_call_box_model.dart';

class IncommingCallBoxWidget extends StatefulWidget {
  const IncommingCallBoxWidget({
    super.key,
    this.callref,
    this.parameter1,
    this.voiceall,
  });

  final DocumentReference? callref;
  final bool? parameter1;
  final bool? voiceall;

  @override
  State<IncommingCallBoxWidget> createState() => _IncommingCallBoxWidgetState();
}

class _IncommingCallBoxWidgetState extends State<IncommingCallBoxWidget>
    with TickerProviderStateMixin {
  late IncommingCallBoxModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncommingCallBoxModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
          child: Material(
            color: Colors.transparent,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF8194B7),
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
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
                            color: Color(0x4D03A9F4),
                            size: 20.0,
                          ),
                        ),
                      );
                    }

                    final columnCallsRecord = snapshot.data!;

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: StreamBuilder<UsersRecord>(
                            stream: UsersRecord.getDocument(
                                columnCallsRecord.userA!),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 20.0,
                                    height: 20.0,
                                    child: SpinKitFadingCircle(
                                      color: Color(0x4D03A9F4),
                                      size: 20.0,
                                    ),
                                  ),
                                );
                              }

                              final rowUsersRecord = snapshot.data!;

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 45.0,
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          rowUsersRecord.photoUrl,
                                        ).image,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Visibility(
                                      visible:
                                          rowUsersRecord.photoUrl == '',
                                      child: Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/Screenshot_2024-11-10_200914.png',
                                            ).image,
                                          ),
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        rowUsersRecord.displayName,
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.mukta(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                      Stack(
                                        children: [
                                          if (widget.voiceall ?? true)
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                'Incoming Voice Call',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.mukta(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/photo_2025-02-09_12-10-52-removebg-preview.png',
                                            width: 70.0,
                                            height: 70.0,
                                            fit: BoxFit.cover,
                                            alignment: Alignment(1.0, 0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 5.0)),
                              );
                            },
                          ),
                        ),
                        StreamBuilder<UsersRecord>(
                          stream:
                              UsersRecord.getDocument(columnCallsRecord.userA!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 20.0,
                                  height: 20.0,
                                  child: SpinKitFadingCircle(
                                    color: Color(0x4D03A9F4),
                                    size: 20.0,
                                  ),
                                ),
                              );
                            }

                            final rowUsersRecord = snapshot.data!;

                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'INCOMMING_CALL_BOX_DECLINE_BTN_ON_TAP');
                                        logFirebaseEvent('Button_backend_call');

                                        await widget.callref!.update({
                                          ...createCallsRecordData(
                                            callEnded: true,
                                            callDeclined: true,
                                            ringing: false,
                                            declinedBy: currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'users': FieldValue.arrayUnion(
                                                  [currentUserReference]),
                                            },
                                          ),
                                        });
                                        logFirebaseEvent('Button_backend_call');

                                        await currentUserDocument!
                                            .usercallmanagement!
                                            .update({
                                          ...createUsercallmanagementRecordData(
                                            active: false,
                                            incoming: false,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'activecallref':
                                                  FieldValue.delete(),
                                            },
                                          ),
                                        });
                                        logFirebaseEvent('Button_backend_call');

                                        await rowUsersRecord.usercallmanagement!
                                            .update({
                                          ...createUsercallmanagementRecordData(
                                            active: false,
                                            incoming: false,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'activecallref':
                                                  FieldValue.delete(),
                                            },
                                          ),
                                        });
                                      },
                                      text: 'Decline',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 52.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x90F6060C),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.mukta(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                    ),
                                  ),
                                  if (widget.parameter1 ?? true)
                                    FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'INCOMMING_CALL_BOX_ACCEPT_CALL_BTN_ON_TA');
                                        logFirebaseEvent('Button_backend_call');

                                        await widget.callref!
                                            .update(createCallsRecordData(
                                          userBJoined: true,
                                          ringing: false,
                                          userA: currentUserReference,
                                        ));
                                        logFirebaseEvent(
                                            'Button_request_permissions');
                                        await requestPermission(
                                            microphonePermission);
                                        logFirebaseEvent(
                                            'Button_request_permissions');
                                        await requestPermission(
                                            cameraPermission);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed(
                                          VideocallWidget.routeName,
                                          queryParameters: {
                                            'callref': serializeParam(
                                              widget.callref,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.scale,
                                              alignment: Alignment.bottomCenter,
                                              duration:
                                                  Duration(milliseconds: 250),
                                            ),
                                          },
                                        );

                                        logFirebaseEvent('Button_backend_call');

                                        await currentUserDocument!
                                            .usercallmanagement!
                                            .update(
                                                createUsercallmanagementRecordData(
                                          active: true,
                                          incoming: false,
                                          videoCallRequest: true,
                                        ));
                                      },
                                      text: 'Accept Call',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 56.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x631C0BEF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.mukta(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                    ),
                                  if (!widget.parameter1!)
                                    FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'INCOMMING_CALL_BOX_ANSWER_BTN_ON_TAP');
                                        logFirebaseEvent('Button_backend_call');

                                        await widget.callref!.update({
                                          ...createCallsRecordData(
                                            userBJoined: true,
                                            ringing: false,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'users': FieldValue.arrayUnion(
                                                  [currentUserReference]),
                                            },
                                          ),
                                        });
                                        logFirebaseEvent(
                                            'Button_request_permissions');
                                        await requestPermission(
                                            microphonePermission);
                                        logFirebaseEvent(
                                            'Button_request_permissions');
                                        await requestPermission(
                                            cameraPermission);
                                        logFirebaseEvent('Button_navigate_to');

                                        context.pushNamed(
                                          CallScreenWidget.routeName,
                                          queryParameters: {
                                            'callRef': serializeParam(
                                              widget.callref,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.scale,
                                              alignment: Alignment.bottomCenter,
                                              duration:
                                                  Duration(milliseconds: 250),
                                            ),
                                          },
                                        );

                                        logFirebaseEvent('Button_backend_call');

                                        await currentUserDocument!
                                            .usercallmanagement!
                                            .update(
                                                createUsercallmanagementRecordData(
                                          active: true,
                                          incoming: false,
                                        ));
                                        logFirebaseEvent('Button_backend_call');

                                        await TimerRecord.collection
                                            .doc()
                                            .set(createTimerRecordData(
                                              callstarttime:
                                                  getCurrentTimestamp,
                                              userref: rowUsersRecord.reference,
                                            ));
                                        logFirebaseEvent(
                                            'Button_update_app_state');
                                        FFAppState().incall = true;
                                        safeSetState(() {});
                                      },
                                      text: 'Answer',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 56.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x631C0BEF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              font: GoogleFonts.mukta(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                        elevation: 0.0,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                    ),
                                ].divide(SizedBox(width: 5.0)),
                              ),
                            );
                          },
                        ),
                      ]
                          .divide(SizedBox(height: 20.0))
                          .addToStart(SizedBox(height: 20.0))
                          .addToEnd(SizedBox(height: 20.0)),
                    );
                  },
                ),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        ),
      ],
    );
  }
}
