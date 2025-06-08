import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'aichat_widget.dart' show AichatWidget;
import 'package:flutter/material.dart';

class AichatModel extends FlutterFlowModel<AichatWidget> {
  ///  Local state fields for this page.

  bool aiworking = false;

  bool imaggeai = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_uploadDataJep = false;
  FFUploadedFile uploadedLocalFile_uploadDataJep =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataJep = '';

  // Stores action output result for [Backend Call - API (arovia vision)] action in Icon widget.
  ApiCallResponse? docrepCopy;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in IconButton widget.
  ApiCallResponse? aroviareso;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
