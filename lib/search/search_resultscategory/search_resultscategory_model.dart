import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_resultscategory_widget.dart' show SearchResultscategoryWidget;
import 'package:flutter/material.dart';

class SearchResultscategoryModel
    extends FlutterFlowModel<SearchResultscategoryWidget> {
  ///  Local state fields for this page.

  String? category;

  ///  State fields for stateful widgets in this page.

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels;

  @override
  void initState(BuildContext context) {
    ratingbarModels = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
  }

  @override
  void dispose() {
    ratingbarModels.dispose();
    callbuttonnewModels.dispose();
    newchatbuttonModels.dispose();
    videocallbuttonModels.dispose();
  }
}
