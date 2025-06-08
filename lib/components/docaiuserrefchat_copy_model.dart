import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'docaiuserrefchat_copy_widget.dart' show DocaiuserrefchatCopyWidget;
import 'package:flutter/material.dart';

class DocaiuserrefchatCopyModel
    extends FlutterFlowModel<DocaiuserrefchatCopyWidget> {
  ///  Local state fields for this component.

  bool refrseh = false;

  List<String> strings = [];
  void addToStrings(String item) => strings.add(item);
  void removeFromStrings(String item) => strings.remove(item);
  void removeAtIndexFromStrings(int index) => strings.removeAt(index);
  void insertAtIndexInStrings(int index, String item) =>
      strings.insert(index, item);
  void updateStringsAtIndex(int index, Function(String) updateFn) =>
      strings[index] = updateFn(strings[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to docfinder] action in Button widget.
  String? rashes;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  Aichat1Record? jhlk;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
