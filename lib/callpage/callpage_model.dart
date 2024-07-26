import '/flutter_flow/flutter_flow_util.dart';
import 'callpage_widget.dart' show CallpageWidget;
import 'package:flutter/material.dart';

class CallpageModel extends FlutterFlowModel<CallpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
