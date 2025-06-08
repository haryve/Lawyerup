import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'call_screen_widget.dart' show CallScreenWidget;
import 'package:flutter/material.dart';

class CallScreenModel extends FlutterFlowModel<CallScreenWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future timer(BuildContext context) async {
    logFirebaseEvent('timer_action_block');
    await timer(context);
  }
}
