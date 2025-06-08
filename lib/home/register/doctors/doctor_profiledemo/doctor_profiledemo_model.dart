import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doctor_profiledemo_widget.dart' show DoctorProfiledemoWidget;
import 'package:flutter/material.dart';

class DoctorProfiledemoModel extends FlutterFlowModel<DoctorProfiledemoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for USERIMAGE component.
  late UserimageModel userimageModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for newchatbutton component.
  late NewchatbuttonModel newchatbuttonModel;
  // Model for videocallbutton component.
  late VideocallbuttonModel videocallbuttonModel;
  // Model for callbuttonnew component.
  late CallbuttonnewModel callbuttonnewModel;

  @override
  void initState(BuildContext context) {
    userimageModel = createModel(context, () => UserimageModel());
    newchatbuttonModel = createModel(context, () => NewchatbuttonModel());
    videocallbuttonModel = createModel(context, () => VideocallbuttonModel());
    callbuttonnewModel = createModel(context, () => CallbuttonnewModel());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    newchatbuttonModel.dispose();
    videocallbuttonModel.dispose();
    callbuttonnewModel.dispose();
  }
}
