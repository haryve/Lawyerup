import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/docrdsasasdcas_widget.dart';
import '/components/drawer/drawer_widget.dart';
import '/components/incomming_call_box/incomming_call_box_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/review/review_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'psychiatrists_model.dart';
export 'psychiatrists_model.dart';

/// please complete it structure and make it more professional
class PsychiatristsWidget extends StatefulWidget {
  const PsychiatristsWidget({
    super.key,
    String? doctortype,
    this.t2,
    this.t3,
    this.t4,
    this.t5,
    this.t6,
    this.t7,
    this.t8,
    this.t9,
    this.t10,
  }) : this.doctortype = doctortype ?? 'All';

  final String doctortype;
  final String? t2;
  final String? t3;
  final String? t4;
  final String? t5;
  final String? t6;
  final String? t7;
  final String? t8;
  final String? t9;
  final String? t10;

  static String routeName = 'psychiatrists';
  static String routePath = '/feed234';

  @override
  State<PsychiatristsWidget> createState() => _PsychiatristsWidgetState();
}

class _PsychiatristsWidgetState extends State<PsychiatristsWidget>
    with TickerProviderStateMixin {
  late PsychiatristsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PsychiatristsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'psychiatrists'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 11,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation13': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation14': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation15': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation16': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation17': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation18': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation19': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation20': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation21': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TintEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'PSYCHIATRISTS_Container_okdp27ru_ON_TAP');
                                                logFirebaseEvent(
                                                    'USERIMAGE_bottom_sheet');
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(context)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: DrawerWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                              child: wrapWithModel(
                                                model: _model.userimageModel,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: UserimageWidget(),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Good Morning',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .mukta(
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child:
                                                                    AuthUserStreamWidget(
                                                                  builder:
                                                                      (context) =>
                                                                          Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      currentUserDisplayName,
                                                                      'CaremeeZ',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.charm(
                                                                            fontWeight:
                                                                                FontWeight.w900,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              2.0,
                                                                          fontWeight:
                                                                              FontWeight.w900,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            logFirebaseEvent(
                                                                'PSYCHIATRISTS_Container_vxbgbc6y_ON_TAP');
                                                            logFirebaseEvent(
                                                                'Container_navigate_to');

                                                            context.pushNamed(
                                                              AddfundsWidget
                                                                  .routeName,
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .scale,
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomCenter,
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 2.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            3.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .account_balance_wallet_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          18.0,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          6.0,
                                                                          8.0,
                                                                          6.0),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                Text(
                                                                          '₹ ${valueOrDefault(currentUserDocument?.waller, 0).toString()}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                font: GoogleFonts.mukta(
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 2.0,
                                                          shape:
                                                              const CircleBorder(),
                                                          child: Container(
                                                            width: 45.0,
                                                            height: 45.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'PSYCHIATRISTS_PAGE_Icon_981d8d5w_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'Icon_navigate_to');

                                                                context.pushNamed(
                                                                    SearchResultsWidget
                                                                        .routeName);
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .search_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ].addToStart(
                                                      SizedBox(width: 10.0)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AuthUserStreamWidget(
                              builder: (context) =>
                                  StreamBuilder<UsercallmanagementRecord>(
                                stream: UsercallmanagementRecord.getDocument(
                                    currentUserDocument!.usercallmanagement!),
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

                                  final callUsercallmanagementRecord =
                                      snapshot.data!;

                                  return SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (callUsercallmanagementRecord
                                            .incoming)
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: 202.0,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 5.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .incommingCallBoxModel,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          IncommingCallBoxWidget(
                                                        parameter1:
                                                            callUsercallmanagementRecord
                                                                .videoCallRequest,
                                                        voiceall:
                                                            !callUsercallmanagementRecord
                                                                .videoCallRequest,
                                                        callref:
                                                            callUsercallmanagementRecord
                                                                .activecallref,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                      ]
                                          .divide(SizedBox(height: 5.0))
                                          .addToStart(SizedBox(height: 10.0)),
                                    ),
                                  );
                                },
                              ),
                            ),
                            if (!((_model.doctor == 'Psychiatrist') ||
                                (_model.doctor == 'Psychologist')))
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.9,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 4.0, 5.0, 0.0),
                                        child: Column(
                                          children: [
                                            Align(
                                              alignment: Alignment(-1.0, 0),
                                              child: FlutterFlowButtonTabBar(
                                                useToggleButtonStyle: false,
                                                isScrollable: true,
                                                labelStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleMedium
                                                    .override(
                                                      font: GoogleFonts.ptSans(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize: 11.0,
                                                      letterSpacing: 1.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                unselectedLabelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .ptSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 10.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                        ),
                                                labelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                unselectedLabelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                backgroundColor:
                                                    Color(0x27A6D7EE),
                                                unselectedBackgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                unselectedBorderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderWidth: 1.0,
                                                borderRadius: 12.0,
                                                elevation: 5.0,
                                                labelPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(20.0, 0.0,
                                                            20.0, 0.0),
                                                tabs: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    1.0),
                                                        child: Icon(
                                                          Icons.home,
                                                          size: 14.0,
                                                        ),
                                                      ),
                                                      Tab(
                                                        text:
                                                            'All ${widget.doctortype}',
                                                      ),
                                                    ],
                                                  ),
                                                  Tab(
                                                    text: 'Online Now',
                                                  ),
                                                  Tab(
                                                    text: widget.t2!,
                                                  ),
                                                  Tab(
                                                    text: widget.t3!,
                                                  ),
                                                  Tab(
                                                    text: widget.t4!,
                                                  ),
                                                  Tab(
                                                    text: widget.t5!,
                                                  ),
                                                  Tab(
                                                    text: widget.t6!,
                                                  ),
                                                  Tab(
                                                    text: widget.t7!,
                                                  ),
                                                  Tab(
                                                    text: widget.t8!,
                                                  ),
                                                  Tab(
                                                    text: widget.t9!,
                                                  ),
                                                  Tab(
                                                    text: widget.t10!,
                                                  ),
                                                ],
                                                controller:
                                                    _model.tabBarController,
                                                onTap: (i) async {
                                                  [
                                                    () async {},
                                                    () async {},
                                                    () async {
                                                      logFirebaseEvent(
                                                          'PSYCHIATRISTS_PAGE_Tab_qz59juue_ON_TAP');
                                                    },
                                                    () async {},
                                                    () async {},
                                                    () async {},
                                                    () async {},
                                                    () async {},
                                                    () async {},
                                                    () async {},
                                                    () async {}
                                                  ][i]();
                                                },
                                              ),
                                            ),
                                            Expanded(
                                              child: TabBarView(
                                                controller:
                                                    _model.tabBarController,
                                                children: [
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FutureBuilder<
                                                          List<LawyersRecord>>(
                                                        future:
                                                            _model.doclistpage(
                                                          requestFn: () =>
                                                              queryLawyersRecordOnce(
                                                            queryBuilder: (lawyersRecord) =>
                                                                lawyersRecord
                                                                    .where(
                                                                      'category',
                                                                      isEqualTo:
                                                                          widget
                                                                              .doctortype,
                                                                    )
                                                                    .orderBy(
                                                                        'created_time',
                                                                        descending:
                                                                            true),
                                                          ),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                child:
                                                                    SpinKitFadingCircle(
                                                                  color: Color(
                                                                      0x9D03A9F4),
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<LawyersRecord>
                                                              listViewLawyersRecordList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewLawyersRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewLawyersRecord =
                                                                  listViewLawyersRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onLongPress:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PSYCHIATRISTS_Container_wzm8yimq_ON_LONG');
                                                                    if (valueOrDefault(
                                                                            currentUserDocument?.role,
                                                                            '') ==
                                                                        'admin') {
                                                                      logFirebaseEvent(
                                                                          'Container_backend_call');
                                                                      await listViewLawyersRecord
                                                                          .reference
                                                                          .delete();
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Container_bottom_sheet');
                                                                      Navigator.pop(
                                                                          context);
                                                                    }
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        148.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0x33000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'PSYCHIATRISTS_PAGE_Row_9uxctcn8_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Row_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            DoctorProfiledemoWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'lawyerrefere': serializeParam(
                                                                                listViewLawyersRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Stack(
                                                                                  children: [
                                                                                    if (listViewLawyersRecord.lawyerDp == '')
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                          child: Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 10.0,
                                                                                            shape: const CircleBorder(),
                                                                                            child: Container(
                                                                                              width: 94.0,
                                                                                              height: 94.0,
                                                                                              decoration: BoxDecoration(
                                                                                                image: DecorationImage(
                                                                                                  fit: BoxFit.cover,
                                                                                                  image: Image.asset(
                                                                                                    'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                  ).image,
                                                                                                ),
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                            ),
                                                                                          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!),
                                                                                        ),
                                                                                      ),
                                                                                    if (listViewLawyersRecord.lawyerDp != '')
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 4.0,
                                                                                          shape: const CircleBorder(),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                              image: DecorationImage(
                                                                                                fit: BoxFit.fitWidth,
                                                                                                image: CachedNetworkImageProvider(
                                                                                                  listViewLawyersRecord.lawyerDp,
                                                                                                ),
                                                                                              ),
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Expanded(
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('PSYCHIATRISTS_Container_z8tekrh0_ON_TAP');
                                                                                      logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                      await showModalBottomSheet(
                                                                                        isScrollControlled: true,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        enableDrag: false,
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return GestureDetector(
                                                                                            onTap: () {
                                                                                              FocusScope.of(context).unfocus();
                                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                                            },
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: ReviewWidget(
                                                                                                lawyerr: listViewLawyersRecord.reference,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => safeSetState(() {}));
                                                                                    },
                                                                                    child: wrapWithModel(
                                                                                      model: _model.ratingbarModels1.getModel(
                                                                                        listViewLawyersRecord.author!.id,
                                                                                        listViewIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: RatingbarWidget(
                                                                                        key: Key(
                                                                                          'Keyz8t_${listViewLawyersRecord.author!.id}',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Expanded(
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('PSYCHIATRISTS_Column_7sh97qh2_ON_TAP');
                                                                                    logFirebaseEvent('Column_navigate_to');

                                                                                    context.pushNamed(
                                                                                      DoctorProfiledemoWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'lawyerrefere': serializeParam(
                                                                                          listViewLawyersRecord.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                        child: Text(
                                                                                          listViewLawyersRecord.displayName,
                                                                                          style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                font: GoogleFonts.lora(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                ),
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Text(
                                                                                          '${listViewLawyersRecord.experttype} : ${listViewLawyersRecord.category}',
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                font: GoogleFonts.mukta(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                ),
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 11.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Specialty : ${listViewLawyersRecord.type}',
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.mukta(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 11.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        listViewLawyersRecord.college.maybeHandleOverflow(
                                                                                          maxChars: 50,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.mukta(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.mukta(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                            child: Text(
                                                                                              '${listViewLawyersRecord.city}, ',
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    font: GoogleFonts.outfit(
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF3F4448),
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                            child: Text(
                                                                                              listViewLawyersRecord.state,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    font: GoogleFonts.outfit(
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF57636C),
                                                                                                    fontSize: 11.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Builder(
                                                                                        builder: (context) {
                                                                                          final languages = listViewLawyersRecord.languages.toList().take(4).toList();

                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: List.generate(languages.length, (languagesIndex) {
                                                                                              final languagesItem = languages[languagesIndex];
                                                                                              return Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    languagesItem,
                                                                                                    '.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.mukta(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              );
                                                                                            }),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(1.0, 0.0),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                      child: SingleChildScrollView(
                                                                                        primary: false,
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            wrapWithModel(
                                                                                              model: _model.callbuttonnewModels1.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: CallbuttonnewWidget(
                                                                                                key: Key(
                                                                                                  'Keyfie_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                                parameter1: listViewLawyersRecord.author,
                                                                                                parameter2: listViewLawyersRecord.author?.id,
                                                                                                parameter4: listViewLawyersRecord.usercallmanageref,
                                                                                              ),
                                                                                            ),
                                                                                            wrapWithModel(
                                                                                              model: _model.newchatbuttonModels1.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: NewchatbuttonWidget(
                                                                                                key: Key(
                                                                                                  'Keyekn_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                                lawref: listViewLawyersRecord.reference,
                                                                                              ),
                                                                                            ),
                                                                                            wrapWithModel(
                                                                                              model: _model.videocallbuttonModels1.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: VideocallbuttonWidget(
                                                                                                key: Key(
                                                                                                  'Keymsg_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                                parameter1: listViewLawyersRecord.author,
                                                                                                parameter2: listViewLawyersRecord.author?.id,
                                                                                                parameter3: listViewLawyersRecord.callref,
                                                                                                parameter5: listViewLawyersRecord.usercallmanageref,
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                        '₹ 15/min',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.mukta(
                                                                                              fontWeight: FontWeight.w800,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            fontSize: 15.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w800,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation1']!),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FutureBuilder<
                                                          List<LawyersRecord>>(
                                                        future:
                                                            queryLawyersRecordOnce(
                                                          queryBuilder: (lawyersRecord) =>
                                                              lawyersRecord
                                                                  .where(
                                                                    'category',
                                                                    isEqualTo:
                                                                        widget
                                                                            .doctortype,
                                                                  )
                                                                  .where(
                                                                    'online',
                                                                    isEqualTo:
                                                                        true,
                                                                  )
                                                                  .orderBy(
                                                                      'created_time',
                                                                      descending:
                                                                          true),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                child:
                                                                    SpinKitFadingCircle(
                                                                  color: Color(
                                                                      0x9D03A9F4),
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<LawyersRecord>
                                                              listViewLawyersRecordList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewLawyersRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewLawyersRecord =
                                                                  listViewLawyersRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onLongPress:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PSYCHIATRISTS_Container_z9zjvdfa_ON_LONG');
                                                                    if (valueOrDefault(
                                                                            currentUserDocument?.role,
                                                                            '') ==
                                                                        'admin') {
                                                                      logFirebaseEvent(
                                                                          'Container_backend_call');
                                                                      await listViewLawyersRecord
                                                                          .reference
                                                                          .delete();
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Container_bottom_sheet');
                                                                      Navigator.pop(
                                                                          context);
                                                                    }
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        148.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0x33000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'PSYCHIATRISTS_PAGE_Row_6bba9kin_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Row_navigate_to');

                                                                          context
                                                                              .pushNamed(
                                                                            DoctorProfiledemoWidget.routeName,
                                                                            queryParameters:
                                                                                {
                                                                              'lawyerrefere': serializeParam(
                                                                                listViewLawyersRecord.reference,
                                                                                ParamType.DocumentReference,
                                                                              ),
                                                                            }.withoutNulls,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Stack(
                                                                                  children: [
                                                                                    if (listViewLawyersRecord.lawyerDp == '')
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                          child: Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 10.0,
                                                                                            shape: const CircleBorder(),
                                                                                            child: Container(
                                                                                              width: 94.0,
                                                                                              height: 94.0,
                                                                                              decoration: BoxDecoration(
                                                                                                image: DecorationImage(
                                                                                                  fit: BoxFit.cover,
                                                                                                  image: Image.asset(
                                                                                                    'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                  ).image,
                                                                                                ),
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                            ),
                                                                                          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation4']!),
                                                                                        ),
                                                                                      ),
                                                                                    if (listViewLawyersRecord.lawyerDp != '')
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                        child: Material(
                                                                                          color: Colors.transparent,
                                                                                          elevation: 4.0,
                                                                                          shape: const CircleBorder(),
                                                                                          child: Container(
                                                                                            width: 100.0,
                                                                                            height: 100.0,
                                                                                            decoration: BoxDecoration(
                                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                                              image: DecorationImage(
                                                                                                fit: BoxFit.fitWidth,
                                                                                                image: CachedNetworkImageProvider(
                                                                                                  listViewLawyersRecord.lawyerDp,
                                                                                                ),
                                                                                              ),
                                                                                              shape: BoxShape.circle,
                                                                                              border: Border.all(
                                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                                width: 2.0,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Expanded(
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('PSYCHIATRISTS_Container_6rosjx7i_ON_TAP');
                                                                                      logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                      await showModalBottomSheet(
                                                                                        isScrollControlled: true,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        enableDrag: false,
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          return GestureDetector(
                                                                                            onTap: () {
                                                                                              FocusScope.of(context).unfocus();
                                                                                              FocusManager.instance.primaryFocus?.unfocus();
                                                                                            },
                                                                                            child: Padding(
                                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                                              child: ReviewWidget(
                                                                                                lawyerr: listViewLawyersRecord.reference,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => safeSetState(() {}));
                                                                                    },
                                                                                    child: wrapWithModel(
                                                                                      model: _model.ratingbarModels2.getModel(
                                                                                        listViewLawyersRecord.author!.id,
                                                                                        listViewIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: RatingbarWidget(
                                                                                        key: Key(
                                                                                          'Key6ro_${listViewLawyersRecord.author!.id}',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Expanded(
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: InkWell(
                                                                                  splashColor: Colors.transparent,
                                                                                  focusColor: Colors.transparent,
                                                                                  hoverColor: Colors.transparent,
                                                                                  highlightColor: Colors.transparent,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('PSYCHIATRISTS_Column_bveua2wu_ON_TAP');
                                                                                    logFirebaseEvent('Column_navigate_to');

                                                                                    context.pushNamed(
                                                                                      DoctorProfiledemoWidget.routeName,
                                                                                      queryParameters: {
                                                                                        'lawyerrefere': serializeParam(
                                                                                          listViewLawyersRecord.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                        child: Text(
                                                                                          listViewLawyersRecord.displayName,
                                                                                          style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                font: GoogleFonts.lora(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                ),
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Text(
                                                                                          '${listViewLawyersRecord.experttype} : ${listViewLawyersRecord.category}',
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                font: GoogleFonts.mukta(
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                ),
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 11.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Specialty : ${listViewLawyersRecord.type}',
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.mukta(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              fontSize: 11.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        listViewLawyersRecord.college.maybeHandleOverflow(
                                                                                          maxChars: 50,
                                                                                          replacement: '…',
                                                                                        ),
                                                                                        maxLines: 2,
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.mukta(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                        style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                              font: GoogleFonts.mukta(
                                                                                                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontSize: 10.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                            child: Text(
                                                                                              '${listViewLawyersRecord.city}, ',
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    font: GoogleFonts.outfit(
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF3F4448),
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                                                                                            child: Text(
                                                                                              listViewLawyersRecord.state,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    font: GoogleFonts.outfit(
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF57636C),
                                                                                                    fontSize: 11.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Builder(
                                                                                        builder: (context) {
                                                                                          final languages = listViewLawyersRecord.languages.toList().take(4).toList();

                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: List.generate(languages.length, (languagesIndex) {
                                                                                              final languagesItem = languages[languagesIndex];
                                                                                              return Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                                                                                                child: Text(
                                                                                                  valueOrDefault<String>(
                                                                                                    languagesItem,
                                                                                                    '.',
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        font: GoogleFonts.mukta(
                                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                        ),
                                                                                                        fontSize: 10.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              );
                                                                                            }),
                                                                                          );
                                                                                        },
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(1.0, 0.0),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                      child: SingleChildScrollView(
                                                                                        primary: false,
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            wrapWithModel(
                                                                                              model: _model.callbuttonnewModels2.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: CallbuttonnewWidget(
                                                                                                key: Key(
                                                                                                  'Keyixf_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                                parameter1: listViewLawyersRecord.author,
                                                                                                parameter2: listViewLawyersRecord.author?.id,
                                                                                                parameter4: listViewLawyersRecord.usercallmanageref,
                                                                                              ),
                                                                                            ),
                                                                                            wrapWithModel(
                                                                                              model: _model.newchatbuttonModels2.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: NewchatbuttonWidget(
                                                                                                key: Key(
                                                                                                  'Keyfzf_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                                lawref: listViewLawyersRecord.reference,
                                                                                              ),
                                                                                            ),
                                                                                            wrapWithModel(
                                                                                              model: _model.videocallbuttonModels2.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: VideocallbuttonWidget(
                                                                                                key: Key(
                                                                                                  'Key2w6_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                                parameter1: listViewLawyersRecord.author,
                                                                                                parameter2: listViewLawyersRecord.author?.id,
                                                                                                parameter3: listViewLawyersRecord.callref,
                                                                                                parameter5: listViewLawyersRecord.usercallmanageref,
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                        '₹ 15/min',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                            font: GoogleFonts.mukta(
                                                                                              fontWeight: FontWeight.w800,
                                                                                              fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                            ),
                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                            fontSize: 15.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w800,
                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation3']!),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FutureBuilder<
                                                          List<LawyersRecord>>(
                                                        future:
                                                            queryLawyersRecordOnce(
                                                          queryBuilder: (lawyersRecord) =>
                                                              lawyersRecord
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo:
                                                                        widget
                                                                            .t2,
                                                                  )
                                                                  .orderBy(
                                                                      'created_time',
                                                                      descending:
                                                                          true),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                child:
                                                                    SpinKitFadingCircle(
                                                                  color: Color(
                                                                      0x9D03A9F4),
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<LawyersRecord>
                                                              listViewLawyersRecordList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewLawyersRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewLawyersRecord =
                                                                  listViewLawyersRecordList[
                                                                      listViewIndex];
                                                              return wrapWithModel(
                                                                model: _model
                                                                    .docrdsasasdcasModels
                                                                    .getModel(
                                                                  listViewLawyersRecord
                                                                      .author!
                                                                      .id,
                                                                  listViewIndex,
                                                                ),
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    DocrdsasasdcasWidget(
                                                                  key: Key(
                                                                    'Keynf1_${listViewLawyersRecord.author!.id}',
                                                                  ),
                                                                  lawred:
                                                                      listViewLawyersRecord,
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  LawyersRecord>>(
                                                            future:
                                                                queryLawyersRecordOnce(
                                                              queryBuilder: (lawyersRecord) =>
                                                                  lawyersRecord
                                                                      .where(
                                                                        'type',
                                                                        isEqualTo:
                                                                            widget.t3,
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0x9D03A9F4),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<LawyersRecord>
                                                                  listViewLawyersRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewLawyersRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewLawyersRecord =
                                                                      listViewLawyersRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PSYCHIATRISTS_Container_ouqtjycf_ON_LONG');
                                                                        if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'admin') {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          await listViewLawyersRecord
                                                                              .reference
                                                                              .delete();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_bottom_sheet');
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            148.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final rowUsersRecord = snapshot.data!;

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_6yqq88hk_ON_TAP');
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed(
                                                                                    DoctorProfiledemoWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'lawyerrefere': serializeParam(
                                                                                        listViewLawyersRecord.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (listViewLawyersRecord.lawyerDp == '')
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                                  child: Material(
                                                                                                    color: Colors.transparent,
                                                                                                    elevation: 10.0,
                                                                                                    shape: const CircleBorder(),
                                                                                                    child: Container(
                                                                                                      width: 94.0,
                                                                                                      height: 94.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        image: DecorationImage(
                                                                                                          fit: BoxFit.cover,
                                                                                                          image: Image.asset(
                                                                                                            'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                          ).image,
                                                                                                        ),
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation6']!),
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewLawyersRecord.lawyerDp != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                                child: Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4.0,
                                                                                                  shape: const CircleBorder(),
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.fitWidth,
                                                                                                        image: CachedNetworkImageProvider(
                                                                                                          listViewLawyersRecord.lawyerDp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      shape: BoxShape.circle,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        width: 2.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('PSYCHIATRISTS_Container_5fblyg7h_ON_TAP');
                                                                                              logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ReviewWidget(
                                                                                                        lawyerr: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: wrapWithModel(
                                                                                              model: _model.ratingbarModels3.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: RatingbarWidget(
                                                                                                key: Key(
                                                                                                  'Key5fb_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        font: GoogleFonts.lora(
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.state,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        font: GoogleFonts.outfit(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewLawyersRecord.category,
                                                                                                      'Doctor',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                              child: SingleChildScrollView(
                                                                                                primary: false,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    wrapWithModel(
                                                                                                      model: _model.callbuttonnewModels3.getModel(
                                                                                                        listViewLawyersRecord.author!.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: CallbuttonnewWidget(
                                                                                                        key: Key(
                                                                                                          'Keyga3_${listViewLawyersRecord.author!.id}',
                                                                                                        ),
                                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.newchatbuttonModels3.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: NewchatbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keys6g_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.videocallbuttonModels3.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: VideocallbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyoqi_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        parameter1: rowUsersRecord.reference,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter3: rowUsersRecord.calls,
                                                                                                        parameter5: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                                '₹ 15/min',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    font: GoogleFonts.mukta(
                                                                                                      fontWeight: FontWeight.w800,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation5']!),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FutureBuilder<
                                                          List<LawyersRecord>>(
                                                        future:
                                                            queryLawyersRecordOnce(
                                                          queryBuilder: (lawyersRecord) =>
                                                              lawyersRecord
                                                                  .where(
                                                                    'type',
                                                                    isEqualTo:
                                                                        widget
                                                                            .t4,
                                                                  )
                                                                  .orderBy(
                                                                      'created_time',
                                                                      descending:
                                                                          true),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                child:
                                                                    SpinKitFadingCircle(
                                                                  color: Color(
                                                                      0x9D03A9F4),
                                                                  size: 20.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          List<LawyersRecord>
                                                              listViewLawyersRecordList =
                                                              snapshot.data!;

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            primary: false,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewLawyersRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewLawyersRecord =
                                                                  listViewLawyersRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onLongPress:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'PSYCHIATRISTS_Container_vria3i1m_ON_LONG');
                                                                    if (valueOrDefault(
                                                                            currentUserDocument?.role,
                                                                            '') ==
                                                                        'admin') {
                                                                      logFirebaseEvent(
                                                                          'Container_backend_call');
                                                                      await listViewLawyersRecord
                                                                          .reference
                                                                          .delete();
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Container_bottom_sheet');
                                                                      Navigator.pop(
                                                                          context);
                                                                    }
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        148.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              4.0,
                                                                          color:
                                                                              Color(0x33000000),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            2.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                                      child: StreamBuilder<
                                                                          UsersRecord>(
                                                                        stream:
                                                                            UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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

                                                                          final rowUsersRecord =
                                                                              snapshot.data!;

                                                                          return InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_40fyxff1_ON_TAP');
                                                                              logFirebaseEvent('Row_navigate_to');

                                                                              context.pushNamed(
                                                                                DoctorProfiledemoWidget.routeName,
                                                                                queryParameters: {
                                                                                  'lawyerrefere': serializeParam(
                                                                                    listViewLawyersRecord.reference,
                                                                                    ParamType.DocumentReference,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                              );
                                                                            },
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Stack(
                                                                                      children: [
                                                                                        if (listViewLawyersRecord.lawyerDp == '')
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                              child: Material(
                                                                                                color: Colors.transparent,
                                                                                                elevation: 10.0,
                                                                                                shape: const CircleBorder(),
                                                                                                child: Container(
                                                                                                  width: 94.0,
                                                                                                  height: 94.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    image: DecorationImage(
                                                                                                      fit: BoxFit.cover,
                                                                                                      image: Image.asset(
                                                                                                        'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                      ).image,
                                                                                                    ),
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                ),
                                                                                              ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation8']!),
                                                                                            ),
                                                                                          ),
                                                                                        if (listViewLawyersRecord.lawyerDp != '')
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                            child: Material(
                                                                                              color: Colors.transparent,
                                                                                              elevation: 4.0,
                                                                                              shape: const CircleBorder(),
                                                                                              child: Container(
                                                                                                width: 100.0,
                                                                                                height: 100.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                                  image: DecorationImage(
                                                                                                    fit: BoxFit.fitWidth,
                                                                                                    image: CachedNetworkImageProvider(
                                                                                                      listViewLawyersRecord.lawyerDp,
                                                                                                    ),
                                                                                                  ),
                                                                                                  shape: BoxShape.circle,
                                                                                                  border: Border.all(
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    width: 2.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        focusColor: Colors.transparent,
                                                                                        hoverColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () async {
                                                                                          logFirebaseEvent('PSYCHIATRISTS_Container_7xzffrbk_ON_TAP');
                                                                                          logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return GestureDetector(
                                                                                                onTap: () {
                                                                                                  FocusScope.of(context).unfocus();
                                                                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                                                                },
                                                                                                child: Padding(
                                                                                                  padding: MediaQuery.viewInsetsOf(context),
                                                                                                  child: ReviewWidget(
                                                                                                    lawyerr: listViewLawyersRecord.reference,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => safeSetState(() {}));
                                                                                        },
                                                                                        child: wrapWithModel(
                                                                                          model: _model.ratingbarModels4.getModel(
                                                                                            listViewLawyersRecord.author!.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: RatingbarWidget(
                                                                                            key: Key(
                                                                                              'Key7xz_${listViewLawyersRecord.author!.id}',
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Expanded(
                                                                                  child: Align(
                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              listViewLawyersRecord.displayName,
                                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                    font: GoogleFonts.lora(
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontSize: 16.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                            child: Text(
                                                                                              listViewLawyersRecord.state,
                                                                                              style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                    font: GoogleFonts.outfit(
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                    ),
                                                                                                    color: Color(0xFF57636C),
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  listViewLawyersRecord.category,
                                                                                                  'Doctor',
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      font: GoogleFonts.mukta(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                      font: GoogleFonts.mukta(
                                                                                                        fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                      ),
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                          child: SingleChildScrollView(
                                                                                            primary: false,
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                wrapWithModel(
                                                                                                  model: _model.callbuttonnewModels4.getModel(
                                                                                                    listViewLawyersRecord.author!.id,
                                                                                                    listViewIndex,
                                                                                                  ),
                                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                                  child: CallbuttonnewWidget(
                                                                                                    key: Key(
                                                                                                      'Keycrl_${listViewLawyersRecord.author!.id}',
                                                                                                    ),
                                                                                                    parameter1: listViewLawyersRecord.author,
                                                                                                    parameter2: rowUsersRecord.reference.id,
                                                                                                    parameter4: rowUsersRecord.usercallmanagement,
                                                                                                  ),
                                                                                                ),
                                                                                                wrapWithModel(
                                                                                                  model: _model.newchatbuttonModels4.getModel(
                                                                                                    rowUsersRecord.reference.id,
                                                                                                    listViewIndex,
                                                                                                  ),
                                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                                  child: NewchatbuttonWidget(
                                                                                                    key: Key(
                                                                                                      'Keyo83_${rowUsersRecord.reference.id}',
                                                                                                    ),
                                                                                                    lawref: listViewLawyersRecord.reference,
                                                                                                  ),
                                                                                                ),
                                                                                                wrapWithModel(
                                                                                                  model: _model.videocallbuttonModels4.getModel(
                                                                                                    rowUsersRecord.reference.id,
                                                                                                    listViewIndex,
                                                                                                  ),
                                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                                  child: VideocallbuttonWidget(
                                                                                                    key: Key(
                                                                                                      'Keylwz_${rowUsersRecord.reference.id}',
                                                                                                    ),
                                                                                                    parameter1: rowUsersRecord.reference,
                                                                                                    parameter2: rowUsersRecord.reference.id,
                                                                                                    parameter3: rowUsersRecord.calls,
                                                                                                    parameter5: rowUsersRecord.usercallmanagement,
                                                                                                  ),
                                                                                                ),
                                                                                              ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                            '₹ 15/min',
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                font: GoogleFonts.mukta(
                                                                                                  fontWeight: FontWeight.w800,
                                                                                                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                ),
                                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                                fontSize: 15.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w800,
                                                                                                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation7']!),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  LawyersRecord>>(
                                                            future:
                                                                queryLawyersRecordOnce(
                                                              queryBuilder: (lawyersRecord) =>
                                                                  lawyersRecord
                                                                      .where(
                                                                        'type',
                                                                        isEqualTo:
                                                                            widget.t5,
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0x9D03A9F4),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<LawyersRecord>
                                                                  listViewLawyersRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewLawyersRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewLawyersRecord =
                                                                      listViewLawyersRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PSYCHIATRISTS_Container_7xmcnyxu_ON_LONG');
                                                                        if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'admin') {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          await listViewLawyersRecord
                                                                              .reference
                                                                              .delete();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_bottom_sheet');
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            148.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final rowUsersRecord = snapshot.data!;

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_c179h7qf_ON_TAP');
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed(
                                                                                    DoctorProfiledemoWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'lawyerrefere': serializeParam(
                                                                                        listViewLawyersRecord.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (listViewLawyersRecord.lawyerDp == '')
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                                  child: Material(
                                                                                                    color: Colors.transparent,
                                                                                                    elevation: 10.0,
                                                                                                    shape: const CircleBorder(),
                                                                                                    child: Container(
                                                                                                      width: 94.0,
                                                                                                      height: 94.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        image: DecorationImage(
                                                                                                          fit: BoxFit.cover,
                                                                                                          image: Image.asset(
                                                                                                            'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                          ).image,
                                                                                                        ),
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation10']!),
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewLawyersRecord.lawyerDp != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                                child: Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4.0,
                                                                                                  shape: const CircleBorder(),
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.fitWidth,
                                                                                                        image: CachedNetworkImageProvider(
                                                                                                          listViewLawyersRecord.lawyerDp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      shape: BoxShape.circle,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        width: 2.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('PSYCHIATRISTS_Container_0pkr9em5_ON_TAP');
                                                                                              logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ReviewWidget(
                                                                                                        lawyerr: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: wrapWithModel(
                                                                                              model: _model.ratingbarModels5.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: RatingbarWidget(
                                                                                                key: Key(
                                                                                                  'Key0pk_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        font: GoogleFonts.lora(
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.state,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        font: GoogleFonts.outfit(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewLawyersRecord.category,
                                                                                                      'Doctor',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                              child: SingleChildScrollView(
                                                                                                primary: false,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    wrapWithModel(
                                                                                                      model: _model.callbuttonnewModels5.getModel(
                                                                                                        listViewLawyersRecord.author!.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: CallbuttonnewWidget(
                                                                                                        key: Key(
                                                                                                          'Key1co_${listViewLawyersRecord.author!.id}',
                                                                                                        ),
                                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.newchatbuttonModels5.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: NewchatbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyydg_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.videocallbuttonModels5.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: VideocallbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyxsa_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        parameter1: rowUsersRecord.reference,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter3: rowUsersRecord.calls,
                                                                                                        parameter5: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                                '₹ 15/min',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    font: GoogleFonts.mukta(
                                                                                                      fontWeight: FontWeight.w800,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation9']!),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  LawyersRecord>>(
                                                            future:
                                                                queryLawyersRecordOnce(
                                                              queryBuilder: (lawyersRecord) =>
                                                                  lawyersRecord
                                                                      .where(
                                                                        'type',
                                                                        isEqualTo:
                                                                            widget.t6,
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0x9D03A9F4),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<LawyersRecord>
                                                                  listViewLawyersRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewLawyersRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewLawyersRecord =
                                                                      listViewLawyersRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PSYCHIATRISTS_Container_jxc2mgnt_ON_LONG');
                                                                        if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'admin') {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          await listViewLawyersRecord
                                                                              .reference
                                                                              .delete();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_bottom_sheet');
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            148.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final rowUsersRecord = snapshot.data!;

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_p18rynyt_ON_TAP');
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed(
                                                                                    DoctorProfiledemoWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'lawyerrefere': serializeParam(
                                                                                        listViewLawyersRecord.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (listViewLawyersRecord.lawyerDp == '')
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                                  child: Material(
                                                                                                    color: Colors.transparent,
                                                                                                    elevation: 10.0,
                                                                                                    shape: const CircleBorder(),
                                                                                                    child: Container(
                                                                                                      width: 94.0,
                                                                                                      height: 94.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        image: DecorationImage(
                                                                                                          fit: BoxFit.cover,
                                                                                                          image: Image.asset(
                                                                                                            'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                          ).image,
                                                                                                        ),
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation12']!),
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewLawyersRecord.lawyerDp != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                                child: Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4.0,
                                                                                                  shape: const CircleBorder(),
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.fitWidth,
                                                                                                        image: CachedNetworkImageProvider(
                                                                                                          listViewLawyersRecord.lawyerDp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      shape: BoxShape.circle,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        width: 2.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('PSYCHIATRISTS_Container_4ovxn04v_ON_TAP');
                                                                                              logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ReviewWidget(
                                                                                                        lawyerr: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: wrapWithModel(
                                                                                              model: _model.ratingbarModels6.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: RatingbarWidget(
                                                                                                key: Key(
                                                                                                  'Key4ov_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        font: GoogleFonts.lora(
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.state,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        font: GoogleFonts.outfit(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewLawyersRecord.category,
                                                                                                      'Doctor',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                              child: SingleChildScrollView(
                                                                                                primary: false,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    wrapWithModel(
                                                                                                      model: _model.callbuttonnewModels6.getModel(
                                                                                                        listViewLawyersRecord.author!.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: CallbuttonnewWidget(
                                                                                                        key: Key(
                                                                                                          'Keynmn_${listViewLawyersRecord.author!.id}',
                                                                                                        ),
                                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.newchatbuttonModels6.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: NewchatbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Key6fz_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.videocallbuttonModels6.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: VideocallbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Key0fb_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        parameter1: rowUsersRecord.reference,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter3: rowUsersRecord.calls,
                                                                                                        parameter5: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                                '₹ 15/min',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    font: GoogleFonts.mukta(
                                                                                                      fontWeight: FontWeight.w800,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation11']!),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  LawyersRecord>>(
                                                            future:
                                                                queryLawyersRecordOnce(
                                                              queryBuilder: (lawyersRecord) =>
                                                                  lawyersRecord
                                                                      .where(
                                                                        'type',
                                                                        isEqualTo:
                                                                            widget.t7,
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0x9D03A9F4),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<LawyersRecord>
                                                                  listViewLawyersRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewLawyersRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewLawyersRecord =
                                                                      listViewLawyersRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PSYCHIATRISTS_Container_yhsknx30_ON_LONG');
                                                                        if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'admin') {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          await listViewLawyersRecord
                                                                              .reference
                                                                              .delete();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_bottom_sheet');
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            148.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final rowUsersRecord = snapshot.data!;

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_r1co9x34_ON_TAP');
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed(
                                                                                    DoctorProfiledemoWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'lawyerrefere': serializeParam(
                                                                                        listViewLawyersRecord.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (listViewLawyersRecord.lawyerDp == '')
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                                  child: Material(
                                                                                                    color: Colors.transparent,
                                                                                                    elevation: 10.0,
                                                                                                    shape: const CircleBorder(),
                                                                                                    child: Container(
                                                                                                      width: 94.0,
                                                                                                      height: 94.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        image: DecorationImage(
                                                                                                          fit: BoxFit.cover,
                                                                                                          image: Image.asset(
                                                                                                            'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                          ).image,
                                                                                                        ),
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation14']!),
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewLawyersRecord.lawyerDp != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                                child: Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4.0,
                                                                                                  shape: const CircleBorder(),
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.fitWidth,
                                                                                                        image: CachedNetworkImageProvider(
                                                                                                          listViewLawyersRecord.lawyerDp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      shape: BoxShape.circle,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        width: 2.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('PSYCHIATRISTS_Container_9pnlqcrv_ON_TAP');
                                                                                              logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ReviewWidget(
                                                                                                        lawyerr: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: wrapWithModel(
                                                                                              model: _model.ratingbarModels7.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: RatingbarWidget(
                                                                                                key: Key(
                                                                                                  'Key9pn_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        font: GoogleFonts.lora(
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.state,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        font: GoogleFonts.outfit(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewLawyersRecord.category,
                                                                                                      'Doctor',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                              child: SingleChildScrollView(
                                                                                                primary: false,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    wrapWithModel(
                                                                                                      model: _model.callbuttonnewModels7.getModel(
                                                                                                        listViewLawyersRecord.author!.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: CallbuttonnewWidget(
                                                                                                        key: Key(
                                                                                                          'Key00y_${listViewLawyersRecord.author!.id}',
                                                                                                        ),
                                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.newchatbuttonModels7.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: NewchatbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Key89r_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.videocallbuttonModels7.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: VideocallbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyva4_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        parameter1: rowUsersRecord.reference,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter3: rowUsersRecord.calls,
                                                                                                        parameter5: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                                '₹ 15/min',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    font: GoogleFonts.mukta(
                                                                                                      fontWeight: FontWeight.w800,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation13']!),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  LawyersRecord>>(
                                                            future:
                                                                queryLawyersRecordOnce(
                                                              queryBuilder: (lawyersRecord) =>
                                                                  lawyersRecord
                                                                      .where(
                                                                        'type',
                                                                        isEqualTo:
                                                                            widget.t8,
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0x9D03A9F4),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<LawyersRecord>
                                                                  listViewLawyersRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewLawyersRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewLawyersRecord =
                                                                      listViewLawyersRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PSYCHIATRISTS_Container_5gabxd7b_ON_LONG');
                                                                        if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'admin') {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          await listViewLawyersRecord
                                                                              .reference
                                                                              .delete();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_bottom_sheet');
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            148.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final rowUsersRecord = snapshot.data!;

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_0v7x92ck_ON_TAP');
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed(
                                                                                    DoctorProfiledemoWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'lawyerrefere': serializeParam(
                                                                                        listViewLawyersRecord.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (listViewLawyersRecord.lawyerDp == '')
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                                  child: Material(
                                                                                                    color: Colors.transparent,
                                                                                                    elevation: 10.0,
                                                                                                    shape: const CircleBorder(),
                                                                                                    child: Container(
                                                                                                      width: 94.0,
                                                                                                      height: 94.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        image: DecorationImage(
                                                                                                          fit: BoxFit.cover,
                                                                                                          image: Image.asset(
                                                                                                            'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                          ).image,
                                                                                                        ),
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation16']!),
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewLawyersRecord.lawyerDp != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                                child: Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4.0,
                                                                                                  shape: const CircleBorder(),
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.fitWidth,
                                                                                                        image: CachedNetworkImageProvider(
                                                                                                          listViewLawyersRecord.lawyerDp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      shape: BoxShape.circle,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        width: 2.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('PSYCHIATRISTS_Container_1ta0arhf_ON_TAP');
                                                                                              logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ReviewWidget(
                                                                                                        lawyerr: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: wrapWithModel(
                                                                                              model: _model.ratingbarModels8.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: RatingbarWidget(
                                                                                                key: Key(
                                                                                                  'Key1ta_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        font: GoogleFonts.lora(
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.state,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        font: GoogleFonts.outfit(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewLawyersRecord.category,
                                                                                                      'Doctor',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                              child: SingleChildScrollView(
                                                                                                primary: false,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    wrapWithModel(
                                                                                                      model: _model.callbuttonnewModels8.getModel(
                                                                                                        listViewLawyersRecord.author!.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: CallbuttonnewWidget(
                                                                                                        key: Key(
                                                                                                          'Keyx9u_${listViewLawyersRecord.author!.id}',
                                                                                                        ),
                                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.newchatbuttonModels8.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: NewchatbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyh7k_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.videocallbuttonModels8.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: VideocallbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyxiy_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        parameter1: rowUsersRecord.reference,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter3: rowUsersRecord.calls,
                                                                                                        parameter5: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                                '₹ 15/min',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    font: GoogleFonts.mukta(
                                                                                                      fontWeight: FontWeight.w800,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation15']!),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  LawyersRecord>>(
                                                            future:
                                                                queryLawyersRecordOnce(
                                                              queryBuilder: (lawyersRecord) =>
                                                                  lawyersRecord
                                                                      .where(
                                                                        'type',
                                                                        isEqualTo:
                                                                            widget.t9,
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0x9D03A9F4),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<LawyersRecord>
                                                                  listViewLawyersRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewLawyersRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewLawyersRecord =
                                                                      listViewLawyersRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PSYCHIATRISTS_Container_tjzfvebk_ON_LONG');
                                                                        if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'admin') {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          await listViewLawyersRecord
                                                                              .reference
                                                                              .delete();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_bottom_sheet');
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            148.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final rowUsersRecord = snapshot.data!;

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_s098yylu_ON_TAP');
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed(
                                                                                    DoctorProfiledemoWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'lawyerrefere': serializeParam(
                                                                                        listViewLawyersRecord.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (listViewLawyersRecord.lawyerDp == '')
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                                  child: Material(
                                                                                                    color: Colors.transparent,
                                                                                                    elevation: 10.0,
                                                                                                    shape: const CircleBorder(),
                                                                                                    child: Container(
                                                                                                      width: 94.0,
                                                                                                      height: 94.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        image: DecorationImage(
                                                                                                          fit: BoxFit.cover,
                                                                                                          image: Image.asset(
                                                                                                            'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                          ).image,
                                                                                                        ),
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation18']!),
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewLawyersRecord.lawyerDp != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                                child: Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4.0,
                                                                                                  shape: const CircleBorder(),
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.fitWidth,
                                                                                                        image: CachedNetworkImageProvider(
                                                                                                          listViewLawyersRecord.lawyerDp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      shape: BoxShape.circle,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        width: 2.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('PSYCHIATRISTS_Container_9966ze2l_ON_TAP');
                                                                                              logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ReviewWidget(
                                                                                                        lawyerr: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: wrapWithModel(
                                                                                              model: _model.ratingbarModels9.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: RatingbarWidget(
                                                                                                key: Key(
                                                                                                  'Key996_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        font: GoogleFonts.lora(
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.state,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        font: GoogleFonts.outfit(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewLawyersRecord.category,
                                                                                                      'Doctor',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                              child: SingleChildScrollView(
                                                                                                primary: false,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    wrapWithModel(
                                                                                                      model: _model.callbuttonnewModels9.getModel(
                                                                                                        listViewLawyersRecord.author!.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: CallbuttonnewWidget(
                                                                                                        key: Key(
                                                                                                          'Keyemd_${listViewLawyersRecord.author!.id}',
                                                                                                        ),
                                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.newchatbuttonModels9.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: NewchatbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Key5vd_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.videocallbuttonModels9.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: VideocallbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Key0n4_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        parameter1: rowUsersRecord.reference,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter3: rowUsersRecord.calls,
                                                                                                        parameter5: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                                '₹ 15/min',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    font: GoogleFonts.mukta(
                                                                                                      fontWeight: FontWeight.w800,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation17']!),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KeepAliveWidgetWrapper(
                                                    builder: (context) =>
                                                        Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  LawyersRecord>>(
                                                            future:
                                                                queryLawyersRecordOnce(
                                                              queryBuilder: (lawyersRecord) =>
                                                                  lawyersRecord
                                                                      .where(
                                                                        'type',
                                                                        isEqualTo:
                                                                            widget.t10,
                                                                      )
                                                                      .orderBy(
                                                                          'created_time',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: Color(
                                                                          0x9D03A9F4),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<LawyersRecord>
                                                                  listViewLawyersRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewLawyersRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewLawyersRecord =
                                                                      listViewLawyersRecordList[
                                                                          listViewIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            8.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onLongPress:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'PSYCHIATRISTS_Container_toqxm367_ON_LONG');
                                                                        if (valueOrDefault(currentUserDocument?.role,
                                                                                '') ==
                                                                            'admin') {
                                                                          logFirebaseEvent(
                                                                              'Container_backend_call');
                                                                          await listViewLawyersRecord
                                                                              .reference
                                                                              .delete();
                                                                        } else {
                                                                          logFirebaseEvent(
                                                                              'Container_bottom_sheet');
                                                                          Navigator.pop(
                                                                              context);
                                                                        }
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            148.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4.0,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(
                                                                                0.0,
                                                                                2.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              5.0),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewLawyersRecord.author!),
                                                                            builder:
                                                                                (context, snapshot) {
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

                                                                              final rowUsersRecord = snapshot.data!;

                                                                              return InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('PSYCHIATRISTS_PAGE_Row_wooeueyv_ON_TAP');
                                                                                  logFirebaseEvent('Row_navigate_to');

                                                                                  context.pushNamed(
                                                                                    DoctorProfiledemoWidget.routeName,
                                                                                    queryParameters: {
                                                                                      'lawyerrefere': serializeParam(
                                                                                        listViewLawyersRecord.reference,
                                                                                        ParamType.DocumentReference,
                                                                                      ),
                                                                                    }.withoutNulls,
                                                                                  );
                                                                                },
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      children: [
                                                                                        Stack(
                                                                                          children: [
                                                                                            if (listViewLawyersRecord.lawyerDp == '')
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 4.0),
                                                                                                  child: Material(
                                                                                                    color: Colors.transparent,
                                                                                                    elevation: 10.0,
                                                                                                    shape: const CircleBorder(),
                                                                                                    child: Container(
                                                                                                      width: 94.0,
                                                                                                      height: 94.0,
                                                                                                      decoration: BoxDecoration(
                                                                                                        image: DecorationImage(
                                                                                                          fit: BoxFit.cover,
                                                                                                          image: Image.asset(
                                                                                                            'assets/images/Screenshot_2024-11-10_200914.png',
                                                                                                          ).image,
                                                                                                        ),
                                                                                                        shape: BoxShape.circle,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation20']!),
                                                                                                ),
                                                                                              ),
                                                                                            if (listViewLawyersRecord.lawyerDp != '')
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 5.0),
                                                                                                child: Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4.0,
                                                                                                  shape: const CircleBorder(),
                                                                                                  child: Container(
                                                                                                    width: 100.0,
                                                                                                    height: 100.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).tertiary,
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.fitWidth,
                                                                                                        image: CachedNetworkImageProvider(
                                                                                                          listViewLawyersRecord.lawyerDp,
                                                                                                        ),
                                                                                                      ),
                                                                                                      shape: BoxShape.circle,
                                                                                                      border: Border.all(
                                                                                                        color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        width: 2.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: InkWell(
                                                                                            splashColor: Colors.transparent,
                                                                                            focusColor: Colors.transparent,
                                                                                            hoverColor: Colors.transparent,
                                                                                            highlightColor: Colors.transparent,
                                                                                            onTap: () async {
                                                                                              logFirebaseEvent('PSYCHIATRISTS_Container_nzkdz3wt_ON_TAP');
                                                                                              logFirebaseEvent('ratingbar_bottom_sheet');
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return GestureDetector(
                                                                                                    onTap: () {
                                                                                                      FocusScope.of(context).unfocus();
                                                                                                      FocusManager.instance.primaryFocus?.unfocus();
                                                                                                    },
                                                                                                    child: Padding(
                                                                                                      padding: MediaQuery.viewInsetsOf(context),
                                                                                                      child: ReviewWidget(
                                                                                                        lawyerr: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => safeSetState(() {}));
                                                                                            },
                                                                                            child: wrapWithModel(
                                                                                              model: _model.ratingbarModels10.getModel(
                                                                                                listViewLawyersRecord.author!.id,
                                                                                                listViewIndex,
                                                                                              ),
                                                                                              updateCallback: () => safeSetState(() {}),
                                                                                              child: RatingbarWidget(
                                                                                                key: Key(
                                                                                                  'Keynzk_${listViewLawyersRecord.author!.id}',
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Expanded(
                                                                                      child: Align(
                                                                                        alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.displayName,
                                                                                                  style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                                        font: GoogleFonts.lora(
                                                                                                          fontWeight: FontWeight.w600,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                        ),
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                                child: Text(
                                                                                                  listViewLawyersRecord.state,
                                                                                                  style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                                        font: GoogleFonts.outfit(
                                                                                                          fontWeight: FontWeight.normal,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                        ),
                                                                                                        color: Color(0xFF57636C),
                                                                                                        fontSize: 14.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontStyle: FlutterFlowTheme.of(context).bodySmall.fontStyle,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    valueOrDefault<String>(
                                                                                                      listViewLawyersRecord.category,
                                                                                                      'Doctor',
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'Exp: ${listViewLawyersRecord.practicetime.toString()} Years',
                                                                                                    style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                          font: GoogleFonts.mukta(
                                                                                                            fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                            fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                          ),
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          letterSpacing: 0.0,
                                                                                                          fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                                                                                                          fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                        ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(1.0, 0.0),
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 5.0),
                                                                                              child: SingleChildScrollView(
                                                                                                primary: false,
                                                                                                child: Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    wrapWithModel(
                                                                                                      model: _model.callbuttonnewModels10.getModel(
                                                                                                        listViewLawyersRecord.author!.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: CallbuttonnewWidget(
                                                                                                        key: Key(
                                                                                                          'Keyj0w_${listViewLawyersRecord.author!.id}',
                                                                                                        ),
                                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.newchatbuttonModels10.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: NewchatbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyr5l_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                    wrapWithModel(
                                                                                                      model: _model.videocallbuttonModels10.getModel(
                                                                                                        rowUsersRecord.reference.id,
                                                                                                        listViewIndex,
                                                                                                      ),
                                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                                      child: VideocallbuttonWidget(
                                                                                                        key: Key(
                                                                                                          'Keyitr_${rowUsersRecord.reference.id}',
                                                                                                        ),
                                                                                                        parameter1: rowUsersRecord.reference,
                                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                                        parameter3: rowUsersRecord.calls,
                                                                                                        parameter5: rowUsersRecord.usercallmanagement,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(height: 14.0)).addToStart(SizedBox(height: 10.0)),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Align(
                                                                                          alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                '₹ ${listViewLawyersRecord.lawyerCharge.toString()}/min',
                                                                                                '₹ 15/min',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                                    font: GoogleFonts.mukta(
                                                                                                      fontWeight: FontWeight.w800,
                                                                                                      fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                    ),
                                                                                                    color: FlutterFlowTheme.of(context).tertiary,
                                                                                                    fontSize: 15.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w800,
                                                                                                    fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ).animateOnPageLoad(
                                                                            animationsMap['containerOnPageLoadAnimation19']!),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 4.0,
                          child: Container(
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PSYCHIATRISTS_Column_5ilo79ti_ON_TAP');
                                        logFirebaseEvent('Column_navigate_to');

                                        context.pushNamed(
                                          ExpCopyWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.02, -3.16),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.home,
                                                size: 24.0,
                                              ).animateOnPageLoad(animationsMap[
                                                  'iconOnPageLoadAnimation']!),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PSYCHIATRISTS_Column_1b9gxgr6_ON_TAP');
                                        logFirebaseEvent('Column_navigate_to');

                                        context.pushNamed(
                                          LandingpageWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.hospitalUser,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PSYCHIATRISTS_Column_okeeuilp_ON_TAP');
                                        logFirebaseEvent('Column_navigate_to');

                                        context.pushNamed(
                                          DocWidget.routeName,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 2.0, 0.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 4.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10.0),
                                                  bottomRight:
                                                      Radius.circular(10.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(0.0),
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'containerOnPageLoadAnimation21']!),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.userMd,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                              size: 24.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PSYCHIATRISTS_Column_51hwqu8w_ON_TAP');
                                        logFirebaseEvent('Column_navigate_to');

                                        context.pushNamed(
                                          ExpWidget.routeName,
                                          queryParameters: {
                                            'rest': serializeParam(
                                              'Call',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 11.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.call_sharp,
                                              size: 29.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PSYCHIATRISTS_Column_jrce2b2h_ON_TAP');
                                        logFirebaseEvent('Column_navigate_to');

                                        context.pushNamed(
                                          ExpWidget.routeName,
                                          queryParameters: {
                                            'rest': serializeParam(
                                              'Chat',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.chat_rounded,
                                              size: 27.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'PSYCHIATRISTS_Column_kiuahk6t_ON_TAP');
                                        logFirebaseEvent('Column_navigate_to');

                                        context.pushNamed(
                                          ExpWidget.routeName,
                                          queryParameters: {
                                            'rest': serializeParam(
                                              'Profile',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.manage_accounts_sharp,
                                              size: 28.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
