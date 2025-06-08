import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doctorslobby_widget.dart' show DoctorslobbyWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class DoctorslobbyModel extends FlutterFlowModel<DoctorslobbyWidget> {
  ///  Local state fields for this page.

  bool audiorecording = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_messageimage = false;
  FFUploadedFile uploadedLocalFile_messageimage =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_messageimage = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
