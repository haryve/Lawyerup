import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
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
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'psychologists_model.dart';
export 'psychologists_model.dart';

/// please complete it structure and make it more professional
class PsychologistsWidget extends StatefulWidget {
  const PsychologistsWidget({super.key});

  static String routeName = 'psychologists';
  static String routePath = '/feed';

  @override
  State<PsychologistsWidget> createState() => _PsychologistsWidgetState();
}

class _PsychologistsWidgetState extends State<PsychologistsWidget>
    with TickerProviderStateMixin {
  late PsychologistsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PsychologistsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'psychologists'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 16,
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
      'containerOnPageLoadAnimation21': AnimationInfo(
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
      'containerOnPageLoadAnimation22': AnimationInfo(
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
      'containerOnPageLoadAnimation23': AnimationInfo(
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
      'containerOnPageLoadAnimation24': AnimationInfo(
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
      'containerOnPageLoadAnimation25': AnimationInfo(
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
      'containerOnPageLoadAnimation26': AnimationInfo(
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
      'containerOnPageLoadAnimation27': AnimationInfo(
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
      'containerOnPageLoadAnimation28': AnimationInfo(
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
      'containerOnPageLoadAnimation29': AnimationInfo(
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
      'containerOnPageLoadAnimation30': AnimationInfo(
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
      'containerOnPageLoadAnimation31': AnimationInfo(
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
      'containerOnPageLoadAnimation32': AnimationInfo(
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
      'containerOnPageLoadAnimation33': AnimationInfo(
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (currentUserPhoto == '')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'PSYCHOLOGISTS_PAGE_Image_yip98c7s_ON_TAP');
                                            logFirebaseEvent(
                                                'Image_bottom_sheet');
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              useSafeArea: true,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    FocusScope.of(context)
                                                        .unfocus();
                                                    FocusManager
                                                        .instance.primaryFocus
                                                        ?.unfocus();
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        MediaQuery.viewInsetsOf(
                                                            context),
                                                    child: DrawerWidget(),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                            child: Image.asset(
                                              'assets/images/Screenshot_2024-11-10_200914.png',
                                              width: 55.0,
                                              height: 55.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 3.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'PSYCHOLOGISTS_Container_7xivqx3d_ON_TAP');
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
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Good Morning',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .mukta(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                            ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Text(
                                                            valueOrDefault<
                                                                String>(
                                                              currentUserDisplayName,
                                                              'CaremeeZ',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .charm(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      2.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
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
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'PSYCHOLOGISTS_Container_xkf3w146_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Container_navigate_to');

                                                    context.pushNamed(
                                                      AddfundsWidget.routeName,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .scale,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                        ),
                                                      },
                                                    );
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 2.0,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(3.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .account_balance_wallet_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 18.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
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
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .mukta(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
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
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 2.0,
                                                  shape: const CircleBorder(),
                                                  child: Container(
                                                    width: 45.0,
                                                    height: 45.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'PSYCHOLOGISTS_PAGE_Icon_58nknxd5_ON_TAP');
                                                        logFirebaseEvent(
                                                            'Icon_navigate_to');

                                                        context.pushNamed(
                                                            SearchResultsWidget
                                                                .routeName);
                                                      },
                                                      child: Icon(
                                                        Icons.search_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].addToStart(SizedBox(width: 10.0)),
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

                          final callUsercallmanagementRecord = snapshot.data!;

                          return SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                if (callUsercallmanagementRecord.incoming)
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 202.0,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 5.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.incommingCallBoxModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: IncommingCallBoxWidget(
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
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 700.0,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 5.0, 0.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment(0.0, 0),
                                    child: FlutterFlowButtonTabBar(
                                      useToggleButtonStyle: false,
                                      isScrollable: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.ptSans(
                                              fontWeight: FontWeight.w500,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 11.0,
                                            letterSpacing: 1.0,
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                      unselectedLabelStyle: FlutterFlowTheme.of(
                                              context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.ptSans(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 10.0,
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
                                      labelColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      backgroundColor: Color(0x2703A9F4),
                                      unselectedBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      unselectedBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      borderWidth: 1.0,
                                      borderRadius: 50.0,
                                      elevation: 5.0,
                                      labelPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 0.0, 20.0, 0.0),
                                      buttonMargin:
                                          EdgeInsetsDirectional.fromSTEB(
                                              8.0, 10.0, 8.0, 0.0),
                                      tabs: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 1.0),
                                              child: Icon(
                                                Icons.home,
                                                size: 14.0,
                                              ),
                                            ),
                                            Tab(
                                              text: 'All',
                                            ),
                                          ],
                                        ),
                                        Tab(
                                          text: 'Online Now',
                                        ),
                                        Tab(
                                          text: 'Parenting counseling',
                                        ),
                                        Tab(
                                          text: 'Relationship counseling',
                                        ),
                                        Tab(
                                          text: 'Student Counseling',
                                        ),
                                        Tab(
                                          text: 'Drug addiction',
                                        ),
                                        Tab(
                                          text: 'LGBTQ Counseling',
                                        ),
                                        Tab(
                                          text: 'Marital counseling',
                                        ),
                                        Tab(
                                          text: 'Gambling addiction',
                                        ),
                                        Tab(
                                          text: 'Trauma counseling',
                                        ),
                                        Tab(
                                          text: 'Employee counseling',
                                        ),
                                        Tab(
                                          text: 'Depression Specialist',
                                        ),
                                        Tab(
                                          text: 'Eating Disorder',
                                        ),
                                        Tab(
                                          text: 'Stress counseling',
                                        ),
                                        Tab(
                                          text: 'Stress counseling',
                                        ),
                                        Tab(
                                          text: 'Mood swings counselling',
                                        ),
                                      ],
                                      controller: _model.tabBarController,
                                      onTap: (i) async {
                                        [
                                          () async {},
                                          () async {},
                                          () async {},
                                          () async {},
                                          () async {},
                                          () async {},
                                          () async {},
                                          () async {},
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
                                      controller: _model.tabBarController,
                                      children: [
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: PagedListView<
                                                DocumentSnapshot<Object?>?,
                                                LawyersRecord>(
                                              pagingController:
                                                  _model.setListViewController1(
                                                LawyersRecord.collection
                                                    .orderBy('created_time',
                                                        descending: true),
                                              ),
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              reverse: false,
                                              scrollDirection: Axis.vertical,
                                              builderDelegate:
                                                  PagedChildBuilderDelegate<
                                                      LawyersRecord>(
                                                // Customize what your widget looks like when it's loading the first page.
                                                firstPageProgressIndicatorBuilder:
                                                    (_) => Center(
                                                  child: SizedBox(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child: SpinKitFadingCircle(
                                                      color: Color(0x9D03A9F4),
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                // Customize what your widget looks like when it's loading another page.
                                                newPageProgressIndicatorBuilder:
                                                    (_) => Center(
                                                  child: SizedBox(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child: SpinKitFadingCircle(
                                                      color: Color(0x9D03A9F4),
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),

                                                itemBuilder: (context, _,
                                                    listViewIndex) {
                                                  final listViewLawyersRecord = _model
                                                      .listViewPagingController1!
                                                      .itemList![listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                4.0, 8.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onLongPress: () async {
                                                        logFirebaseEvent(
                                                            'PSYCHOLOGISTS_Container_8ri45y9c_ON_LONG');
                                                        if (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.role,
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
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 148.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: StreamBuilder<
                                                              UsersRecord>(
                                                            stream: UsersRecord
                                                                .getDocument(
                                                                    listViewLawyersRecord
                                                                        .author!),
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

                                                              final rowUsersRecord =
                                                                  snapshot
                                                                      .data!;

                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PSYCHOLOGISTS_PAGE_Row_go6w8n3o_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Row_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    DoctorProfiledemoWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'lawyerrefere':
                                                                          serializeParam(
                                                                        listViewLawyersRecord
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
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
                                                                              logFirebaseEvent('PSYCHOLOGISTS_Container_7kbm8e0c_ON_TAP');
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
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.ratingbarModels1.getModel(
                                                                                listViewLawyersRecord.author!.id,
                                                                                listViewIndex,
                                                                              ),
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: RatingbarWidget(
                                                                                key: Key(
                                                                                  'Key7kb_${listViewLawyersRecord.author!.id}',
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
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
                                                                                      'Psychiatrist',
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
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Keymmy_${listViewLawyersRecord.author!.id}',
                                                                                        ),
                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.newchatbuttonModels1.getModel(
                                                                                        rowUsersRecord.reference.id,
                                                                                        listViewIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: NewchatbuttonWidget(
                                                                                        key: Key(
                                                                                          'Keyxh8_${rowUsersRecord.reference.id}',
                                                                                        ),
                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.videocallbuttonModels1.getModel(
                                                                                        rowUsersRecord.reference.id,
                                                                                        listViewIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: VideocallbuttonWidget(
                                                                                        key: Key(
                                                                                          'Key2fi_${rowUsersRecord.reference.id}',
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
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
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
                                                            'containerOnPageLoadAnimation1']!),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: PagedListView<
                                                DocumentSnapshot<Object?>?,
                                                LawyersRecord>(
                                              pagingController:
                                                  _model.setListViewController2(
                                                LawyersRecord.collection
                                                    .orderBy('created_time',
                                                        descending: true),
                                              ),
                                              padding: EdgeInsets.zero,
                                              primary: false,
                                              reverse: false,
                                              scrollDirection: Axis.vertical,
                                              builderDelegate:
                                                  PagedChildBuilderDelegate<
                                                      LawyersRecord>(
                                                // Customize what your widget looks like when it's loading the first page.
                                                firstPageProgressIndicatorBuilder:
                                                    (_) => Center(
                                                  child: SizedBox(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child: SpinKitFadingCircle(
                                                      color: Color(0x9D03A9F4),
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                // Customize what your widget looks like when it's loading another page.
                                                newPageProgressIndicatorBuilder:
                                                    (_) => Center(
                                                  child: SizedBox(
                                                    width: 20.0,
                                                    height: 20.0,
                                                    child: SpinKitFadingCircle(
                                                      color: Color(0x9D03A9F4),
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),

                                                itemBuilder: (context, _,
                                                    listViewIndex) {
                                                  final listViewLawyersRecord = _model
                                                      .listViewPagingController2!
                                                      .itemList![listViewIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 0.0,
                                                                4.0, 8.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onLongPress: () async {
                                                        logFirebaseEvent(
                                                            'PSYCHOLOGISTS_Container_g874mybe_ON_LONG');
                                                        if (valueOrDefault(
                                                                currentUserDocument
                                                                    ?.role,
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
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 148.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: StreamBuilder<
                                                              UsersRecord>(
                                                            stream: UsersRecord
                                                                .getDocument(
                                                                    listViewLawyersRecord
                                                                        .author!),
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

                                                              final rowUsersRecord =
                                                                  snapshot
                                                                      .data!;

                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'PSYCHOLOGISTS_PAGE_Row_jifkmezi_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Row_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    DoctorProfiledemoWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'lawyerrefere':
                                                                          serializeParam(
                                                                        listViewLawyersRecord
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
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
                                                                              logFirebaseEvent('PSYCHOLOGISTS_Container_c7515d6a_ON_TAP');
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
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.ratingbarModels2.getModel(
                                                                                listViewLawyersRecord.author!.id,
                                                                                listViewIndex,
                                                                              ),
                                                                              updateCallback: () => safeSetState(() {}),
                                                                              child: RatingbarWidget(
                                                                                key: Key(
                                                                                  'Keyc75_${listViewLawyersRecord.author!.id}',
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              10.0,
                                                                              0.0,
                                                                              10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
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
                                                                                      'Psychiatrist',
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
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Keyupn_${listViewLawyersRecord.author!.id}',
                                                                                        ),
                                                                                        parameter1: listViewLawyersRecord.author,
                                                                                        parameter2: rowUsersRecord.reference.id,
                                                                                        parameter4: rowUsersRecord.usercallmanagement,
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.newchatbuttonModels2.getModel(
                                                                                        rowUsersRecord.reference.id,
                                                                                        listViewIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: NewchatbuttonWidget(
                                                                                        key: Key(
                                                                                          'Key4q3_${rowUsersRecord.reference.id}',
                                                                                        ),
                                                                                        lawref: listViewLawyersRecord.reference,
                                                                                      ),
                                                                                    ),
                                                                                    wrapWithModel(
                                                                                      model: _model.videocallbuttonModels2.getModel(
                                                                                        rowUsersRecord.reference.id,
                                                                                        listViewIndex,
                                                                                      ),
                                                                                      updateCallback: () => safeSetState(() {}),
                                                                                      child: VideocallbuttonWidget(
                                                                                        key: Key(
                                                                                          'Keyz3y_${rowUsersRecord.reference.id}',
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
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
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
                                                            'containerOnPageLoadAnimation3']!),
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController3(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Parenting counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController3!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_h38d4gkw_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_ujbs79jz_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_a6811hi6_ON_TAP');
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
                                                                                      'Keya68_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Keyec2_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Keyit7_${rowUsersRecord.reference.id}',
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
                                                                                              'Keyray_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation5']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController4(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Relationship counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController4!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_g05pur9s_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_xe72ikyb_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_3yx39eci_ON_TAP');
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
                                                                                      'Key3yx_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Keyo25_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Key7ay_${rowUsersRecord.reference.id}',
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
                                                                                              'Key7gn_${rowUsersRecord.reference.id}',
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
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController5(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Student counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController5!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_c5mw40nv_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        0, 1.0),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_xan76q0b_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_jsa3ejrg_ON_TAP');
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
                                                                                      'Keyjsa_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Key04p_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Keyd2d_${rowUsersRecord.reference.id}',
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
                                                                                              'Keyd6r_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation9']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController6(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Drug addiction',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController6!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_5gnkblph_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_ijd3gdl5_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_p28ebpq9_ON_TAP');
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
                                                                                      'Keyp28_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Keyawe_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Key6e2_${rowUsersRecord.reference.id}',
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
                                                                                              'Key1b0_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation11']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController7(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'LGBTQ counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController7!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_5epxsnz7_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_c4i3o7y4_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_yllwbmjv_ON_TAP');
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
                                                                                      'Keyyll_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Keytiq_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Keyzj5_${rowUsersRecord.reference.id}',
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
                                                                                              'Keyy17_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation13']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController8(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Marital counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController8!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_h67e2mui_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_irr5acke_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_dq2lvvo5_ON_TAP');
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
                                                                                      'Keydq2_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Key8ri_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Keyydu_${rowUsersRecord.reference.id}',
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
                                                                                              'Keyqzk_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation15']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController9(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Gambling addiction',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController9!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_22l4yajf_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_folra3t0_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_qgyldqhw_ON_TAP');
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
                                                                                      'Keyqgy_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Key75d_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Keyswf_${rowUsersRecord.reference.id}',
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
                                                                                              'Keyptx_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation17']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController10(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Trauma counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController10!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_al6xhzkk_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_236c0jho_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_cishis4q_ON_TAP');
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
                                                                                      'Keycis_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                              'Keyvcl_${listViewLawyersRecord.author!.id}',
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
                                                                                              'Keyzzy_${rowUsersRecord.reference.id}',
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
                                                                                              'Keyvvj_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation19']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController11(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Employee counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController11!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_i8vghntc_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_bhrhw74s_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
                                                                                              ).image,
                                                                                            ),
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                        ),
                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation22']!),
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_m8gsu9jb_ON_TAP');
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
                                                                                  model: _model.ratingbarModels11.getModel(
                                                                                    listViewLawyersRecord.author!.id,
                                                                                    listViewIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: RatingbarWidget(
                                                                                    key: Key(
                                                                                      'Keym8g_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                          model: _model.callbuttonnewModels11.getModel(
                                                                                            listViewLawyersRecord.author!.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: CallbuttonnewWidget(
                                                                                            key: Key(
                                                                                              'Keymwu_${listViewLawyersRecord.author!.id}',
                                                                                            ),
                                                                                            parameter1: listViewLawyersRecord.author,
                                                                                            parameter2: rowUsersRecord.reference.id,
                                                                                            parameter4: rowUsersRecord.usercallmanagement,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.newchatbuttonModels11.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: NewchatbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyq0g_${rowUsersRecord.reference.id}',
                                                                                            ),
                                                                                            lawref: listViewLawyersRecord.reference,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.videocallbuttonModels11.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: VideocallbuttonWidget(
                                                                                            key: Key(
                                                                                              'Key6ut_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation21']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController12(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Depression Specialist',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController12!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_n8sxu4e9_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_h1gez0dm_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
                                                                                              ).image,
                                                                                            ),
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                        ),
                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation24']!),
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_bhl6dxsj_ON_TAP');
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
                                                                                  model: _model.ratingbarModels12.getModel(
                                                                                    listViewLawyersRecord.author!.id,
                                                                                    listViewIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: RatingbarWidget(
                                                                                    key: Key(
                                                                                      'Keybhl_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                          model: _model.callbuttonnewModels12.getModel(
                                                                                            listViewLawyersRecord.author!.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: CallbuttonnewWidget(
                                                                                            key: Key(
                                                                                              'Keyd65_${listViewLawyersRecord.author!.id}',
                                                                                            ),
                                                                                            parameter1: listViewLawyersRecord.author,
                                                                                            parameter2: rowUsersRecord.reference.id,
                                                                                            parameter4: rowUsersRecord.usercallmanagement,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.newchatbuttonModels12.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: NewchatbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keybzq_${rowUsersRecord.reference.id}',
                                                                                            ),
                                                                                            lawref: listViewLawyersRecord.reference,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.videocallbuttonModels12.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: VideocallbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyxn2_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation23']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController13(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Eating Disorder',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController13!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_clm8zof5_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_88tzhrfs_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
                                                                                              ).image,
                                                                                            ),
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                        ),
                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation26']!),
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_8g7w6yez_ON_TAP');
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
                                                                                  model: _model.ratingbarModels13.getModel(
                                                                                    listViewLawyersRecord.author!.id,
                                                                                    listViewIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: RatingbarWidget(
                                                                                    key: Key(
                                                                                      'Key8g7_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                          model: _model.callbuttonnewModels13.getModel(
                                                                                            listViewLawyersRecord.author!.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: CallbuttonnewWidget(
                                                                                            key: Key(
                                                                                              'Key2rg_${listViewLawyersRecord.author!.id}',
                                                                                            ),
                                                                                            parameter1: listViewLawyersRecord.author,
                                                                                            parameter2: rowUsersRecord.reference.id,
                                                                                            parameter4: rowUsersRecord.usercallmanagement,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.newchatbuttonModels13.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: NewchatbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyrps_${rowUsersRecord.reference.id}',
                                                                                            ),
                                                                                            lawref: listViewLawyersRecord.reference,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.videocallbuttonModels13.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: VideocallbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyctp_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation25']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController14(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Stress counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController14!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_xni7ps9b_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_x7p4qheb_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
                                                                                              ).image,
                                                                                            ),
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                        ),
                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation28']!),
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_qo9f14di_ON_TAP');
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
                                                                                  model: _model.ratingbarModels14.getModel(
                                                                                    listViewLawyersRecord.author!.id,
                                                                                    listViewIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: RatingbarWidget(
                                                                                    key: Key(
                                                                                      'Keyqo9_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                          model: _model.callbuttonnewModels14.getModel(
                                                                                            listViewLawyersRecord.author!.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: CallbuttonnewWidget(
                                                                                            key: Key(
                                                                                              'Keyxtb_${listViewLawyersRecord.author!.id}',
                                                                                            ),
                                                                                            parameter1: listViewLawyersRecord.author,
                                                                                            parameter2: rowUsersRecord.reference.id,
                                                                                            parameter4: rowUsersRecord.usercallmanagement,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.newchatbuttonModels14.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: NewchatbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyndy_${rowUsersRecord.reference.id}',
                                                                                            ),
                                                                                            lawref: listViewLawyersRecord.reference,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.videocallbuttonModels14.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: VideocallbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keylio_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation27']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController15(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Stress counseling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController15!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_79oqqq72_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_p9p2b65i_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
                                                                                              ).image,
                                                                                            ),
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                        ),
                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation30']!),
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_a2cznkjj_ON_TAP');
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
                                                                                  model: _model.ratingbarModels15.getModel(
                                                                                    listViewLawyersRecord.author!.id,
                                                                                    listViewIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: RatingbarWidget(
                                                                                    key: Key(
                                                                                      'Keya2c_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                          model: _model.callbuttonnewModels15.getModel(
                                                                                            listViewLawyersRecord.author!.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: CallbuttonnewWidget(
                                                                                            key: Key(
                                                                                              'Keynpd_${listViewLawyersRecord.author!.id}',
                                                                                            ),
                                                                                            parameter1: listViewLawyersRecord.author,
                                                                                            parameter2: rowUsersRecord.reference.id,
                                                                                            parameter4: rowUsersRecord.usercallmanagement,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.newchatbuttonModels15.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: NewchatbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyfce_${rowUsersRecord.reference.id}',
                                                                                            ),
                                                                                            lawref: listViewLawyersRecord.reference,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.videocallbuttonModels15.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: VideocallbuttonWidget(
                                                                                            key: Key(
                                                                                              'Key7p0_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation29']!),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        KeepAliveWidgetWrapper(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: PagedListView<
                                                    DocumentSnapshot<Object?>?,
                                                    LawyersRecord>(
                                                  pagingController: _model
                                                      .setListViewController16(
                                                    LawyersRecord.collection
                                                        .where(
                                                          'expertiselist',
                                                          arrayContains:
                                                              'Mood swings counselling',
                                                        )
                                                        .orderBy('created_time',
                                                            descending: true),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  reverse: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          LawyersRecord>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 20.0,
                                                        height: 20.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color:
                                                              Color(0x9D03A9F4),
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        listViewIndex) {
                                                      final listViewLawyersRecord =
                                                          _model.listViewPagingController16!
                                                                  .itemList![
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
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onLongPress:
                                                              () async {
                                                            logFirebaseEvent(
                                                                'PSYCHOLOGISTS_Container_op2qp3dv_ON_LONG');
                                                            if (valueOrDefault(
                                                                    currentUserDocument
                                                                        ?.role,
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
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 148.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child: StreamBuilder<
                                                                  UsersRecord>(
                                                                stream: UsersRecord
                                                                    .getDocument(
                                                                        listViewLawyersRecord
                                                                            .author!),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            20.0,
                                                                        height:
                                                                            20.0,
                                                                        child:
                                                                            SpinKitFadingCircle(
                                                                          color:
                                                                              Color(0x9D03A9F4),
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }

                                                                  final rowUsersRecord =
                                                                      snapshot
                                                                          .data!;

                                                                  return InkWell(
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
                                                                    onTap:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'PSYCHOLOGISTS_PAGE_Row_fvym5g3e_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'Row_navigate_to');

                                                                      context
                                                                          .pushNamed(
                                                                        DoctorProfiledemoWidget
                                                                            .routeName,
                                                                        queryParameters:
                                                                            {
                                                                          'lawyerrefere':
                                                                              serializeParam(
                                                                            listViewLawyersRecord.reference,
                                                                            ParamType.DocumentReference,
                                                                          ),
                                                                        }.withoutNulls,
                                                                      );
                                                                    },
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
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
                                                                                                'assets/images/Screenshot_2024-10-17_113050.png',
                                                                                              ).image,
                                                                                            ),
                                                                                            shape: BoxShape.circle,
                                                                                          ),
                                                                                        ),
                                                                                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation32']!),
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
                                                                                  logFirebaseEvent('PSYCHOLOGISTS_Container_ihmsnf30_ON_TAP');
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
                                                                                  model: _model.ratingbarModels16.getModel(
                                                                                    listViewLawyersRecord.author!.id,
                                                                                    listViewIndex,
                                                                                  ),
                                                                                  updateCallback: () => safeSetState(() {}),
                                                                                  child: RatingbarWidget(
                                                                                    key: Key(
                                                                                      'Keyihm_${listViewLawyersRecord.author!.id}',
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
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
                                                                                          'Psychiatrist',
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                                          model: _model.callbuttonnewModels16.getModel(
                                                                                            listViewLawyersRecord.author!.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: CallbuttonnewWidget(
                                                                                            key: Key(
                                                                                              'Keykc0_${listViewLawyersRecord.author!.id}',
                                                                                            ),
                                                                                            parameter1: listViewLawyersRecord.author,
                                                                                            parameter2: rowUsersRecord.reference.id,
                                                                                            parameter4: rowUsersRecord.usercallmanagement,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.newchatbuttonModels16.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: NewchatbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyznr_${rowUsersRecord.reference.id}',
                                                                                            ),
                                                                                            lawref: listViewLawyersRecord.reference,
                                                                                          ),
                                                                                        ),
                                                                                        wrapWithModel(
                                                                                          model: _model.videocallbuttonModels16.getModel(
                                                                                            rowUsersRecord.reference.id,
                                                                                            listViewIndex,
                                                                                          ),
                                                                                          updateCallback: () => safeSetState(() {}),
                                                                                          child: VideocallbuttonWidget(
                                                                                            key: Key(
                                                                                              'Keyzd9_${rowUsersRecord.reference.id}',
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
                                                                'containerOnPageLoadAnimation31']!),
                                                      );
                                                    },
                                                  ),
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
              alignment: AlignmentDirectional(0.0, 0.95),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 1.0, 0.0),
                child: Material(
                  color: Colors.transparent,
                  elevation: 4.0,
                  child: Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    'PSYCHOLOGISTS_Column_rj30yuot_ON_TAP');
                                logFirebaseEvent('Column_navigate_to');

                                context.pushNamed(
                                  ExpCopyWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.02, -3.16),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                    'PSYCHOLOGISTS_Column_n3bm6k25_ON_TAP');
                                logFirebaseEvent('Column_navigate_to');

                                context.pushNamed(
                                  LandingpageWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                    'PSYCHOLOGISTS_Column_tkfqgo8z_ON_TAP');
                                logFirebaseEvent('Column_navigate_to');

                                context.pushNamed(
                                  DocWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2.0, 0.0, 2.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 4.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'containerOnPageLoadAnimation33']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.userMd,
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
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
                                    'PSYCHOLOGISTS_Column_9k1wk908_ON_TAP');
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
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                    'PSYCHOLOGISTS_Column_dob8w52a_ON_TAP');
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
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
                                    'PSYCHOLOGISTS_Column_7iljrjj1_ON_TAP');
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
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
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
    );
  }
}
