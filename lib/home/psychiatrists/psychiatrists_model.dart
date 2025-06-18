import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/docrdsasasdcas_widget.dart';
import '/components/drawer/drawer_widget.dart';
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
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

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
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController3;
  Query? listViewPagingQuery3;
  List<StreamSubscription?> listViewStreamSubscriptions3 = [];

  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels1;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels2;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels3;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels4;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels5;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels6;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels7;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels8;
  // Models for docrdsasasdcas dynamic component.
  late FlutterFlowDynamicModels<DocrdsasasdcasModel> docrdsasasdcasModels9;
  // Model for drawer component.
  late DrawerModel drawerModel;

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
    docrdsasasdcasModels1 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels2 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels3 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels4 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels5 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels6 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels7 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels8 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    docrdsasasdcasModels9 =
        FlutterFlowDynamicModels(() => DocrdsasasdcasModel());
    drawerModel = createModel(context, () => DrawerModel());
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
    listViewStreamSubscriptions3.forEach((s) => s?.cancel());
    listViewPagingController3?.dispose();

    docrdsasasdcasModels1.dispose();
    docrdsasasdcasModels2.dispose();
    docrdsasasdcasModels3.dispose();
    docrdsasasdcasModels4.dispose();
    docrdsasasdcasModels5.dispose();
    docrdsasasdcasModels6.dispose();
    docrdsasasdcasModels7.dispose();
    docrdsasasdcasModels8.dispose();
    docrdsasasdcasModels9.dispose();
    drawerModel.dispose();

    /// Dispose query cache managers for this widget.

    clearDoclistpageCache();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController3(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController3 ??= _createListViewController3(query, parent);
    if (listViewPagingQuery3 != query) {
      listViewPagingQuery3 = query;
      listViewPagingController3?.refresh();
    }
    return listViewPagingController3!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController3(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery3 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions3,
          controller: controller,
          pageSize: 10,
          isStream: true,
        ),
      );
  }
}
