import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'videocallbutton_model.dart';
export 'videocallbutton_model.dart';

class VideocallbuttonWidget extends StatefulWidget {
  const VideocallbuttonWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter5,
  });

  final DocumentReference? parameter1;
  final String? parameter2;
  final DocumentReference? parameter3;
  final DocumentReference? parameter5;

  @override
  State<VideocallbuttonWidget> createState() => _VideocallbuttonWidgetState();
}

class _VideocallbuttonWidgetState extends State<VideocallbuttonWidget> {
  late VideocallbuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideocallbuttonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FlutterFlowIconButton(
      borderColor: Colors.transparent,
      borderRadius: 12.0,
      buttonSize: 36.0,
      fillColor: FlutterFlowTheme.of(context).accent2,
      icon: Icon(
        Icons.video_call,
        color: FlutterFlowTheme.of(context).primaryBackground,
        size: 16.0,
      ),
      onPressed: () async {
        logFirebaseEvent('VIDEOCALLBUTTON_videocallbutton_ON_TAP');
      },
    );
  }
}
