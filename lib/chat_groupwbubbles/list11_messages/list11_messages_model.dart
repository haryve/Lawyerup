import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list11_messages_widget.dart' show List11MessagesWidget;
import 'package:flutter/material.dart';

class List11MessagesModel extends FlutterFlowModel<List11MessagesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
