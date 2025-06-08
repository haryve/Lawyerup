import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/permissions_util.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'call_screen_model.dart';
export 'call_screen_model.dart';

class CallScreenWidget extends StatefulWidget {
  const CallScreenWidget({
    super.key,
    required this.callRef,
  });

  final DocumentReference? callRef;

  static String routeName = 'call_screen';
  static String routePath = '/callScreen';

  @override
  State<CallScreenWidget> createState() => _CallScreenWidgetState();
}

class _CallScreenWidgetState extends State<CallScreenWidget>
    with TickerProviderStateMixin {
  late CallScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CallScreenModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'call_screen'});
    animationsMap.addAll({
      'iconOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, -20.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 20.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 30,
            offset: Offset(0.0, 0.0),
            rotation: 0.14,
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, -20.0),
          ),
          MoveEffect(
            curve: Curves.easeOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -20.0),
            end: Offset(0.0, 20.0),
          ),
        ],
      ),
      'iconButtonOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 30,
            offset: Offset(0.0, 0.0),
            rotation: 0.14,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
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
      'iconButtonOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 330.0.ms,
            duration: 760.0.ms,
            hz: 6,
            offset: Offset(0.0, 0.0),
            rotation: 0.14,
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-100.0, 0.0),
            end: Offset(0.0, 0.0),
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
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).accent2,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
          ),
          onPressed: () async {
            logFirebaseEvent('CALL_SCREEN_arrow_back_rounded_ICN_ON_TA');
            logFirebaseEvent('IconButton_navigate_back');
            context.pop();
          },
        ),
        title: Text(
          'Calls',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                font: GoogleFonts.openSans(
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22.0,
                letterSpacing: 0.0,
                fontWeight:
                    FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                fontStyle:
                    FlutterFlowTheme.of(context).headlineMedium.fontStyle,
              ),
        ),
        actions: [],
        centerTitle: false,
      ),
      body: StreamBuilder<CallsRecord>(
        stream: CallsRecord.getDocument(widget.callRef!),
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

          final containerCallsRecord = snapshot.data!;

          return Container(
            decoration: BoxDecoration(),
            child: StreamBuilder<List<LawyersRecord>>(
              stream: queryLawyersRecord(
                queryBuilder: (lawyersRecord) => lawyersRecord.where(
                  'author',
                  isEqualTo: containerCallsRecord.userB,
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
                List<LawyersRecord> stackLawyersRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final stackLawyersRecord = stackLawyersRecordList.isNotEmpty
                    ? stackLawyersRecordList.first
                    : null;

                return Stack(
                  children: [
                    if (containerCallsRecord.userBJoined)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: StreamBuilder<UsersRecord>(
                          stream: UsersRecord.getDocument(
                              containerCallsRecord.userA == currentUserReference
                                  ? containerCallsRecord.userB!
                                  : containerCallsRecord.userA!),
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

                            final containerUsersRecord = snapshot.data!;

                            return Material(
                              color: Colors.transparent,
                              elevation: 10.0,
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Screenshot_2024-11-10_200914.png',
                                    ).image,
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                1.0,
                                        child: custom_widgets
                                            .GhostCodingBasicVoiceChannel(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          token: containerCallsRecord.tokenId,
                                          appID: containerCallsRecord.appId,
                                          channelName:
                                              containerCallsRecord.channelName,
                                          backgroundValue: Color(0x2ABDA4A4),
                                          headPercentageWidth: 1.0,
                                          headPercentageHeight: 1.0,
                                          mainContainerBorderRadius: 12.0,
                                          mainContainerBackground:
                                              Color(0x72F0F5F9),
                                          profilePictureWidth:
                                              valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                            0.9,
                                          ),
                                          profilePictureHeight:
                                              valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width *
                                                0.9,
                                            0.9,
                                          ),
                                          placeHolderImagePath:
                                              'assets/images/Caremeez_logo.png',
                                          userProfileImage:
                                              containerUsersRecord.photoUrl,
                                          profileBorderRadius: 50.0,
                                          profileBorderColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          profileBorderwidth: 5.0,
                                          actionContainerBackground:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          actionContainerRadiusBL: 12.0,
                                          actionContainerRadiusBR: 12.0,
                                          actionContainerRadiusTL: 20.0,
                                          actionContainerRadiusTR: 20.0,
                                          buttonRowPadding: 20.0,
                                          buttonWidth: 50.0,
                                          buttonHeight: 50.0,
                                          endCallElevation: 8.0,
                                          endCallBorderRadius: 50.0,
                                          endCallBackground: Color(0xFFED1717),
                                          endCallIcon: Icon(
                                            Icons.call_end,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 30.0,
                                          ),
                                          speakerButtonElevation: 8.0,
                                          speakerButtonBorderRadius: 100.0,
                                          speakerEnabledColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          speakerDisabledColor:
                                              Color(0xFFF21313),
                                          speakerIconActive: Icon(
                                            Icons.volume_up_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 30.0,
                                          ),
                                          speakerIconInactive: Icon(
                                            Icons.volume_off,
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                            size: 30.0,
                                          ),
                                          activeBoxBackground:
                                              Color(0xFFE7EBF2),
                                          activeBoxBorderRadius: 20.0,
                                          callingTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          callingTextString:
                                              'calling${containerUsersRecord.displayName}',
                                          userSpeakingIcon: Icon(
                                            Icons.graphic_eq,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                          userNotSpeakingIcon: FaIcon(
                                            FontAwesomeIcons
                                                .solidMehRollingEyes,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 18.0,
                                          ),
                                          userFirstName:
                                              containerUsersRecord.displayName,
                                          lawrefg:
                                              stackLawyersRecord!.lawyerCharge,
                                          endCallAction: () async {
                                            logFirebaseEvent(
                                                'CALL_SCREEN_Container_rovwwg0b_CALLBACK');
                                            logFirebaseEvent(
                                                'GhostCodingBasicVoiceChannel_backend_cal');

                                            await widget.callRef!
                                                .update(createCallsRecordData(
                                              callEnded: true,
                                              userAJoined: false,
                                              userBJoined: false,
                                            ));
                                            logFirebaseEvent(
                                                'GhostCodingBasicVoiceChannel_backend_cal');

                                            await containerUsersRecord
                                                .usercallmanagement!
                                                .update({
                                              ...createUsercallmanagementRecordData(
                                                active: false,
                                                incoming: false,
                                                inCall: false,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'activecallref':
                                                      FieldValue.delete(),
                                                },
                                              ),
                                            });
                                            logFirebaseEvent(
                                                'GhostCodingBasicVoiceChannel_backend_cal');

                                            await currentUserDocument!
                                                .usercallmanagement!
                                                .update({
                                              ...createUsercallmanagementRecordData(
                                                active: false,
                                                incoming: false,
                                                inCall: false,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'activecallref':
                                                      FieldValue.delete(),
                                                },
                                              ),
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    if (containerCallsRecord.callEnded)
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: StreamBuilder<UsersRecord>(
                          stream: UsersRecord.getDocument(
                              containerCallsRecord.userA == currentUserReference
                                  ? containerCallsRecord.userB!
                                  : containerCallsRecord.userA!),
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

                            final containerUsersRecord = snapshot.data!;

                            return Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                shape: BoxShape.rectangle,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 40.0, 10.0, 0.0),
                                            child: Text(
                                              containerCallsRecord.callEnded &&
                                                      containerCallsRecord
                                                          .callDeclined
                                                  ? 'Call Declined by${containerCallsRecord.declinedBy == currentUserReference ? 'you' : containerUsersRecord.displayName}'
                                                  : 'Call Ended with${containerUsersRecord.displayName}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineLarge
                                                  .override(
                                                    font: GoogleFonts.openSans(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .error,
                                                    fontSize: 25.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 2.0,
                                            shape: const CircleBorder(),
                                            child: Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.7,
                                                200.0,
                                              ),
                                              height: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.7,
                                                200.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    containerUsersRecord
                                                        .photoUrl,
                                                  ),
                                                ),
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Visibility(
                                                visible: containerUsersRecord
                                                            .photoUrl ==
                                                        '',
                                                child: Container(
                                                  width: valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.6,
                                                    200.0,
                                                  ),
                                                  height:
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.6,
                                                    200.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/prfileimg.png',
                                                      ).image,
                                                    ),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFFDD1414),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          containerUsersRecord.displayName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.mukta(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 10.0)),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          borderRadius: 100.0,
                                          borderWidth: 2.0,
                                          buttonSize: 70.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent2,
                                          icon: Icon(
                                            Icons.phone_callback_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 25.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'CALL_SCREEN_phone_callback_sharp_ICN_ON_');
                                            logFirebaseEvent(
                                                'IconButton_backend_call');

                                            await widget.callRef!.update({
                                              ...createCallsRecordData(
                                                callEnded: false,
                                                userAJoined: true,
                                                userBJoined: false,
                                                ringing: false,
                                                callDeclined: false,
                                                userA: currentUserReference,
                                                userB: containerUsersRecord
                                                    .reference,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'declined_by':
                                                      FieldValue.delete(),
                                                },
                                              ),
                                            });
                                            logFirebaseEvent(
                                                'IconButton_backend_call');

                                            await containerUsersRecord
                                                .usercallmanagement!
                                                .update(
                                                    createUsercallmanagementRecordData(
                                              active: false,
                                              incoming: true,
                                              inCall: true,
                                              activecallref: widget.callRef,
                                            ));
                                            logFirebaseEvent(
                                                'IconButton_backend_call');

                                            await currentUserDocument!
                                                .usercallmanagement!
                                                .update(
                                                    createUsercallmanagementRecordData(
                                              active: true,
                                              incoming: false,
                                              inCall: true,
                                              activecallref: widget.callRef,
                                            ));
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xA0FFFFFF),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 10.0),
                                      child: Text(
                                        'Call Back',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.mukta(
                                                fontWeight: FontWeight.w800,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .accent2,
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    if (containerCallsRecord.ringing &&
                        (containerCallsRecord.userB == currentUserReference))
                      StreamBuilder<UsersRecord>(
                        stream: UsersRecord.getDocument(
                            containerCallsRecord.userA == currentUserReference
                                ? containerCallsRecord.userB!
                                : containerCallsRecord.userA!),
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

                          final containerUsersRecord = snapshot.data!;

                          return Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 10.0,
                                            shape: const CircleBorder(),
                                            child: Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.7,
                                                200.0,
                                              ),
                                              height: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.7,
                                                200.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image:
                                                      CachedNetworkImageProvider(
                                                    containerUsersRecord
                                                        .photoUrl,
                                                  ),
                                                ),
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: Visibility(
                                                visible: containerUsersRecord
                                                            .photoUrl ==
                                                        '',
                                                child: Container(
                                                  width: valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.7,
                                                    200.0,
                                                  ),
                                                  height:
                                                      valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.7,
                                                    200.0,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/prfileimg.png',
                                                      ).image,
                                                    ),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFFDD1414),
                                                      width: 2.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          containerUsersRecord.displayName,
                                          style: FlutterFlowTheme.of(context)
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
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Decline',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.mukta(
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .error,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                          Text(
                                            'Accept Call',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.mukta(
                                                    fontWeight: FontWeight.w800,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w800,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 40.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 8.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  DragTarget<String>(
                                                    onAcceptWithDetails:
                                                        (details) async {
                                                      logFirebaseEvent(
                                                          'CALL_SCREEN_DragTarget_av71hjgw_ON_DRAG_');
                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await widget.callRef!
                                                          .update({
                                                        ...createCallsRecordData(
                                                          callEnded: true,
                                                          userAJoined: false,
                                                          userBJoined: false,
                                                          ringing: false,
                                                          callDeclined: true,
                                                          declinedBy:
                                                              currentUserReference,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'users': FieldValue
                                                                .arrayUnion([
                                                              currentUserReference
                                                            ]),
                                                          },
                                                        ),
                                                      });
                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await containerUsersRecord
                                                          .usercallmanagement!
                                                          .update({
                                                        ...createUsercallmanagementRecordData(
                                                          active: false,
                                                          incoming: false,
                                                          inCall: false,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'activecallref':
                                                                FieldValue
                                                                    .delete(),
                                                          },
                                                        ),
                                                      });
                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await currentUserDocument!
                                                          .usercallmanagement!
                                                          .update({
                                                        ...createUsercallmanagementRecordData(
                                                          active: false,
                                                          incoming: false,
                                                          inCall: false,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'activecallref':
                                                                FieldValue
                                                                    .delete(),
                                                          },
                                                        ),
                                                      });

                                                      safeSetState(() {});
                                                    },
                                                    builder: (context, _, __) {
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 10.0,
                                                            shape:
                                                                const CircleBorder(),
                                                            child: Container(
                                                              width: 70.0,
                                                              height: 70.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xA1E70D0D),
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFFF6450A),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .keyboard_double_arrow_up_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 35.0,
                                                          ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconOnPageLoadAnimation1']!),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                  Draggable<String>(
                                                    data: '',
                                                    feedback: Material(
                                                      type: MaterialType
                                                          .transparency,
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: 20.0,
                                                        buttonSize: 40.0,
                                                        fillColor:
                                                            Color(0xFFDA311B),
                                                        icon: Icon(
                                                          Icons.call_end,
                                                          color:
                                                              Color(0xFFE4DCDC),
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'iconButtonOnPageLoadAnimation1']!),
                                                    ),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderRadius: 20.0,
                                                      buttonSize: 40.0,
                                                      fillColor:
                                                          Color(0xFFDA311B),
                                                      icon: Icon(
                                                        Icons.call_end,
                                                        color:
                                                            Color(0xFFE4DCDC),
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ).animateOnPageLoad(
                                                            animationsMap[
                                                                'iconButtonOnPageLoadAnimation1']!),
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 20.0)),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                DragTarget<String>(
                                                  onAcceptWithDetails:
                                                      (details) async {
                                                    logFirebaseEvent(
                                                        'CALL_SCREEN_DragTarget_a3ow7ygh_ON_DRAG_');
                                                    if (!containerCallsRecord
                                                        .videocall) {
                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await widget.callRef!.update(
                                                          createCallsRecordData(
                                                        ringing: false,
                                                        userBJoined: true,
                                                        userA:
                                                            containerUsersRecord
                                                                .reference,
                                                      ));
                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await containerUsersRecord
                                                          .usercallmanagement!
                                                          .update(
                                                              createUsercallmanagementRecordData(
                                                        active: true,
                                                        incoming: false,
                                                        inCall: true,
                                                      ));
                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await currentUserDocument!
                                                          .usercallmanagement!
                                                          .update(
                                                              createUsercallmanagementRecordData(
                                                        active: true,
                                                        incoming: false,
                                                        inCall: true,
                                                      ));
                                                    } else {
                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await containerCallsRecord
                                                          .reference
                                                          .update(
                                                              createCallsRecordData(
                                                        userBJoined: true,
                                                        ringing: false,
                                                        userA:
                                                            currentUserReference,
                                                      ));
                                                      logFirebaseEvent(
                                                          'DragTarget_request_permissions');
                                                      await requestPermission(
                                                          microphonePermission);
                                                      logFirebaseEvent(
                                                          'DragTarget_request_permissions');
                                                      await requestPermission(
                                                          cameraPermission);
                                                      logFirebaseEvent(
                                                          'DragTarget_navigate_to');

                                                      context.pushNamed(
                                                        VideocallWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'callref':
                                                              serializeParam(
                                                            containerCallsRecord
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .scale,
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    250),
                                                          ),
                                                        },
                                                      );

                                                      logFirebaseEvent(
                                                          'DragTarget_backend_call');

                                                      await currentUserDocument!
                                                          .usercallmanagement!
                                                          .update(
                                                              createUsercallmanagementRecordData(
                                                        active: true,
                                                        incoming: false,
                                                        videoCallRequest: true,
                                                      ));
                                                    }

                                                    safeSetState(() {});
                                                  },
                                                  builder: (context, _, __) {
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 10.0,
                                                          shape:
                                                              const CircleBorder(),
                                                          child: Container(
                                                            width: 70.0,
                                                            height: 70.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x70CE0A0A),
                                                              shape: BoxShape
                                                                  .circle,
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF92E80F),
                                                                width: 2.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .keyboard_double_arrow_up_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 35.0,
                                                        ).animateOnPageLoad(
                                                            animationsMap[
                                                                'iconOnPageLoadAnimation2']!),
                                                      ],
                                                    );
                                                  },
                                                ),
                                                Draggable<String>(
                                                  data: '',
                                                  feedback: Material(
                                                    type: MaterialType
                                                        .transparency,
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                      borderRadius: 50.0,
                                                      borderWidth: 3.0,
                                                      buttonSize: 50.0,
                                                      fillColor:
                                                          Color(0xFF341BCE),
                                                      icon: Icon(
                                                        Icons.call,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        size: 24.0,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'IconButton pressed ...');
                                                      },
                                                    ).animateOnPageLoad(
                                                            animationsMap[
                                                                'iconButtonOnPageLoadAnimation2']!),
                                                  ),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .tertiary,
                                                    borderRadius: 50.0,
                                                    borderWidth: 3.0,
                                                    buttonSize: 50.0,
                                                    fillColor:
                                                        Color(0xFF341BCE),
                                                    icon: Icon(
                                                      Icons.call,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 24.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
                                                  ).animateOnPageLoad(animationsMap[
                                                      'iconButtonOnPageLoadAnimation2']!),
                                                ),
                                              ].divide(SizedBox(height: 20.0)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    if (containerCallsRecord.ringing &&
                        (containerCallsRecord.userA == currentUserReference))
                      StreamBuilder<UsersRecord>(
                        stream: UsersRecord.getDocument(
                            containerCallsRecord.userA == currentUserReference
                                ? containerCallsRecord.userB!
                                : containerCallsRecord.userA!),
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

                          final containerUsersRecord = snapshot.data!;

                          return Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).tertiary,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: Text(
                                          'Calling ${containerUsersRecord.displayName}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.mukta(
                                                  fontWeight: FontWeight.normal,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 30.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 2.0,
                                        shape: const CircleBorder(),
                                        child: Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width *
                                                0.7,
                                            200.0,
                                          ),
                                          height: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width *
                                                0.7,
                                            200.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: CachedNetworkImageProvider(
                                                containerUsersRecord.photoUrl,
                                              ),
                                            ),
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Visibility(
                                            visible: containerUsersRecord.photoUrl ==
                                                    '',
                                            child: Container(
                                              width: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.7,
                                                200.0,
                                              ),
                                              height: valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.7,
                                                200.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.asset(
                                                    'assets/images/adaptive_foreground_icon.png',
                                                  ).image,
                                                ),
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 2.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Text(
                                        'Ringing....',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.mukta(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF0F0F0F),
                                              fontSize: 30.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ).animateOnPageLoad(animationsMap[
                                          'textOnPageLoadAnimation']!),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 50.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  14.0,
                                                                  0.0,
                                                                  14.0,
                                                                  0.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      24.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Draggable<String>(
                                                              data: '',
                                                              feedback:
                                                                  Material(
                                                                type: MaterialType
                                                                    .transparency,
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderRadius:
                                                                        50.0,
                                                                    buttonSize:
                                                                        61.0,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .call,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      size:
                                                                          40.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ).animateOnPageLoad(
                                                                          animationsMap[
                                                                              'iconButtonOnPageLoadAnimation3']!),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      50.0,
                                                                  buttonSize:
                                                                      61.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                                  icon: Icon(
                                                                    Icons.call,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    size: 40.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'iconButtonOnPageLoadAnimation3']!),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Slide To Cancel The  call',
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
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .double_arrow_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 35.0,
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'iconOnPageLoadAnimation3']!),
                                                            ),
                                                            DragTarget<String>(
                                                              onAcceptWithDetails:
                                                                  (details) async {
                                                                logFirebaseEvent(
                                                                    'CALL_SCREEN_DragTarget_93uku1dd_ON_DRAG_');
                                                                logFirebaseEvent(
                                                                    'DragTarget_backend_call');

                                                                await widget
                                                                    .callRef!
                                                                    .update({
                                                                  ...createCallsRecordData(
                                                                    callEnded:
                                                                        true,
                                                                    userAJoined:
                                                                        false,
                                                                    userBJoined:
                                                                        false,
                                                                    ringing:
                                                                        false,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'users':
                                                                          FieldValue
                                                                              .arrayUnion([
                                                                        containerUsersRecord
                                                                            .reference
                                                                      ]),
                                                                    },
                                                                  ),
                                                                });
                                                                logFirebaseEvent(
                                                                    'DragTarget_backend_call');

                                                                await containerUsersRecord
                                                                    .usercallmanagement!
                                                                    .update({
                                                                  ...createUsercallmanagementRecordData(
                                                                    active:
                                                                        false,
                                                                    incoming:
                                                                        false,
                                                                    inCall:
                                                                        false,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'activecallref':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                  ),
                                                                });
                                                                logFirebaseEvent(
                                                                    'DragTarget_backend_call');

                                                                await currentUserDocument!
                                                                    .usercallmanagement!
                                                                    .update({
                                                                  ...createUsercallmanagementRecordData(
                                                                    active:
                                                                        false,
                                                                    incoming:
                                                                        false,
                                                                    inCall:
                                                                        false,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'activecallref':
                                                                          FieldValue
                                                                              .delete(),
                                                                    },
                                                                  ),
                                                                });

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              builder: (context,
                                                                  _, __) {
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            70.0,
                                                                        height:
                                                                            70.0,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xA1E70D0D),
                                                                          shape:
                                                                              BoxShape.circle,
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                Color(0xFFF6450A),
                                                                            width:
                                                                                2.0,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .call_end,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            ),
                                                          ],
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
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
