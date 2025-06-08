import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/docrdsasasdcas_widget.dart';
import '/components/incomming_call_box/incomming_call_box_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'psychiatrists_widget.dart' show PsychiatristsWidget;
import 'package:flutter/material.dart';

class PsychiatristsModel extends FlutterFlowModel<PsychiatristsWidget> {
  ///  Local state fields for this page.

  DocumentReference? startcall;

  bool recents = false;

  String? doctor = 'Psychiatristj';

  String? deff;

  bool loaind = true;

  ///  State fields for stateful widgets in this page.

  // Model for USERIMAGE component.
  late UserimageModel userimageModel;
  // Model for Incomming_call_box component.
  late IncommingCallBoxModel incommingCallBoxModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels1;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels1;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels1;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels1;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels2;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels2;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels2;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels2;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels3;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels3;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels3;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels3;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels4;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels4;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels4;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels4;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels5;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels5;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels5;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels5;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels6;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels6;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels6;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels6;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels7;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels7;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels7;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels7;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels8;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels8;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels8;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels8;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels9;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels9;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels9;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels9;
  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels10;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels10;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels10;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels10;

  /// Query cache managers for this widget.

  final _doclistpageManager = FutureRequestManager<List<LawyersRecord>>();
  Future<List<LawyersRecord>> doclistpage({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<LawyersRecord>> Function() requestFn,
  }) =>
      _doclistpageManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDoclistpageCache() => _doclistpageManager.clear();
  void clearDoclistpageCacheKey(String? uniqueKey) =>
      _doclistpageManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    userimageModel = createModel(context, () => UserimageModel());
    incommingCallBoxModel = createModel(context, () => IncommingCallBoxModel());
    ratingbarModels1 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels1 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels1 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels1 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels2 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels2 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels2 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels2 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    docrdsasasdcasModels =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    ratingbarModels3 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels3 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels3 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels3 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels4 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels4 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels4 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels4 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels5 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels5 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels5 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels5 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels6 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels6 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels6 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels6 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels7 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels7 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels7 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels7 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels8 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels8 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels8 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels8 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels9 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels9 = FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels9 = FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels9 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels10 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels10 =
        FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels10 =
        FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels10 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    incommingCallBoxModel.dispose();
    tabBarController?.dispose();
    ratingbarModels1.dispose();
    callbuttonnewModels1.dispose();
    newchatbuttonModels1.dispose();
    videocallbuttonModels1.dispose();
    ratingbarModels2.dispose();
    callbuttonnewModels2.dispose();
    newchatbuttonModels2.dispose();
    videocallbuttonModels2.dispose();
    docrdsasasdcasModels.dispose();
    ratingbarModels3.dispose();
    callbuttonnewModels3.dispose();
    newchatbuttonModels3.dispose();
    videocallbuttonModels3.dispose();
    ratingbarModels4.dispose();
    callbuttonnewModels4.dispose();
    newchatbuttonModels4.dispose();
    videocallbuttonModels4.dispose();
    ratingbarModels5.dispose();
    callbuttonnewModels5.dispose();
    newchatbuttonModels5.dispose();
    videocallbuttonModels5.dispose();
    ratingbarModels6.dispose();
    callbuttonnewModels6.dispose();
    newchatbuttonModels6.dispose();
    videocallbuttonModels6.dispose();
    ratingbarModels7.dispose();
    callbuttonnewModels7.dispose();
    newchatbuttonModels7.dispose();
    videocallbuttonModels7.dispose();
    ratingbarModels8.dispose();
    callbuttonnewModels8.dispose();
    newchatbuttonModels8.dispose();
    videocallbuttonModels8.dispose();
    ratingbarModels9.dispose();
    callbuttonnewModels9.dispose();
    newchatbuttonModels9.dispose();
    videocallbuttonModels9.dispose();
    ratingbarModels10.dispose();
    callbuttonnewModels10.dispose();
    newchatbuttonModels10.dispose();
    videocallbuttonModels10.dispose();

    /// Dispose query cache managers for this widget.

    clearDoclistpageCache();
  }
}
