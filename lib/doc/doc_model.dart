import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/incomming_call_box/incomming_call_box_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doc_widget.dart' show DocWidget;
import 'package:flutter/material.dart';

class DocModel extends FlutterFlowModel<DocWidget> {
  ///  Local state fields for this page.

  List<LawyersRecord> doclist = [];
  void addToDoclist(LawyersRecord item) => doclist.add(item);
  void removeFromDoclist(LawyersRecord item) => doclist.remove(item);
  void removeAtIndexFromDoclist(int index) => doclist.removeAt(index);
  void insertAtIndexInDoclist(int index, LawyersRecord item) =>
      doclist.insert(index, item);
  void updateDoclistAtIndex(int index, Function(LawyersRecord) updateFn) =>
      doclist[index] = updateFn(doclist[index]);

  bool referesrrh = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Doc widget.
  List<LawyersRecord>? dclist;
  // Model for USERIMAGE component.
  late UserimageModel userimageModel;
  // Model for Incomming_call_box component.
  late IncommingCallBoxModel incommingCallBoxModel;
  // State field(s) for docd widget.
  TabController? docdController;
  int get docdCurrentIndex =>
      docdController != null ? docdController!.index : 0;
  int get docdPreviousIndex =>
      docdController != null ? docdController!.previousIndex : 0;

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<LawyersRecord>? dclist2;

  @override
  void initState(BuildContext context) {
    userimageModel = createModel(context, () => UserimageModel());
    incommingCallBoxModel = createModel(context, () => IncommingCallBoxModel());
    ratingbarModels = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    incommingCallBoxModel.dispose();
    docdController?.dispose();
    ratingbarModels.dispose();
    callbuttonnewModels.dispose();
    newchatbuttonModels.dispose();
    videocallbuttonModels.dispose();
  }
}
