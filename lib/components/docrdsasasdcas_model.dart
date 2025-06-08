import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'docrdsasasdcas_widget.dart' show DocrdsasasdcasWidget;
import 'package:flutter/material.dart';

class DocrdsasasdcasModel extends FlutterFlowModel<DocrdsasasdcasWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ratingbar component.
  late RatingbarModel ratingbarModel;
  // Model for callbuttonnew component.
  late CallbuttonnewModel callbuttonnewModel;
  // Model for newchatbutton component.
  late NewchatbuttonModel newchatbuttonModel;
  // Model for videocallbutton component.
  late VideocallbuttonModel videocallbuttonModel;

  @override
  void initState(BuildContext context) {
    ratingbarModel = createModel(context, () => RatingbarModel());
    callbuttonnewModel = createModel(context, () => CallbuttonnewModel());
    newchatbuttonModel = createModel(context, () => NewchatbuttonModel());
    videocallbuttonModel = createModel(context, () => VideocallbuttonModel());
  }

  @override
  void dispose() {
    ratingbarModel.dispose();
    callbuttonnewModel.dispose();
    newchatbuttonModel.dispose();
    videocallbuttonModel.dispose();
  }
}
