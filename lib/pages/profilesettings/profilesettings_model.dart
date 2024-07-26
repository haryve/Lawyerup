import '/flutter_flow/flutter_flow_util.dart';
import 'profilesettings_widget.dart' show ProfilesettingsWidget;
import 'package:flutter/material.dart';

class ProfilesettingsModel extends FlutterFlowModel<ProfilesettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
