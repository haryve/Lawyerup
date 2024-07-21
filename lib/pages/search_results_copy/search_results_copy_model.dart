import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_results_copy_widget.dart' show SearchResultsCopyWidget;
import 'package:flutter/material.dart';

class SearchResultsCopyModel extends FlutterFlowModel<SearchResultsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<LawyersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
  }
}
