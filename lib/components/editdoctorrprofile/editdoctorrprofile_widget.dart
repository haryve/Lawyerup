import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/booking1_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'editdoctorrprofile_model.dart';
export 'editdoctorrprofile_model.dart';

/// create a advanced professional edit profile component consisting all the
/// fields of databse lawyers document in a creative way scrollable and having
/// fields of bio basic information about "I am currently shifting my practice
/// area to expand and include as many subjects in my litigation practice.
///
/// I am completely free to take up work until my new joining. " (string)
/// availability "Morning (8 am to 12 pm), Afternoon (12 pm to 4 pm), Evening
/// (4 pm to 8 pm), Night (8 pm to 12 am)" (string)   city "Delhi" (string)
/// college "O.P Jindal Global University " (string)   current_address "Delhi"
/// (string)   email_address "bhartiayashika@gmail.com" (string)   expertise
/// "Family Lawyer, Criminal Lawyer, Corporate Lawyer" (string)
/// graduation_year 2023 (number)   mobile 8921763489 (number)
/// months_practice 6 (number)   name "Yashika Bhartia" (string)   state
/// "Delhi" (string)
class EditdoctorrprofileWidget extends StatefulWidget {
  const EditdoctorrprofileWidget({
    super.key,
    required this.referencee,
  });

  final DocumentReference? referencee;

  @override
  State<EditdoctorrprofileWidget> createState() =>
      _EditdoctorrprofileWidgetState();
}

class _EditdoctorrprofileWidgetState extends State<EditdoctorrprofileWidget> {
  late EditdoctorrprofileModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditdoctorrprofileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('EDITDOCTORRPROFILE_editdoctorrprofile_ON');
      logFirebaseEvent('editdoctorrprofile_update_component_stat');
      _model.profess = false;
      _model.bank = false;
      _model.basic = false;
      safeSetState(() {});
    });

    _model.nameFocusNode ??= FocusNode();

    _model.textController2 ??= TextEditingController(text: currentUserEmail);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textFieldFocusNode5 ??= FocusNode();

    _model.otherExpertiseFocusNode ??= FocusNode();

    _model.accnameFocusNode ??= FocusNode();

    _model.banknameFocusNode ??= FocusNode();

    _model.accnoFocusNode ??= FocusNode();

    _model.ifscFocusNode ??= FocusNode();

    _model.upiFocusNode ??= FocusNode();

    _model.textFieldFocusNode6 ??= FocusNode();

    _model.textFieldFocusNode7 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<LawyersRecord>(
      stream: LawyersRecord.getDocument(widget.referencee!),
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

        final containerLawyersRecord = snapshot.data!;

        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    thickness: 5.0,
                    indent: 120.0,
                    endIndent: 120.0,
                    color: FlutterFlowTheme.of(context).secondary,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'EDITDOCTORRPROFILE_Icon_dksboaj9_ON_TAP');
                            logFirebaseEvent('Icon_bottom_sheet');
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Text(
                              'Complete Profile',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.openSans(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent2,
                      borderRadius: BorderRadius.circular(60.0),
                    ),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'EDITDOCTORRPROFILE_Stack_u5zck5fe_ON_TAP');
                        logFirebaseEvent('Stack_upload_media_to_firebase');
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          imageQuality: 75,
                          allowPhoto: true,
                          includeDimensions: true,
                          includeBlurHash: true,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          safeSetState(() =>
                              _model.isDataUploading_uploadDataJat = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          var downloadUrls = <String>[];
                          try {
                            showUploadMessage(
                              context,
                              'Uploading file...',
                              showLoading: true,
                            );
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      height: m.dimensions?.height,
                                      width: m.dimensions?.width,
                                      blurHash: m.blurHash,
                                    ))
                                .toList();

                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            ScaffoldMessenger.of(context).hideCurrentSnackBar();
                            _model.isDataUploading_uploadDataJat = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            safeSetState(() {
                              _model.uploadedLocalFile_uploadDataJat =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl_uploadDataJat =
                                  downloadUrls.first;
                            });
                            showUploadMessage(context, 'Success!');
                          } else {
                            safeSetState(() {});
                            showUploadMessage(context, 'Failed to upload data');
                            return;
                          }
                        }

                        if (_model.uploadedFileUrl_uploadDataJat != '') {
                          logFirebaseEvent('Stack_backend_call');

                          await widget.referencee!
                              .update(createLawyersRecordData(
                            lawyerDp: _model.uploadedFileUrl_uploadDataJat,
                          ));
                          logFirebaseEvent('Stack_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            photoUrl: _model.uploadedFileUrl_uploadDataJat,
                          ));
                        } else {
                          return;
                        }
                      },
                      child: Stack(
                        children: [
                          if (containerLawyersRecord.lawyerDp == '')
                            ClipRRect(
                              borderRadius: BorderRadius.circular(60.0),
                              child: Image.asset(
                                'assets/images/Screenshot_2024-11-10_200914.png',
                                width: 120.0,
                                height: 120.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          if (containerLawyersRecord.lawyerDp != '')
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(60.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: Duration(milliseconds: 0),
                                  fadeOutDuration: Duration(milliseconds: 0),
                                  imageUrl: containerLawyersRecord.lawyerDp,
                                  width: 120.0,
                                  height: 120.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (containerLawyersRecord.lawyerDp == '')
                    Text(
                      'Upload Profile Picture',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                  if (_model.isDataUploading_uploadDataJat)
                    Text(
                      'Please Wait...',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                  Text(
                    containerLawyersRecord.name,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'EDITDOCTORRPROFILE_Container_wnqrw6tb_ON');
                        logFirebaseEvent('Container_update_component_state');
                        _model.basic = true;
                        safeSetState(() {});
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          height: 36.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(6.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'My Profile',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          font: GoogleFonts.openSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              if (!_model.basic)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Icon(
                                    Icons.chevron_right,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18.0,
                                  ),
                                ),
                              if (_model.basic)
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'EDITDOCTORRPROFILE_Icon_cdtseoho_ON_TAP');
                                      logFirebaseEvent(
                                          'Icon_update_component_state');
                                      _model.basic = false;
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.chevron_left_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (_model.basic)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Add Basic Information',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  font: GoogleFonts.mukta(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                          ),
                          TextFormField(
                            controller: _model.nameTextController ??=
                                TextEditingController(
                              text: containerLawyersRecord.displayName,
                            ),
                            focusNode: _model.nameFocusNode,
                            onFieldSubmitted: (_) async {
                              logFirebaseEvent(
                                  'EDITDOCTORRPROFILE_Name_ON_TEXTFIELD_SUB');
                              logFirebaseEvent('Name_backend_call');

                              await containerLawyersRecord.reference
                                  .update(createLawyersRecordData(
                                displayName: _model.nameTextController.text,
                              ));
                            },
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Full Name',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
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
                                  .primaryBackground,
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
                            validator: _model.nameTextControllerValidator
                                .asValidator(context),
                          ),
                          TextFormField(
                            controller: _model.textController2,
                            focusNode: _model.textFieldFocusNode1,
                            onFieldSubmitted: (_) async {
                              logFirebaseEvent(
                                  'EDITDOCTORRPROFILE_TextField_wqlvju56_ON');
                              logFirebaseEvent('TextField_backend_call');

                              await containerLawyersRecord.reference
                                  .update(createLawyersRecordData(
                                emailAddress: valueOrDefault<String>(
                                  _model.textController2.text,
                                  'Email',
                                ),
                              ));
                            },
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
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
                                  .primaryBackground,
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
                            validator: _model.textController2Validator
                                .asValidator(context),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  1.0, 0.0, 20.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) =>
                                    FlutterFlowDropDown<String>(
                                  controller: _model.genderValueController ??=
                                      FormFieldController<String>(
                                    _model.genderValue ??= valueOrDefault(
                                        currentUserDocument?.gender, ''),
                                  ),
                                  options: ['Male', 'Female', 'Other'],
                                  onChanged: (val) async {
                                    safeSetState(
                                        () => _model.genderValue = val);
                                    logFirebaseEvent(
                                        'EDITDOCTORRPROFILE_Gender_ON_FORM_WIDGET');
                                    logFirebaseEvent('Gender_backend_call');

                                    await containerLawyersRecord.reference
                                        .update(createLawyersRecordData(
                                      gender: _model.genderValue,
                                    ));
                                  },
                                  width: 158.0,
                                  height: 49.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF14181B),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  hintText: 'Gender',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFF57636C),
                                    size: 15.0,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  elevation: 2.0,
                                  borderColor: Colors.transparent,
                                  borderWidth: 0.0,
                                  borderRadius: 8.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                  isSearchable: false,
                                  isMultiSelect: false,
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            controller: _model.textController3 ??=
                                TextEditingController(
                              text: containerLawyersRecord.phoneNumber,
                            ),
                            focusNode: _model.textFieldFocusNode2,
                            onFieldSubmitted: (_) async {
                              logFirebaseEvent(
                                  'EDITDOCTORRPROFILE_TextField_gjedwzj6_ON');
                              logFirebaseEvent('TextField_backend_call');

                              await containerLawyersRecord.reference
                                  .update(createLawyersRecordData(
                                phoneNumber: valueOrDefault<String>(
                                  _model.textController3.text,
                                  '+91 999999999',
                                ),
                              ));
                            },
                            autofocus: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Mobile Number',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
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
                                  .primaryBackground,
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
                            validator: _model.textController3Validator
                                .asValidator(context),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _model.textController4 ??=
                                      TextEditingController(
                                    text: containerLawyersRecord.city,
                                  ),
                                  focusNode: _model.textFieldFocusNode3,
                                  onFieldSubmitted: (_) async {
                                    logFirebaseEvent(
                                        'EDITDOCTORRPROFILE_TextField_vhl2z632_ON');
                                    logFirebaseEvent('TextField_backend_call');

                                    await containerLawyersRecord.reference
                                        .update(createLawyersRecordData(
                                      city: valueOrDefault<String>(
                                        _model.textController4.text,
                                        'City',
                                      ),
                                    ));
                                  },
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'City',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.mukta(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
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
                                        .primaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.mukta(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  validator: _model.textController4Validator
                                      .asValidator(context),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          FlutterFlowDropDown<String>(
                            controller: _model.stateValueController ??=
                                FormFieldController<String>(
                              _model.stateValue ??=
                                  containerLawyersRecord.state,
                            ),
                            options: [
                              'Andhra Pradesh',
                              'Arunachal Pradesh',
                              'Assam',
                              'Bihar',
                              'Chhattisgarh',
                              'Goa',
                              'Gujarat',
                              'Haryana',
                              'Himachal Pradesh',
                              'Jharkhand',
                              'Karnataka',
                              'Kerala',
                              'Madhya Pradesh',
                              'Maharashtra',
                              'Manipur',
                              'Meghalaya',
                              'Mizoram',
                              'Nagaland',
                              'Odisha',
                              'Punjab',
                              'Rajasthan',
                              'Sikkim',
                              'Tamil Nadu',
                              'Telangana',
                              'Uttar Pradesh',
                              'Uttarakhand',
                              'West Bengal',
                              'Delhi',
                              'gujarat',
                              'rajasthan',
                              'Delhi',
                              'West Bengal',
                              'Andaman and Nicobar Islands',
                              'Chandigarh',
                              'Dadra and Nagar Haveli and Daman and Diu',
                              'Delhi',
                              'Jammu and Kashmir',
                              'Lakshadweep',
                              'Ladakh',
                              'Puducherry'
                            ],
                            onChanged: (val) async {
                              safeSetState(() => _model.stateValue = val);
                              logFirebaseEvent(
                                  'EDITDOCTORRPROFILE_state_ON_FORM_WIDGET_');
                              logFirebaseEvent('state_backend_call');

                              await containerLawyersRecord.reference
                                  .update(createLawyersRecordData(
                                state: valueOrDefault<String>(
                                  _model.stateValue,
                                  'State',
                                ),
                              ));
                            },
                            width: double.infinity,
                            height: 42.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF14181B),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            hintText: 'Select State',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF57636C),
                              size: 15.0,
                            ),
                            fillColor: Colors.white,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 2.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                20.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'EDITDOCTORRPROFILE_Container_ffx398v7_ON');
                        logFirebaseEvent('Container_update_component_state');
                        _model.profess = true;
                        safeSetState(() {});
                      },
                      child: Material(
                        color: Colors.transparent,
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          height: 36.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(6.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Professional Details',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.openSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              if (!_model.profess)
                                Icon(
                                  Icons.chevron_right,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 18.0,
                                ),
                              if (_model.profess)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'EDITDOCTORRPROFILE_Icon_a4tg5rd2_ON_TAP');
                                    logFirebaseEvent(
                                        'Icon_update_component_state');
                                    _model.profess = false;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.chevron_left_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18.0,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (_model.profess)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Professional Details',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                1.0, 0.0, 20.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.expertTypeValueController ??=
                                  FormFieldController<String>(
                                _model.expertTypeValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.experttype,
                                  'Profession',
                                ),
                              ),
                              options: [
                                'Doctor',
                                'Meditation Expert',
                                'Homeopathy',
                                'Ayurveda Expert'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.expertTypeValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_ExpertType_ON_FORM_WI');
                                logFirebaseEvent('ExpertType_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  experttype: valueOrDefault<String>(
                                    _model.expertTypeValue,
                                    'Doctor',
                                  ),
                                ));
                              },
                              width: 158.0,
                              height: 49.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Profession',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        ),
                        if (_model.expertTypeValue == 'Doctor')
                          FlutterFlowDropDown<String>(
                            controller: _model.maincategoryValueController ??=
                                FormFieldController<String>(
                              _model.maincategoryValue ??=
                                  containerLawyersRecord.category,
                            ),
                            options: [
                              'Psychiatrist',
                              'psychologist',
                              'Family Physician',
                              'Pediatrics',
                              'Dermatology',
                              'Cardiology',
                              'Endocrinology',
                              'Gastroenterologist',
                              'Pulmonology',
                              'Neurology',
                              'Orthopedics',
                              'Ear, Nose & Throat (ENT)',
                              'Ophthalmology',
                              'Nephrology',
                              'Rheumatology',
                              'Oncology',
                              'Geriatrics',
                              'Allergy & Immunology',
                              'Dentist',
                              'Gynecology',
                              'Pharmacy',
                              'Nutritionist',
                              'Physiotherapist',
                              'Hematologist',
                              'General Physician',
                              'General Surgery'
                            ],
                            onChanged: (val) async {
                              safeSetState(
                                  () => _model.maincategoryValue = val);
                              logFirebaseEvent(
                                  'EDITDOCTORRPROFILE_maincategory_ON_FORM_');
                              logFirebaseEvent('maincategory_backend_call');

                              await containerLawyersRecord.reference
                                  .update(createLawyersRecordData(
                                category: _model.maincategoryValue,
                              ));
                            },
                            width: double.infinity,
                            height: 56.0,
                            searchTextStyle: FlutterFlowTheme.of(context)
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
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF14181B),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            hintText: 'Speciality',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF57636C),
                              size: 15.0,
                            ),
                            fillColor: Colors.white,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                20.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: true,
                            isMultiSelect: false,
                          ),
                        if (_model.maincategoryValue == 'Family Physician')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.familyphysicianValueController ??=
                                      FormFieldController<String>(
                                _model.familyphysicianValue ??=
                                    containerLawyersRecord.type,
                              ),
                              options: [
                                'First Aid Care',
                                'Women\'s Primary Care',
                                'Pediatric Primary Care',
                                'Adult Primary Care',
                                'Mental Health Specialists',
                                'Health Education & Family Counseling',
                                'Lifestyle & Preventive Coaching',
                                'Preventive Health Specialist',
                                'Chronic Disease Management'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.familyphysicianValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Familyphysician_ON_FO');
                                logFirebaseEvent(
                                    'Familyphysician_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.familyphysicianValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Sub-Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Hematologist')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.hematologistValueController ??=
                                  FormFieldController<String>(
                                _model.hematologistValue ??=
                                    containerLawyersRecord.category,
                              ),
                              options: [
                                'Pediatric Hematologist',
                                'Sickle Cell Specialist',
                                'Thalassemia Specialist',
                                'Hematopathologist',
                                'Immunohematologist',
                                'Bone Marrow Transplant (BMT) Specialist',
                                'Bone Marrow Transplant (BMT) Specialist',
                                'Transfusion Medicine Specialist',
                                'Hemato-Oncologist',
                                'Hematologist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.hematologistValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Hematologist_ON_FORM_');
                                logFirebaseEvent('Hematologist_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.hematologistValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.expertTypeValue == 'Homeopathy')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.homeopathyValueController ??=
                                  FormFieldController<String>(
                                _model.homeopathyValue ??=
                                    containerLawyersRecord.category,
                              ),
                              options: [
                                'MD – Practice of Medicine (Internal Disorders)',
                                'MD – Organon of Medicine & Philosophy',
                                'MD – Repertory',
                                'MD – Materia Medica',
                                'MD – Pediatrics',
                                'MD – Psychiatry'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.homeopathyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Homeopathy_ON_FORM_WI');
                                logFirebaseEvent('Homeopathy_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.homeopathyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.expertTypeValue == 'Ayurveda')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.ayurvedaValueController ??=
                                  FormFieldController<String>(
                                _model.ayurvedaValue ??= valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Kayachikitsa',
                                'Prasuti Tantra & Stri Roga',
                                'Kaumarbhritya',
                                'Shalya Tantra (Surgery)',
                                'Shalakya Tantra',
                                'Manasa Roga',
                                'Panchakarma Specialist'
                              ],
                              onChanged: (val) async {
                                safeSetState(() => _model.ayurvedaValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Ayurveda_ON_FORM_WIDG');
                                logFirebaseEvent('Ayurveda_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.ayurvedaValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Nutritionist')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.nutritionistValueController ??=
                                  FormFieldController<String>(
                                _model.nutritionistValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Clinical Nutritionist',
                                'Pediatric & Maternal Nutritionist',
                                'Sports Nutritionist',
                                'Mental Health Nutritionist',
                                'Weight Management Specialist',
                                'Geriatric Nutritionist',
                                'Pediatric Nutritionist',
                                'Beauty Nutritionist',
                                'Women’s Health Nutritionist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.nutritionistValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Nutritionist_ON_FORM_');
                                logFirebaseEvent('Nutritionist_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.nutritionistValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Pharmacy')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.pharmacyValueController ??=
                                  FormFieldController<String>(
                                _model.pharmacyValue ??= valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Clinical Pharmacist',
                                'Hospital Pharmacist',
                                'Community Pharmacist',
                                'Pharmacologist',
                                'General Medicine'
                              ],
                              onChanged: (val) async {
                                safeSetState(() => _model.pharmacyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Pharmacy_ON_FORM_WIDG');
                                logFirebaseEvent('Pharmacy_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.pharmacyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Gynecology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.gynecologyValueController ??=
                                  FormFieldController<String>(
                                _model.gynecologyValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Obstetrician',
                                'Fertility Specialist',
                                'Gynecologic Oncologist',
                                'Urogynecologist',
                                'Adolescent Gynecologist',
                                'Menopause Specialist',
                                'Fetal Medicine Specialist',
                                'Cosmetic Gynecologist',
                                'Laparoscopic & Hysteroscopic Surgeon',
                                'Embryologist',
                                'Lactation Consultant',
                                'Perinatologist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.gynecologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Gynecology_ON_FORM_WI');
                                logFirebaseEvent('Gynecology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.gynecologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Dentist')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dentistValueController ??=
                                  FormFieldController<String>(
                                _model.dentistValue ??= valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Public Health Dentist',
                                'Orthodontist',
                                'Pediatric Dentist',
                                'Prosthodontist',
                                'Periodontist',
                                'Oral & Maxillofacial Surgeon',
                                'Oral Medicine & Radiologist',
                                'Oral Pathologist',
                                'Root Canal Specialist',
                                'Cosmetic Dentist'
                              ],
                              onChanged: (val) async {
                                safeSetState(() => _model.dentistValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Dentist_ON_FORM_WIDGE');
                                logFirebaseEvent('Dentist_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.dentistValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Allergy & Immunology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.allergyImmunologyValueController ??=
                                      FormFieldController<String>(
                                _model.allergyImmunologyValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Clinical Immunologist',
                                'Food Allergy Specialist',
                                'Drug Allergy Specialist',
                                'Skin Allergy Expert',
                                'Respiratory Allergy Specialist',
                                'Pediatric Allergist & Immunologist',
                                'Immunotherapy Specialist',
                                'ENT-Allergy Specialist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.allergyImmunologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_AllergyImmunology_ON_');
                                logFirebaseEvent(
                                    'AllergyImmunology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.allergyImmunologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Geriatrics')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.geriatricsValueController ??=
                                  FormFieldController<String>(
                                _model.geriatricsValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Geriatric Neurology',
                                'Geriatric Cardiology',
                                'Geriatric Pharmacology',
                                'Geriatric Orthopedics',
                                'Geriatric Oncology',
                                'Geriatric Psychiatry',
                                'Palliative & End-of-Life Care',
                                'Geriatric Pulmonologist ',
                                'Geriatric Nephrologist '
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.geriatricsValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Geriatrics_ON_FORM_WI');
                                logFirebaseEvent('Geriatrics_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.geriatricsValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Oncology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.oncologyValueController ??=
                                  FormFieldController<String>(
                                _model.oncologyValue ??= valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Medical Oncologist',
                                'Surgical Oncologist',
                                'Radiation Oncologist',
                                'Hemato-Oncologist',
                                'Pediatric Oncologist',
                                'Neuro-Oncologist',
                                'Gynecologic Oncologist',
                                'Preventive & Genetic Oncologist',
                                'Ocular (Eye) Oncologist',
                                'Palliative Care Oncologist'
                              ],
                              onChanged: (val) async {
                                safeSetState(() => _model.oncologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Oncology_ON_FORM_WIDG');
                                logFirebaseEvent('Oncology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.oncologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Rheumatology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.rheumatologyValueController ??=
                                  FormFieldController<String>(
                                _model.rheumatologyValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Pediatric Rheumatologist',
                                'Clinical Immunologist',
                                'Musculoskeletal Pain & Soft Tissue Specialist',
                                'Vasculitis Specialist',
                                'Connective Tissue Disease Expert',
                                'Metabolic Bone Disease Specialist',
                                'Pain Management Specialist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.rheumatologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Rheumatology_ON_FORM_');
                                logFirebaseEvent('Rheumatology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.rheumatologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Nephrology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.nephrologyValueController ??=
                                  FormFieldController<String>(
                                _model.nephrologyValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Nephrologists',
                                'Kidney Stone Specialist',
                                'Pediatric Specialist',
                                'Dialysis Specialist',
                                'Diabetic Specialist',
                                'Glomerular Disease Specialist',
                                'Hypertension Specialist',
                                'Transplant Specialist',
                                'Renal Transplant Specialist',
                                'Electrolyte & Fluid Balance Expert'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.nephrologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Nephrology_ON_FORM_WI');
                                logFirebaseEvent('Nephrology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.nephrologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Ophthalmology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.ophthalmologyValueController ??=
                                      FormFieldController<String>(
                                _model.ophthalmologyValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Cornea Specialist',
                                'Cataract & Refractive Surgeon',
                                'Pediatric Ophthalmologist',
                                'Neuro-Ophthalmologist',
                                'Retina & Vitreous Specialist',
                                'Glaucoma Specialist',
                                'Oculoplasty & Orbit Surgeon',
                                'Uvea Specialist (Uveitis Expert)',
                                'Low Vision & Rehabilitation Specialist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.ophthalmologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Ophthalmology_ON_FORM');
                                logFirebaseEvent('Ophthalmology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.ophthalmologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Orthopedics')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.orthopedicsValueController ??=
                                  FormFieldController<String>(
                                _model.orthopedicsValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Pediatric Orthopedic',
                                'Joint Replacement',
                                'Trauma and Fracture Specialist',
                                'Spine Surgeon',
                                'Sports Injury  Specialist',
                                'Orthopedic Oncologist',
                                'Orthopedic Rheumatologist',
                                'Limb Reconstruction & Deformity Correction Specialist',
                                'Hand & Microvascular Surgeon'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.orthopedicsValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Orthopedics_ON_FORM_W');
                                logFirebaseEvent('Orthopedics_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.orthopedicsValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Neurology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.neurologyValueController ??=
                                  FormFieldController<String>(
                                _model.neurologyValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Epileptologist',
                                'Stroke Specialist',
                                'Pediatric Neurologist',
                                'Neurogeneticist',
                                'Neuromuscular Specialist',
                                'Sleep Neurologist',
                                'Movement Disorder Specialist',
                                'Neuroimmunologist (MS) Specialist',
                                'Neurocritical Care Specialist',
                                'Cognitive & Behavioral Neurologist'
                              ],
                              onChanged: (val) async {
                                safeSetState(() => _model.neurologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Neurology_ON_FORM_WID');
                                logFirebaseEvent('Neurology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.neurologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Pulmonology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.pulmonologistValueController ??=
                                      FormFieldController<String>(
                                _model.pulmonologistValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Interventional Pulmonologist',
                                'Critical Care Pulmonologist (Intensivist)',
                                'Pediatric Pulmonologist',
                                'Pediatric Pulmonologist',
                                'Allergist/Immunologist',
                                'Tuberculosis (TB)  Specialist',
                                'Pulmonary Hypertension Specialist',
                                'Interstitial Lung Disease (ILD) Specialist',
                                'Geriartics Pulmonologist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.pulmonologistValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Pulmonologist_ON_FORM');
                                logFirebaseEvent('Pulmonologist_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.pulmonologistValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Gastroenterologist')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.gastroenterologistValueController ??=
                                      FormFieldController<String>(
                                _model.gastroenterologistValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Interventional Gastroenterologist',
                                'Pediatric Gastroenterologist',
                                'Hepatologist (Liver Specialist)',
                                'GI Oncologist',
                                'Inflammatory Bowel Disease (IBD) Specialist',
                                'GI Surgeon',
                                'Motility & Functional GI Disorder Specialist',
                                'Neuro-Gastroenterologist',
                                'Therapeutic Gastroenterologist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.gastroenterologistValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Gastroenterologist_ON');
                                logFirebaseEvent(
                                    'Gastroenterologist_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.gastroenterologistValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Endocrinology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.endocrinologyValueController ??=
                                      FormFieldController<String>(
                                _model.endocrinologyValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Andrologist',
                                'Sexologist',
                                'Neuroendocrinologist',
                                'Bone & Calcium Metabolism Specialist',
                                'Pediatric Endocrinologist',
                                'Reproductive Endocrinologist',
                                'Adrenal Gland Specialist',
                                'Urologist',
                                'Genital Dermatology',
                                'Thyroid Specialist',
                                'Diabetologist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.endocrinologyValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Endocrinology_ON_FORM');
                                logFirebaseEvent('Endocrinology_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.endocrinologyValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Cardiology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.cardiologistValueController ??=
                                  FormFieldController<String>(
                                _model.cardiologistValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Interventional Cardiologist',
                                'Pediatric Cardiologist',
                                'Electrophysiologist',
                                'Heart Failure & Transplant Cardiologist',
                                'Preventive Cardiologist',
                                'Cardiac Imaging Specialist',
                                'Cardiac Rehabilitation Specialist',
                                'Cardiothoracic Surgeon (CTVS)'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.cardiologistValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Cardiologist_ON_FORM_');
                                logFirebaseEvent('Cardiologist_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.cardiologistValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Dermatology')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.dermatologistValueController ??=
                                      FormFieldController<String>(
                                _model.dermatologistValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Cosmetic Dermatologist',
                                'Dermatopathologist',
                                'Dermato-Venereologist',
                                'Pediatric Dermatologist',
                                'Trichologist',
                                'Immunodermatologist',
                                'Dermatosurgeon',
                                'Nail Disease Specialist'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.dermatologistValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_Dermatologist_ON_FORM');
                                logFirebaseEvent('Dermatologist_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.dermatologistValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Pediatrics')
                          FlutterFlowDropDown<String>(
                            controller: _model.pediatricValueController ??=
                                FormFieldController<String>(
                              _model.pediatricValue ??= valueOrDefault<String>(
                                containerLawyersRecord.type,
                                'Specialty',
                              ),
                            ),
                            options: [
                              'Pediatric Pulmonologist',
                              'Pediatric Cardiologist',
                              'Pediatric Neurologist',
                              'Pediatric Geneticist',
                              'Pediatric Gastroenterology',
                              'Pediatric Orthopedics',
                              'Pediatric Oncology',
                              'Pediatric Endocrinology',
                              'Neonatology',
                              'Pediatric Nephrology',
                              'Pediatric Infectious Diseases',
                              'Pediatric Ophthalmology',
                              'Pediatric ENT',
                              'Developmental Pediatrics',
                              'Pediatric Surgery',
                              'Pediatric Dentistry'
                            ],
                            onChanged: (val) async {
                              safeSetState(() => _model.pediatricValue = val);
                              logFirebaseEvent(
                                  'EDITDOCTORRPROFILE_Pediatric_ON_FORM_WID');
                              logFirebaseEvent('Pediatric_backend_call');

                              await containerLawyersRecord.reference
                                  .update(createLawyersRecordData(
                                type: _model.pediatricValue,
                              ));
                            },
                            width: double.infinity,
                            height: 56.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF14181B),
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                            hintText: 'Specialty',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Color(0xFF57636C),
                              size: 15.0,
                            ),
                            fillColor: Colors.white,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                20.0, 4.0, 12.0, 4.0),
                            hidesUnderline: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        if (_model.maincategoryValue ==
                            'Ear, Nose & Throat (ENT)')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.entValueController ??=
                                  FormFieldController<String>(
                                _model.entValue ??= valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Ear Specialist',
                                'Nose Specialist',
                                'Throat Specialist',
                                'Head & Neck Surgeon',
                                'Sleep Apnea & Snoring Specialist',
                                'ENT Audiologist',
                                'Pediatric ENT Specialist',
                                'Allergy ENT Specialist',
                                'Geriartics ENT Specialist'
                              ],
                              onChanged: (val) async {
                                safeSetState(() => _model.entValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_ENT_ON_FORM_WIDGET_SE');
                                logFirebaseEvent('ENT_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.entValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (_model.maincategoryValue == 'Psychiatrist')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.psychiatristcatValueController ??=
                                      FormFieldController<String>(
                                _model.psychiatristcatValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Adult Psychiatry',
                                'Child and Adolescent Psychiatry',
                                'Geriatric Psychiatry',
                                'Forensic Psychiatry',
                                'Addiction Psychiatry',
                                'Consultation Psychiatry',
                                'Emergency Psychiatry',
                                'Perinatal Psychiatrist',
                                'General consultation'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.psychiatristcatValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_psychiatristcat_ON_FO');
                                logFirebaseEvent(
                                    'psychiatristcat_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.psychiatristcatValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        if (containerLawyersRecord.experttype == 'psychologist')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: FlutterFlowDropDown<String>(
                              controller:
                                  _model.psychologistcatValueController ??=
                                      FormFieldController<String>(
                                _model.psychologistcatValue ??=
                                    valueOrDefault<String>(
                                  containerLawyersRecord.type,
                                  'Specialty',
                                ),
                              ),
                              options: [
                                'Aviation Psychologists',
                                'Bio psychologists',
                                'Clinical Psychologists',
                                'Cognitive Psychologists',
                                'Community Psychologists',
                                'Comparative Psychologists',
                                'Consumer Psychologists',
                                'Counseling Psychologists',
                                'Cross-Cultural Psychologists',
                                'Developmental Psychologists',
                                'Educational Psychologists',
                                'Engineering Psychologists',
                                'Environmental Psychologists',
                                'Forensic Psychologists',
                                'Health Psychologists',
                                'Industrial-Organizational Psychologists',
                                'Military Psychologists',
                                'Personality Psychologists',
                                'School Psychologists',
                                'Social Psychologists',
                                'General consultation'
                              ],
                              onChanged: (val) async {
                                safeSetState(
                                    () => _model.psychologistcatValue = val);
                                logFirebaseEvent(
                                    'EDITDOCTORRPROFILE_psychologistcat_ON_FO');
                                logFirebaseEvent(
                                    'psychologistcat_backend_call');

                                await containerLawyersRecord.reference
                                    .update(createLawyersRecordData(
                                  type: _model.psychologistcatValue,
                                ));
                              },
                              width: double.infinity,
                              height: 56.0,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF14181B),
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                              hintText: 'Specialty',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Color(0xFF57636C),
                                size: 15.0,
                              ),
                              fillColor: Colors.white,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 4.0, 12.0, 4.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                          ),
                        TextFormField(
                          controller: _model.textController5 ??=
                              TextEditingController(
                            text: containerLawyersRecord.college,
                          ),
                          focusNode: _model.textFieldFocusNode4,
                          onFieldSubmitted: (_) async {
                            logFirebaseEvent(
                                'EDITDOCTORRPROFILE_TextField_oxy981xf_ON');
                            logFirebaseEvent('TextField_backend_call');

                            await containerLawyersRecord.reference
                                .update(createLawyersRecordData(
                              college: _model.textController5.text,
                            ));
                          },
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Education',
                            hintText: 'Education',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.mukta(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
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
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
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
                          validator: _model.textController5Validator
                              .asValidator(context),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 12.0),
                                child: TextFormField(
                                  controller: _model.textController6 ??=
                                      TextEditingController(
                                    text: containerLawyersRecord.practicetime
                                        .toString(),
                                  ),
                                  focusNode: _model.textFieldFocusNode5,
                                  autofocus: false,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Years of Practice',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.mukta(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
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
                                        .primaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.mukta(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  keyboardType: TextInputType.number,
                                  validator: _model.textController6Validator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  if (_model.profess)
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                if (_model.maincategoryValue == ' Psychiatrist')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      'Psychiatrist Expertise',
                                      style: FlutterFlowTheme.of(context)
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
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
                                    ),
                                  ),
                                if (_model.maincategoryValue == 'Psychiatrist')
                                  FlutterFlowCheckboxGroup(
                                    options: [
                                      'Adult Psychiatry',
                                      'Child and Adolescent Psychiatry',
                                      'Geriatric Psychiatry',
                                      'Addiction Psychiatry',
                                      'Forensic Psychiatry',
                                      'Consultation Psychiatry',
                                      'Emergency Psychiatry',
                                      'Perinatal Psychiatrist',
                                      'LGBTQ Counseling',
                                      'Personality Disorder',
                                      'Trauma counseling',
                                      'Employee counseling',
                                      'Relationships Counseling',
                                      'Marital counseling',
                                      'Student counseling'
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(() =>
                                          _model.checkboxpsychValues = val);
                                      logFirebaseEvent(
                                          'EDITDOCTORRPROFILE_Checkboxpsych_ON_FORM');
                                      logFirebaseEvent(
                                          'Checkboxpsych_backend_call');

                                      await containerLawyersRecord.reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'expertiselist':
                                                _model.checkboxpsychValues,
                                          },
                                        ),
                                      });
                                    },
                                    controller:
                                        _model.checkboxpsychValueController ??=
                                            FormFieldController<List<String>>(
                                      [],
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    checkColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    checkboxBorderColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.mukta(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
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
                                    itemPadding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 0.0, 0.0, 0.0),
                                    checkboxBorderRadius:
                                        BorderRadius.circular(4.0),
                                    initialized:
                                        _model.checkboxpsychValues != null,
                                  ),
                                if (_model.maincategoryValue == 'psychologist')
                                  Text(
                                    'Psychologist Expertise',
                                    style: FlutterFlowTheme.of(context)
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                                  ),
                                if (_model.maincategoryValue == 'psychologist')
                                  FlutterFlowCheckboxGroup(
                                    options: [
                                      'Parenting counseling',
                                      'Relationship counseling',
                                      'Student counseling',
                                      'Drug addiction',
                                      'LGBTQ counseling',
                                      'Marital counseling',
                                      'Emergency Psychiatry',
                                      'Gambling addiction',
                                      'Trauma counseling',
                                      'Employee counseling',
                                      'Depression Specialist',
                                      'Eating Disorder',
                                      'Stress counseling',
                                      'Phobia Counseling',
                                      'Mood swings counselling'
                                    ],
                                    onChanged: (val) async {
                                      safeSetState(() =>
                                          _model.checkpsychologistValues = val);
                                      logFirebaseEvent(
                                          'EDITDOCTORRPROFILE_checkpsychologist_ON_');
                                      logFirebaseEvent(
                                          'checkpsychologist_backend_call');

                                      await containerLawyersRecord.reference
                                          .update({
                                        ...mapToFirestore(
                                          {
                                            'expertiselist':
                                                _model.checkpsychologistValues,
                                          },
                                        ),
                                      });
                                    },
                                    controller: _model
                                            .checkpsychologistValueController ??=
                                        FormFieldController<List<String>>(
                                      [],
                                    ),
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    checkColor:
                                        FlutterFlowTheme.of(context).info,
                                    checkboxBorderColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.mukta(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
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
                                    itemPadding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 0.0, 0.0, 0.0),
                                    checkboxBorderRadius:
                                        BorderRadius.circular(4.0),
                                    initialized:
                                        _model.checkpsychologistValues != null,
                                  ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 10.0),
                                    child: Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: Text(
                                                'Specify any other ',
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
                                                      color: Color(0xFF2B2828),
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
                                            Expanded(
                                              child: Container(
                                                width: 200.0,
                                                child: TextFormField(
                                                  controller: _model
                                                          .otherExpertiseTextController ??=
                                                      TextEditingController(
                                                    text: containerLawyersRecord
                                                        .expertise,
                                                  ),
                                                  focusNode: _model
                                                      .otherExpertiseFocusNode,
                                                  onFieldSubmitted: (_) async {
                                                    logFirebaseEvent(
                                                        'EDITDOCTORRPROFILE_OtherExpertise_ON_TEX');
                                                    logFirebaseEvent(
                                                        'OtherExpertise_backend_call');

                                                    await containerLawyersRecord
                                                        .reference
                                                        .update(
                                                            createLawyersRecordData(
                                                      expertise: _model
                                                          .otherExpertiseTextController
                                                          .text,
                                                    ));
                                                  },
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.mukta(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintText: 'Expertise Field',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.mukta(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
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
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  validator: _model
                                                      .otherExpertiseTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
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
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'EDITDOCTORRPROFILE_Container_fxwhil1x_ON');
                              logFirebaseEvent(
                                  'Container_update_component_state');
                              _model.bank = true;
                              safeSetState(() {});
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 1.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Container(
                                height: 36.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(6.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Bank Details',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              font: GoogleFonts.openSans(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    if (!_model.bank)
                                      Icon(
                                        Icons.chevron_right,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 18.0,
                                      ),
                                    if (_model.bank)
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'EDITDOCTORRPROFILE_Icon_ipcftzwr_ON_TAP');
                                          logFirebaseEvent(
                                              'Icon_update_component_state');
                                          _model.bank = false;
                                          safeSetState(() {});
                                        },
                                        child: Icon(
                                          Icons.chevron_left_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (_model.bank)
                          Expanded(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: StreamBuilder<List<BankRecord>>(
                                stream: queryBankRecord(
                                  queryBuilder: (bankRecord) =>
                                      bankRecord.where(
                                    'user',
                                    isEqualTo: currentUserReference,
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
                                          color: Color(0x4D03A9F4),
                                          size: 20.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<BankRecord> columnBankRecordList =
                                      snapshot.data!;
                                  final columnBankRecord =
                                      columnBankRecordList.isNotEmpty
                                          ? columnBankRecordList.first
                                          : null;

                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(12.0),
                                        child: Text(
                                          'Add Bank Account Details',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                font: GoogleFonts.openSans(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  'Account Holder Name',
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .accnameTextController ??=
                                                      TextEditingController(
                                                    text: columnBankRecord
                                                        ?.accountHolderName,
                                                  ),
                                                  focusNode:
                                                      _model.accnameFocusNode,
                                                  autofocus: false,
                                                  textCapitalization:
                                                      TextCapitalization.words,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'Name',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.mukta(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.mukta(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                                  minLines: 1,
                                                  validator: _model
                                                      .accnameTextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .words),
                                                        );
                                                      }),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  'Bank Name',
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .banknameTextController ??=
                                                      TextEditingController(
                                                    text: columnBankRecord
                                                        ?.bankName,
                                                  ),
                                                  focusNode:
                                                      _model.banknameFocusNode,
                                                  autofocus: false,
                                                  textCapitalization:
                                                      TextCapitalization.words,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'State Bank of India',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.mukta(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
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
                                                  minLines: 1,
                                                  validator: _model
                                                      .banknameTextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .words),
                                                        );
                                                      }),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  'Account Number',
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .accnoTextController ??=
                                                      TextEditingController(
                                                    text: columnBankRecord
                                                        ?.accountNumber,
                                                  ),
                                                  focusNode:
                                                      _model.accnoFocusNode,
                                                  autofocus: false,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: '000000000000',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.mukta(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
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
                                                  minLines: 1,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .accnoTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  'IFSC Code',
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .ifscTextController ??=
                                                      TextEditingController(
                                                    text: columnBankRecord
                                                        ?.ifscCode,
                                                  ),
                                                  focusNode:
                                                      _model.ifscFocusNode,
                                                  autofocus: false,
                                                  textCapitalization:
                                                      TextCapitalization
                                                          .characters,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'SBIN00540',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.mukta(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
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
                                                  minLines: 1,
                                                  validator: _model
                                                      .ifscTextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .characters),
                                                        );
                                                      }),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  'UPI ID',
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 8.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .upiTextController ??=
                                                      TextEditingController(
                                                    text: columnBankRecord?.upi,
                                                  ),
                                                  focusNode:
                                                      _model.upiFocusNode,
                                                  autofocus: false,
                                                  textCapitalization:
                                                      TextCapitalization
                                                          .characters,
                                                  textInputAction:
                                                      TextInputAction.done,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText: 'abs@paytm',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.mukta(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: FlutterFlowTheme
                                                            .of(context)
                                                        .secondaryBackground,
                                                  ),
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
                                                  minLines: 1,
                                                  validator: _model
                                                      .upiTextControllerValidator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .characters),
                                                        );
                                                      }),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(SizedBox(height: 12.0)),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'EDITDOCTORRPROFILE_COMP_SAVE_BTN_ON_TAP');
                                            if (currentUserDocument?.bankrf ==
                                                null) {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              var bankRecordReference =
                                                  BankRecord.collection.doc();
                                              await bankRecordReference
                                                  .set(createBankRecordData(
                                                accountHolderName: _model
                                                    .accnameTextController.text,
                                                accountNumber: _model
                                                    .accnoTextController.text,
                                                ifscCode: _model
                                                    .ifscTextController.text,
                                                bankName: _model
                                                    .banknameTextController
                                                    .text,
                                                user: currentUserReference,
                                                upi: _model
                                                    .upiTextController.text,
                                              ));
                                              _model.ban = BankRecord
                                                  .getDocumentFromData(
                                                      createBankRecordData(
                                                        accountHolderName: _model
                                                            .accnameTextController
                                                            .text,
                                                        accountNumber: _model
                                                            .accnoTextController
                                                            .text,
                                                        ifscCode: _model
                                                            .ifscTextController
                                                            .text,
                                                        bankName: _model
                                                            .banknameTextController
                                                            .text,
                                                        user:
                                                            currentUserReference,
                                                        upi: _model
                                                            .upiTextController
                                                            .text,
                                                      ),
                                                      bankRecordReference);
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await currentUserReference!
                                                  .update(createUsersRecordData(
                                                bankrf: _model.ban?.reference,
                                              ));
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await currentUserDocument!.bankrf!
                                                  .update(createBankRecordData(
                                                accountHolderName: _model
                                                    .accnameTextController.text,
                                                accountNumber: _model
                                                    .accnoTextController.text,
                                                ifscCode: _model
                                                    .ifscTextController.text,
                                                bankName: _model
                                                    .banknameTextController
                                                    .text,
                                                upi: _model
                                                    .upiTextController.text,
                                              ));
                                            }

                                            safeSetState(() {});
                                          },
                                          text: 'Save',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.mukta(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color: Colors.white,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 16.0)),
                                  );
                                },
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' Set Availability',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: FlutterFlowCheckboxGroup(
                                options: [
                                  'Morning (8 am to 12 pm)',
                                  'Afternoon (12 pm to 4 pm)',
                                  'Evening (4 pm to 8 pm)',
                                  'Night (8 pm to 12 am)'
                                ],
                                onChanged: (val) async {
                                  safeSetState(
                                      () => _model.availaibility1Values = val);
                                  logFirebaseEvent(
                                      'EDITDOCTORRPROFILE_Availaibility1_ON_FOR');
                                  logFirebaseEvent(
                                      'Availaibility1_backend_call');

                                  await containerLawyersRecord.reference
                                      .update({
                                    ...mapToFirestore(
                                      {
                                        'availaibilitylist':
                                            _model.availaibility1Values,
                                      },
                                    ),
                                  });
                                },
                                controller:
                                    _model.availaibility1ValueController ??=
                                        FormFieldController<List<String>>(
                                  [],
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).accent2,
                                checkColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                checkboxBorderColor:
                                    FlutterFlowTheme.of(context).accent2,
                                textStyle: FlutterFlowTheme.of(context)
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
                                itemPadding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                                checkboxBorderRadius:
                                    BorderRadius.circular(4.0),
                                initialized:
                                    _model.availaibility1Values != null,
                              ),
                            ),
                            wrapWithModel(
                              model: _model.booking1Model,
                              updateCallback: () => safeSetState(() {}),
                              child: Booking1Widget(
                                drref: widget.referencee!,
                              ),
                            ),
                            Text(
                              'Languages',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                            ),
                            if (_model.stateValue != null &&
                                _model.stateValue != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: FlutterFlowCheckboxGroup(
                                  options: functions
                                      .getLanguagesForState(
                                          valueOrDefault<String>(
                                        _model.stateValue,
                                        'Haryana',
                                      ))!
                                      .toList(),
                                  onChanged: (val) async {
                                    safeSetState(
                                        () => _model.availaibilityValues = val);
                                    logFirebaseEvent(
                                        'EDITDOCTORRPROFILE_Availaibility_ON_FORM');
                                    logFirebaseEvent(
                                        'Availaibility_backend_call');

                                    await widget.referencee!.update({
                                      ...mapToFirestore(
                                        {
                                          'Languages':
                                              _model.availaibilityValues,
                                        },
                                      ),
                                    });
                                  },
                                  controller:
                                      _model.availaibilityValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  activeColor:
                                      FlutterFlowTheme.of(context).accent2,
                                  checkColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  checkboxBorderColor:
                                      FlutterFlowTheme.of(context).accent2,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.mukta(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
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
                                  itemPadding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 30.0, 0.0),
                                  checkboxBorderRadius:
                                      BorderRadius.circular(4.0),
                                  initialized:
                                      _model.availaibilityValues != null,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Bio',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      TextFormField(
                        controller: _model.textController13 ??=
                            TextEditingController(
                          text: containerLawyersRecord.about,
                        ),
                        focusNode: _model.textFieldFocusNode6,
                        onFieldSubmitted: (_) async {
                          logFirebaseEvent(
                              'EDITDOCTORRPROFILE_TextField_e8jc7rec_ON');
                          logFirebaseEvent('TextField_backend_call');

                          await containerLawyersRecord.reference
                              .update(createLawyersRecordData(
                            about: _model.textController13.text,
                          ));
                        },
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Please Introduce Yourself here....',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
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
                          fillColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        maxLines: 5,
                        validator: _model.textController13Validator
                            .asValidator(context),
                      ),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Cost Per-Minute Charge',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: TextFormField(
                          controller: _model.textController14 ??=
                              TextEditingController(
                            text:
                                containerLawyersRecord.lawyerCharge.toString(),
                          ),
                          focusNode: _model.textFieldFocusNode7,
                          onFieldSubmitted: (_) async {
                            logFirebaseEvent(
                                'EDITDOCTORRPROFILE_TextField_c6qne8sx_ON');
                            logFirebaseEvent('TextField_backend_call');

                            await containerLawyersRecord.reference
                                .update(createLawyersRecordData(
                              lawyerCharge:
                                  int.tryParse(_model.textController14.text),
                            ));
                          },
                          autofocus: false,
                          textInputAction: TextInputAction.done,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Set Your Own Charge',
                            hintText: '₹15/Min',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.mukta(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
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
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
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
                          maxLength: 3,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          keyboardType: TextInputType.number,
                          validator: _model.textController14Validator
                              .asValidator(context),
                        ),
                      ),
                    ].divide(SizedBox(height: 16.0)),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent(
                            'EDITDOCTORRPROFILE_UPDATE_CHANGES_BTN_ON');
                        currentUserLocationValue = await getCurrentUserLocation(
                            defaultLocation: LatLng(0.0, 0.0));
                        if (containerLawyersRecord.lawyerDp != '') {
                          logFirebaseEvent('Button_backend_call');

                          await widget.referencee!
                              .update(createLawyersRecordData(
                            name: valueOrDefault<String>(
                              _model.nameTextController.text,
                              'Doctor',
                            ),
                            bio: valueOrDefault<String>(
                              _model.textController13.text,
                              'Caremeez',
                            ),
                            uid: valueOrDefault<String>(
                              currentUserUid,
                              '1234568789',
                            ),
                            availability:
                                _model.availaibility1Values?.firstOrNull,
                            category: _model.maincategoryValue,
                            type: () {
                              if (_model.maincategoryValue == 'Psychiatrist') {
                                return _model.psychiatristcatValue;
                              } else if (_model.maincategoryValue ==
                                  'Psychologist') {
                                return _model.psychologistcatValue;
                              } else if (_model.maincategoryValue ==
                                  'Ear, Nose & Throat (ENT)') {
                                return _model.entValue;
                              } else if (_model.maincategoryValue ==
                                  'Pediatric') {
                                return _model.pediatricValue;
                              } else if (_model.maincategoryValue ==
                                  'Dermatology') {
                                return _model.dermatologistValue;
                              } else if (_model.maincategoryValue ==
                                  'Cardiology') {
                                return _model.cardiologistValue;
                              } else if (_model.maincategoryValue ==
                                  'Endocrinology') {
                                return _model.endocrinologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Gastroenterologist') {
                                return _model.gastroenterologistValue;
                              } else if (_model.maincategoryValue ==
                                  'Pulmonology') {
                                return _model.pulmonologistValue;
                              } else if (_model.maincategoryValue ==
                                  'Neurology') {
                                return _model.neurologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Orthopedics') {
                                return _model.orthopedicsValue;
                              } else if (_model.maincategoryValue ==
                                  'Ophthalmology') {
                                return _model.ophthalmologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Nephrology') {
                                return _model.nephrologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Rheumatology') {
                                return _model.rheumatologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Oncology') {
                                return _model.oncologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Geriatrics') {
                                return _model.geriatricsValue;
                              } else if (_model.maincategoryValue ==
                                  'Allergy & Immunology') {
                                return _model.allergyImmunologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Gynecology') {
                                return _model.gynecologyValue;
                              } else if (_model.maincategoryValue ==
                                  'Dentist') {
                                return _model.dentistValue;
                              } else if (_model.maincategoryValue ==
                                  'Pharmacy') {
                                return _model.pharmacyValue;
                              } else if (_model.maincategoryValue ==
                                  'Nutritionist') {
                                return _model.nutritionistValue;
                              } else if (_model.maincategoryValue ==
                                  'Homeopathy') {
                                return _model.familyphysicianValue;
                              } else if (_model.maincategoryValue ==
                                  'Ayurveda') {
                                return _model.ayurvedaValue;
                              } else if (_model.maincategoryValue ==
                                  'Family Physician') {
                                return _model.familyphysicianValue;
                              } else {
                                return 'General Public';
                              }
                            }(),
                            author: currentUserReference,
                            callref: currentUserDocument?.calls,
                            usercallmanageref:
                                currentUserDocument?.usercallmanagement,
                            geoLocation: currentUserLocationValue,
                            lawyerCharge: containerLawyersRecord.lawyerCharge,
                            displayName: valueOrDefault<String>(
                              _model.nameTextController.text,
                              'Doctor',
                            ),
                          ));
                          logFirebaseEvent('Button_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            photoUrl: containerLawyersRecord.lawyerDp,
                            displayName: valueOrDefault<String>(
                              containerLawyersRecord.displayName,
                              'Doctor',
                            ),
                          ));
                          logFirebaseEvent('Button_navigate_to');

                          context.pushNamed(DoctorprofileadminWidget.routeName);
                        } else {
                          logFirebaseEvent('Button_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please Upload a Profile Pic',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                        }
                      },
                      text: 'Update Changes',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 54.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).accent2,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.mukta(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 8.0,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
