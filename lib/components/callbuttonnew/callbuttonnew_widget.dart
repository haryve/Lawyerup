import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'callbuttonnew_model.dart';
export 'callbuttonnew_model.dart';

class CallbuttonnewWidget extends StatefulWidget {
  const CallbuttonnewWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter4,
  });

  final DocumentReference? parameter1;
  final String? parameter2;
  final DocumentReference? parameter4;

  @override
  State<CallbuttonnewWidget> createState() => _CallbuttonnewWidgetState();
}

class _CallbuttonnewWidgetState extends State<CallbuttonnewWidget> {
  late CallbuttonnewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CallbuttonnewModel());

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
        Icons.call,
        color: FlutterFlowTheme.of(context).primaryBackground,
        size: 16.0,
      ),
      onPressed: () async {
        logFirebaseEvent('CALLBUTTONNEW_COMP_callbuttonnnew_ON_TAP');
      },
    );
  }
}
