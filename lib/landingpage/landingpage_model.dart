import '/backend/backend.dart';
import '/components/commentbox/commentbox_widget.dart';
import '/components/drawer/drawer_widget.dart';
import '/components/incomming_call_box/incomming_call_box_widget.dart';
import '/components/userimage_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'landingpage_widget.dart' show LandingpageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class LandingpageModel extends FlutterFlowModel<LandingpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for drawer component.
  late DrawerModel drawerModel;
  // Model for USERIMAGE component.
  late UserimageModel userimageModel;
  // Model for Incomming_call_box component.
  late IncommingCallBoxModel incommingCallBoxModel;
  // State field(s) for ListView widget.

  PagingController<DocumentSnapshot?, LawyrPostRecord>?
      listViewPagingController;
  Query? listViewPagingQuery;
  List<StreamSubscription?> listViewStreamSubscriptions = [];

  // Models for commentbox dynamic component.
  late FlutterFlowDynamicModels<CommentboxModel> commentboxModels;

  @override
  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
    userimageModel = createModel(context, () => UserimageModel());
    incommingCallBoxModel = createModel(context, () => IncommingCallBoxModel());
    commentboxModels = FlutterFlowDynamicModels(() => CommentboxModel());
  }

  @override
  void dispose() {
    drawerModel.dispose();
    userimageModel.dispose();
    incommingCallBoxModel.dispose();
    listViewStreamSubscriptions.forEach((s) => s?.cancel());
    listViewPagingController?.dispose();

    commentboxModels.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, LawyrPostRecord> setListViewController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewPagingController ??= _createListViewController(query, parent);
    if (listViewPagingQuery != query) {
      listViewPagingQuery = query;
      listViewPagingController?.refresh();
    }
    return listViewPagingController!;
  }

  PagingController<DocumentSnapshot?, LawyrPostRecord>
      _createListViewController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, LawyrPostRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryLawyrPostRecordPage(
          queryBuilder: (_) => listViewPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewStreamSubscriptions,
          controller: controller,
          pageSize: 4,
          isStream: true,
        ),
      );
  }
}
