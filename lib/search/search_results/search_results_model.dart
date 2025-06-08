import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_results_widget.dart' show SearchResultsWidget;
import 'package:flutter/material.dart';

class SearchResultsModel extends FlutterFlowModel<SearchResultsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<LawyersRecord> simpleSearchResults1 = [];
  List<LawyersRecord> simpleSearchResults2 = [];
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
    textFieldFocusNode?.dispose();

    ratingbarModels.dispose();
    callbuttonnewModels.dispose();
    newchatbuttonModels.dispose();
    videocallbuttonModels.dispose();
  }
}
