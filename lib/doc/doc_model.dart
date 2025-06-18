import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/drawer/drawer_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
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
  // State field(s) for docd widget.
  TabController? docdController;
  int get docdCurrentIndex =>
      docdController != null ? docdController!.index : 0;
  int get docdPreviousIndex =>
      docdController != null ? docdController!.previousIndex : 0;

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<LawyersRecord>? doclistcat;
  bool firestoreRequestCompleted = false;
  String? firestoreRequestLastUniqueKey;
  // State field(s) for Dropexpert widget.
  String? dropexpertValue;
  FormFieldController<String>? dropexpertValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Dropexpert widget.
  List<LawyersRecord>? doclistcatCopy;
  // State field(s) for Dropsort widget.
  String? dropsortValue;
  FormFieldController<String>? dropsortValueController;
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
  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    userimageModel = createModel(context, () => UserimageModel());
    ratingbarModels = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    docdController?.dispose();
    ratingbarModels.dispose();
    callbuttonnewModels.dispose();
    newchatbuttonModels.dispose();
    videocallbuttonModels.dispose();
    drawerModel.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
