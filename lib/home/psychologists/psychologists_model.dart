import '/backend/backend.dart';
import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/incomming_call_box/incomming_call_box_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar/ratingbar_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'psychologists_widget.dart' show PsychologistsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PsychologistsModel extends FlutterFlowModel<PsychologistsWidget> {
  ///  Local state fields for this page.

  DocumentReference? startcall;

  bool recents = false;

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

  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController1;
  Query? listViewPagingQuery1;
  List<StreamSubscription?> listViewStreamSubscriptions1 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels1;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels1;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels1;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels1;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController2;
  Query? listViewPagingQuery2;
  List<StreamSubscription?> listViewStreamSubscriptions2 = [];

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

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels3;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels3;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels3;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels3;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController4;
  Query? listViewPagingQuery4;
  List<StreamSubscription?> listViewStreamSubscriptions4 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels4;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels4;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels4;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels4;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController5;
  Query? listViewPagingQuery5;
  List<StreamSubscription?> listViewStreamSubscriptions5 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels5;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels5;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels5;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels5;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController6;
  Query? listViewPagingQuery6;
  List<StreamSubscription?> listViewStreamSubscriptions6 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels6;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels6;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels6;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels6;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController7;
  Query? listViewPagingQuery7;
  List<StreamSubscription?> listViewStreamSubscriptions7 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels7;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels7;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels7;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels7;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController8;
  Query? listViewPagingQuery8;
  List<StreamSubscription?> listViewStreamSubscriptions8 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels8;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels8;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels8;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels8;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>? listViewPagingController9;
  Query? listViewPagingQuery9;
  List<StreamSubscription?> listViewStreamSubscriptions9 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels9;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels9;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels9;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels9;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>?
      listViewPagingController10;
  Query? listViewPagingQuery10;
  List<StreamSubscription?> listViewStreamSubscriptions10 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels10;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels10;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels10;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels10;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>?
      listViewPagingController11;
  Query? listViewPagingQuery11;
  List<StreamSubscription?> listViewStreamSubscriptions11 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels11;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels11;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels11;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels11;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>?
      listViewPagingController12;
  Query? listViewPagingQuery12;
  List<StreamSubscription?> listViewStreamSubscriptions12 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels12;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels12;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels12;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels12;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>?
      listViewPagingController13;
  Query? listViewPagingQuery13;
  List<StreamSubscription?> listViewStreamSubscriptions13 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels13;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels13;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels13;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels13;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>?
      listViewPagingController14;
  Query? listViewPagingQuery14;
  List<StreamSubscription?> listViewStreamSubscriptions14 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels14;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels14;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels14;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels14;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>?
      listViewPagingController15;
  Query? listViewPagingQuery15;
  List<StreamSubscription?> listViewStreamSubscriptions15 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels15;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels15;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels15;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels15;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyersRecord>?
      listViewPagingController16;
  Query? listViewPagingQuery16;
  List<StreamSubscription?> listViewStreamSubscriptions16 = [];

  // Models for ratingbar dynamic component.
  late FlutterFlowDynamicModels<RatingbarModel> ratingbarModels16;
  // Models for callbuttonnew dynamic component.
  late FlutterFlowDynamicModels<CallbuttonnewModel> callbuttonnewModels16;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels16;
  // Models for videocallbutton dynamic component.
  late FlutterFlowDynamicModels<VideocallbuttonModel> videocallbuttonModels16;

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
    ratingbarModels11 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels11 =
        FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels11 =
        FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels11 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels12 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels12 =
        FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels12 =
        FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels12 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels13 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels13 =
        FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels13 =
        FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels13 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels14 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels14 =
        FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels14 =
        FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels14 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels15 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels15 =
        FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels15 =
        FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels15 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
    ratingbarModels16 = FlutterFlowDynamicModels(() => RatingbarModel());
    callbuttonnewModels16 =
        FlutterFlowDynamicModels(() => CallbuttonnewModel());
    newchatbuttonModels16 =
        FlutterFlowDynamicModels(() => NewchatbuttonModel());
    videocallbuttonModels16 =
        FlutterFlowDynamicModels(() => VideocallbuttonModel());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    incommingCallBoxModel.dispose();
    tabBarController?.dispose();
    listViewStreamSubscriptions1.forEach((s) => s?.cancel());
    listViewPagingController1?.dispose();

    ratingbarModels1.dispose();
    callbuttonnewModels1.dispose();
    newchatbuttonModels1.dispose();
    videocallbuttonModels1.dispose();
    listViewStreamSubscriptions2.forEach((s) => s?.cancel());
    listViewPagingController2?.dispose();

    ratingbarModels2.dispose();
    callbuttonnewModels2.dispose();
    newchatbuttonModels2.dispose();
    videocallbuttonModels2.dispose();
    listViewStreamSubscriptions3.forEach((s) => s?.cancel());
    listViewPagingController3?.dispose();

    ratingbarModels3.dispose();
    callbuttonnewModels3.dispose();
    newchatbuttonModels3.dispose();
    videocallbuttonModels3.dispose();
    listViewStreamSubscriptions4.forEach((s) => s?.cancel());
    listViewPagingController4?.dispose();

    ratingbarModels4.dispose();
    callbuttonnewModels4.dispose();
    newchatbuttonModels4.dispose();
    videocallbuttonModels4.dispose();
    listViewStreamSubscriptions5.forEach((s) => s?.cancel());
    listViewPagingController5?.dispose();

    ratingbarModels5.dispose();
    callbuttonnewModels5.dispose();
    newchatbuttonModels5.dispose();
    videocallbuttonModels5.dispose();
    listViewStreamSubscriptions6.forEach((s) => s?.cancel());
    listViewPagingController6?.dispose();

    ratingbarModels6.dispose();
    callbuttonnewModels6.dispose();
    newchatbuttonModels6.dispose();
    videocallbuttonModels6.dispose();
    listViewStreamSubscriptions7.forEach((s) => s?.cancel());
    listViewPagingController7?.dispose();

    ratingbarModels7.dispose();
    callbuttonnewModels7.dispose();
    newchatbuttonModels7.dispose();
    videocallbuttonModels7.dispose();
    listViewStreamSubscriptions8.forEach((s) => s?.cancel());
    listViewPagingController8?.dispose();

    ratingbarModels8.dispose();
    callbuttonnewModels8.dispose();
    newchatbuttonModels8.dispose();
    videocallbuttonModels8.dispose();
    listViewStreamSubscriptions9.forEach((s) => s?.cancel());
    listViewPagingController9?.dispose();

    ratingbarModels9.dispose();
    callbuttonnewModels9.dispose();
    newchatbuttonModels9.dispose();
    videocallbuttonModels9.dispose();
    listViewStreamSubscriptions10.forEach((s) => s?.cancel());
    listViewPagingController10?.dispose();

    ratingbarModels10.dispose();
    callbuttonnewModels10.dispose();
    newchatbuttonModels10.dispose();
    videocallbuttonModels10.dispose();
    listViewStreamSubscriptions11.forEach((s) => s?.cancel());
    listViewPagingController11?.dispose();

    ratingbarModels11.dispose();
    callbuttonnewModels11.dispose();
    newchatbuttonModels11.dispose();
    videocallbuttonModels11.dispose();
    listViewStreamSubscriptions12.forEach((s) => s?.cancel());
    listViewPagingController12?.dispose();

    ratingbarModels12.dispose();
    callbuttonnewModels12.dispose();
    newchatbuttonModels12.dispose();
    videocallbuttonModels12.dispose();
    listViewStreamSubscriptions13.forEach((s) => s?.cancel());
    listViewPagingController13?.dispose();

    ratingbarModels13.dispose();
    callbuttonnewModels13.dispose();
    newchatbuttonModels13.dispose();
    videocallbuttonModels13.dispose();
    listViewStreamSubscriptions14.forEach((s) => s?.cancel());
    listViewPagingController14?.dispose();

    ratingbarModels14.dispose();
    callbuttonnewModels14.dispose();
    newchatbuttonModels14.dispose();
    videocallbuttonModels14.dispose();
    listViewStreamSubscriptions15.forEach((s) => s?.cancel());
    listViewPagingController15?.dispose();

    ratingbarModels15.dispose();
    callbuttonnewModels15.dispose();
    newchatbuttonModels15.dispose();
    videocallbuttonModels15.dispose();
    listViewStreamSubscriptions16.forEach((s) => s?.cancel());
    listViewPagingController16?.dispose();

    ratingbarModels16.dispose();
    callbuttonnewModels16.dispose();
    newchatbuttonModels16.dispose();
    videocallbuttonModels16.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController1(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController1 ??= _createListViewController1(query, parent);
    if (listViewPagingQuery1 != query) {
      listViewPagingQuery1 = query;
      listViewPagingController1?.refresh();
    }
    return listViewPagingController1!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController1(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery1 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions1,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController2(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController2 ??= _createListViewController2(query, parent);
    if (listViewPagingQuery2 != query) {
      listViewPagingQuery2 = query;
      listViewPagingController2?.refresh();
    }
    return listViewPagingController2!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController2(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery2 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions2,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

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
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController4(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController4 ??= _createListViewController4(query, parent);
    if (listViewPagingQuery4 != query) {
      listViewPagingQuery4 = query;
      listViewPagingController4?.refresh();
    }
    return listViewPagingController4!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController4(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery4 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions4,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController5(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController5 ??= _createListViewController5(query, parent);
    if (listViewPagingQuery5 != query) {
      listViewPagingQuery5 = query;
      listViewPagingController5?.refresh();
    }
    return listViewPagingController5!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController5(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery5 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions5,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController6(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController6 ??= _createListViewController6(query, parent);
    if (listViewPagingQuery6 != query) {
      listViewPagingQuery6 = query;
      listViewPagingController6?.refresh();
    }
    return listViewPagingController6!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController6(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery6 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions6,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController7(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController7 ??= _createListViewController7(query, parent);
    if (listViewPagingQuery7 != query) {
      listViewPagingQuery7 = query;
      listViewPagingController7?.refresh();
    }
    return listViewPagingController7!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController7(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery7 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions7,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController8(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController8 ??= _createListViewController8(query, parent);
    if (listViewPagingQuery8 != query) {
      listViewPagingQuery8 = query;
      listViewPagingController8?.refresh();
    }
    return listViewPagingController8!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController8(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery8 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions8,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController9(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController9 ??= _createListViewController9(query, parent);
    if (listViewPagingQuery9 != query) {
      listViewPagingQuery9 = query;
      listViewPagingController9?.refresh();
    }
    return listViewPagingController9!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord> _createListViewController9(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery9 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions9,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController10(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController10 ??= _createListViewController10(query, parent);
    if (listViewPagingQuery10 != query) {
      listViewPagingQuery10 = query;
      listViewPagingController10?.refresh();
    }
    return listViewPagingController10!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord>
      _createListViewController10(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery10 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions10,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController11(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController11 ??= _createListViewController11(query, parent);
    if (listViewPagingQuery11 != query) {
      listViewPagingQuery11 = query;
      listViewPagingController11?.refresh();
    }
    return listViewPagingController11!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord>
      _createListViewController11(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery11 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions11,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController12(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController12 ??= _createListViewController12(query, parent);
    if (listViewPagingQuery12 != query) {
      listViewPagingQuery12 = query;
      listViewPagingController12?.refresh();
    }
    return listViewPagingController12!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord>
      _createListViewController12(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery12 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions12,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController13(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController13 ??= _createListViewController13(query, parent);
    if (listViewPagingQuery13 != query) {
      listViewPagingQuery13 = query;
      listViewPagingController13?.refresh();
    }
    return listViewPagingController13!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord>
      _createListViewController13(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery13 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions13,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController14(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController14 ??= _createListViewController14(query, parent);
    if (listViewPagingQuery14 != query) {
      listViewPagingQuery14 = query;
      listViewPagingController14?.refresh();
    }
    return listViewPagingController14!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord>
      _createListViewController14(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery14 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions14,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController15(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController15 ??= _createListViewController15(query, parent);
    if (listViewPagingQuery15 != query) {
      listViewPagingQuery15 = query;
      listViewPagingController15?.refresh();
    }
    return listViewPagingController15!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord>
      _createListViewController15(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery15 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions15,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }

  PagingController<DocumentSnapshot?, LawyersRecord> setListViewController16(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController16 ??= _createListViewController16(query, parent);
    if (listViewPagingQuery16 != query) {
      listViewPagingQuery16 = query;
      listViewPagingController16?.refresh();
    }
    return listViewPagingController16!;
  }

  PagingController<DocumentSnapshot?, LawyersRecord>
      _createListViewController16(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller =
        PagingController<DocumentSnapshot?, LawyersRecord>(firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyersRecordPage(
          queryBuilder: (_) => listViewPagingQuery16 ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions16,
          controller: controller,
          pageSize: 25,
          isStream: true,
        ),
      );
  }
}
