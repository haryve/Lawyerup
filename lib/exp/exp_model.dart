import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/incomming_call_box/incomming_call_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'exp_widget.dart' show ExpWidget;
import 'package:flutter/material.dart';

class ExpModel extends FlutterFlowModel<ExpWidget> {
  ///  Local state fields for this page.

  DocumentReference? startcall;

  bool recents = false;

  String nav = 'Doc';

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels;
  bool isDataUploading_uploadDataEf9 = false;
  FFUploadedFile uploadedLocalFile_uploadDataEf9 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataEf9 = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for Incomming_call_box component.
  late IncommingCallBoxModel incommingCallBoxModel;

  @override
  void initState(BuildContext context) {
    callbuttonnewModels = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    incommingCallBoxModel = createModel(context, () => IncommingCallBoxModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    callbuttonnewModels.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    incommingCallBoxModel.dispose();
  }

  /// Action blocks.
  Future swipe(BuildContext context) async {}
}
