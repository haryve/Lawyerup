import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chatinvitatiog_model.dart';
export 'chatinvitatiog_model.dart';

class ChatinvitatiogWidget extends StatefulWidget {
  const ChatinvitatiogWidget({
    super.key,
    required this.lawtereef,
  });

  final DocumentReference? lawtereef;

  @override
  State<ChatinvitatiogWidget> createState() => _ChatinvitatiogWidgetState();
}

class _ChatinvitatiogWidgetState extends State<ChatinvitatiogWidget> {
  late ChatinvitatiogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatinvitatiogModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
        child: Container(
          width: MediaQuery.sizeOf(context).width * 0.8,
          height: 500.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: Color(0x33000000),
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                    spreadRadius: 0.0,
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: StreamBuilder<LawyersRecord>(
                  stream: LawyersRecord.getDocument(widget.lawtereef!),
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

                    final columnLawyersRecord = snapshot.data!;

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'CHATINVITATIOG_COMP_Icon_xo33a91t_ON_TAP');
                                logFirebaseEvent('Icon_bottom_sheet');
                                Navigator.pop(context);
                              },
                              child: FaIcon(
                                FontAwesomeIcons.caretDown,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                        if (columnLawyersRecord.lawyerDp != '')
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'CHATINVITATIOG_CircleImage_f0f15w7e_ON_T');
                              logFirebaseEvent('CircleImage_navigate_to');

                              context.pushNamed(
                                DoctorProfiledemoWidget.routeName,
                                queryParameters: {
                                  'lawyerrefere': serializeParam(
                                    widget.lawtereef,
                                    ParamType.DocumentReference,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Container(
                              width: 100.0,
                              height: 100.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CachedNetworkImage(
                                fadeInDuration: Duration(milliseconds: 500),
                                fadeOutDuration: Duration(milliseconds: 500),
                                imageUrl: columnLawyersRecord.lawyerDp,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        Text(
                          'Chat with ${valueOrDefault<String>(
                            columnLawyersRecord.displayName,
                            'Doctor',
                          )}',
                          style: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                font: GoogleFonts.openSans(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'Have a question about your symptoms, medication, or treatment? Type your message below and tap Send.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                hintText:
                                    'Hi, ${columnLawyersRecord.displayName}, I\'m experiencing [briefly describe your symptom] and would like advice on [what you\'d like to know].',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.mukta(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              maxLines: 4,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'CHATINVITATIOG_SEND_MESSAGE_BTN_ON_TAP');
                            logFirebaseEvent('Button_firestore_query');
                            _model.chatsref = await queryChatsRecordOnce(
                              queryBuilder: (chatsRecord) => chatsRecord.where(
                                'participantids',
                                arrayContains: columnLawyersRecord.author,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            if (_model.chatsref!.participantids
                                .contains(columnLawyersRecord.author)) {
                              logFirebaseEvent('Button_backend_call');

                              await _model.chatsref!.reference
                                  .update(createChatsRecordData(
                                lastmessage: _model.textController.text,
                                lastmessagetime:
                                    columnLawyersRecord.createdTime,
                                lastmessagetype: 'Text',
                                lastmessageseen: false,
                              ));
                              logFirebaseEvent('Button_backend_call');

                              await columnLawyersRecord.author!.update({
                                ...mapToFirestore(
                                  {
                                    'pendingrequests': FieldValue.arrayUnion(
                                        [currentUserReference]),
                                  },
                                ),
                              });
                              logFirebaseEvent('Button_backend_call');

                              await NotificationsRecord.createDoc(
                                      columnLawyersRecord.author!)
                                  .set(createNotificationsRecordData(
                                type: 'chat',
                                seen: false,
                                person: currentUserReference,
                                time: getCurrentTimestamp,
                                senderdp: currentUserPhoto,
                                message: _model.textController.text,
                              ));
                              logFirebaseEvent('Button_backend_call');

                              await MessagesRecord.createDoc(
                                      _model.chatsref!.reference)
                                  .set(createMessagesRecordData(
                                senderID: currentUserReference,
                                sendername: currentUserDisplayName,
                                senderImage: currentUserPhoto,
                                messagetext: _model.textController.text,
                                type: 'text',
                              ));
                              logFirebaseEvent(
                                  'Button_trigger_push_notification');
                              triggerPushNotification(
                                notificationTitle: currentUserDisplayName,
                                notificationText: 'Invited you for a chat',
                                notificationImageUrl: currentUserPhoto,
                                notificationSound: 'default',
                                userRefs: [columnLawyersRecord.author!],
                                initialPageName: 'chatting_page',
                                parameterData: {
                                  'participantsimages':
                                      _model.chatsref?.participantimages,
                                  'participantnames':
                                      _model.chatsref?.participantsnames,
                                  'chatID': _model.chatsref?.reference,
                                },
                              );
                              logFirebaseEvent('Button_bottom_sheet');
                              Navigator.pop(context);
                            } else {
                              logFirebaseEvent('Button_backend_call');

                              await ChatinvitationRecord.createDoc(
                                      columnLawyersRecord.author!)
                                  .set(createChatinvitationRecordData(
                                sender: currentUserReference,
                                time: getCurrentTimestamp,
                                chataccepted: false,
                                chatRejected: false,
                                state: 'pending',
                                message: _model.textController.text,
                              ));
                              logFirebaseEvent('Button_backend_call');

                              await columnLawyersRecord.author!.update({
                                ...mapToFirestore(
                                  {
                                    'pendingrequests': FieldValue.arrayUnion(
                                        [currentUserReference]),
                                  },
                                ),
                              });
                              logFirebaseEvent('Button_backend_call');

                              await NotificationsRecord.createDoc(
                                      columnLawyersRecord.author!)
                                  .set(createNotificationsRecordData(
                                type: 'chat',
                                seen: false,
                                person: currentUserReference,
                                time: getCurrentTimestamp,
                                senderdp: currentUserPhoto,
                                message: _model.textController.text,
                              ));
                              logFirebaseEvent(
                                  'Button_trigger_push_notification');
                              triggerPushNotification(
                                notificationTitle: currentUserDisplayName,
                                notificationText: 'Invited you for a chat',
                                notificationImageUrl: currentUserPhoto,
                                notificationSound: 'default',
                                userRefs: [columnLawyersRecord.author!],
                                initialPageName: 'Exp',
                                parameterData: {
                                  'rest': 'Chat',
                                },
                              );
                              logFirebaseEvent('Button_bottom_sheet');
                              Navigator.pop(context);
                            }

                            safeSetState(() {});
                          },
                          text: 'Send Message',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.mukta(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
