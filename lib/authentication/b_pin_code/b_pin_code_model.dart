import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'b_pin_code_widget.dart' show BPinCodeWidget;
import 'package:flutter/material.dart';

class BPinCodeModel extends FlutterFlowModel<BPinCodeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  FocusNode? pinCodeFocusNode;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeFocusNode?.dispose();
    pinCodeController?.dispose();
  }
}
