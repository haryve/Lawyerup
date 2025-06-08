import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'createpost_widget.dart' show CreatepostWidget;
import 'package:flutter/material.dart';

class CreatepostModel extends FlutterFlowModel<CreatepostWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for fullName1 widget.
  FocusNode? fullName1FocusNode;
  TextEditingController? fullName1TextController;
  String? Function(BuildContext, String?)? fullName1TextControllerValidator;
  // Stores action output result for [Backend Call - API (createChatCompletion)] action in Container widget.
  ApiCallResponse? apiResultmkd;
  // State field(s) for fullName2 widget.
  FocusNode? fullName2FocusNode;
  TextEditingController? fullName2TextController;
  String? Function(BuildContext, String?)? fullName2TextControllerValidator;
  bool isDataUploading_postimageui = false;
  FFUploadedFile uploadedLocalFile_postimageui =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_postimageui = '';

  // State field(s) for fullName3 widget.
  FocusNode? fullName3FocusNode;
  TextEditingController? fullName3TextController;
  String? Function(BuildContext, String?)? fullName3TextControllerValidator;
  bool isDataUploading_postimageuiv = false;
  FFUploadedFile uploadedLocalFile_postimageuiv =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_postimageuiv = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    fullName1FocusNode?.dispose();
    fullName1TextController?.dispose();

    fullName2FocusNode?.dispose();
    fullName2TextController?.dispose();

    fullName3FocusNode?.dispose();
    fullName3TextController?.dispose();
  }
}
