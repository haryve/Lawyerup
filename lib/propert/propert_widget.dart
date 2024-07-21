import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'propert_model.dart';
export 'propert_model.dart';

class PropertWidget extends StatefulWidget {
  const PropertWidget({super.key});

  @override
  State<PropertWidget> createState() => _PropertWidgetState();
}

class _PropertWidgetState extends State<PropertWidget> {
  late PropertModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF488783),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF14181B),
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'On Call',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: Color(0xFF14181B),
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.textController1,
              focusNode: _model.textFieldFocusNode1,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Call ID',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Playfair Display',
                    letterSpacing: 0.0,
                  ),
              validator: _model.textController1Validator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.textController2,
              focusNode: _model.textFieldFocusNode2,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'User_id',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Playfair Display',
                    letterSpacing: 0.0,
                  ),
              validator: _model.textController2Validator.asValidator(context),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 10.0, 8.0, 0.0),
            child: TextFormField(
              controller: _model.textController3,
              focusNode: _model.textFieldFocusNode3,
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'UserName',
                labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Playfair Display',
                    letterSpacing: 0.0,
                  ),
              validator: _model.textController3Validator.asValidator(context),
            ),
          ),
          FFButtonWidget(
            onPressed: () async {
              context.pushNamed(
                'callpage',
                queryParameters: {
                  'callID': serializeParam(
                    _model.textController1.text,
                    ParamType.String,
                  ),
                  'userid': serializeParam(
                    _model.textController2.text,
                    ParamType.String,
                  ),
                  'username': serializeParam(
                    _model.textController3.text,
                    ParamType.String,
                  ),
                }.withoutNulls,
              );
            },
            text: 'Call NOW',
            options: FFButtonOptions(
              height: 40.0,
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0xFF1884D8),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
              elevation: 3.0,
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ].divide(SizedBox(height: 20.0)),
      ),
    );
  }
}
