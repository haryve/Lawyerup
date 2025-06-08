import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'supportticket_widget.dart' show SupportticketWidget;
import 'package:flutter/material.dart';

class SupportticketModel extends FlutterFlowModel<SupportticketWidget> {
  ///  Local state fields for this page.

  List<String> czxv = [];
  void addToCzxv(String item) => czxv.add(item);
  void removeFromCzxv(String item) => czxv.remove(item);
  void removeAtIndexFromCzxv(int index) => czxv.removeAt(index);
  void insertAtIndexInCzxv(int index, String item) => czxv.insert(index, item);
  void updateCzxvAtIndex(int index, Function(String) updateFn) =>
      czxv[index] = updateFn(czxv[index]);

  bool stater = false;

  DoccatStruct? dsfg;
  void updateDsfgStruct(Function(DoccatStruct) updateFn) {
    updateFn(dsfg ??= DoccatStruct());
  }

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  bool isDataUploading_uploadData8k0 = false;
  FFUploadedFile uploadedLocalFile_uploadData8k0 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData8k0 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }
}
