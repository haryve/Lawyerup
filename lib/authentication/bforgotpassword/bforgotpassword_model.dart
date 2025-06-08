import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bforgotpassword_widget.dart' show BforgotpasswordWidget;
import 'package:flutter/material.dart';

class BforgotpasswordModel extends FlutterFlowModel<BforgotpasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddressRecover widget.
  FocusNode? emailAddressRecoverFocusNode;
  TextEditingController? emailAddressRecoverTextController;
  String? Function(BuildContext, String?)?
      emailAddressRecoverTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressRecoverFocusNode?.dispose();
    emailAddressRecoverTextController?.dispose();
  }
}
