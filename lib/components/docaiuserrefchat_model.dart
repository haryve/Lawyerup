import '/flutter_flow/flutter_flow_util.dart';
import 'docaiuserrefchat_widget.dart' show DocaiuserrefchatWidget;
import 'package:flutter/material.dart';

class DocaiuserrefchatModel extends FlutterFlowModel<DocaiuserrefchatWidget> {
  ///  Local state fields for this component.

  bool refrseh = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to Customerhelp] action in Button widget.
  String? userdocrelation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
