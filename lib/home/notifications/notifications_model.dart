import '/backend/backend.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  Local state fields for this page.

  DocumentReference? startcall;

  bool? recents = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? output;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  CallsRecord? createVoiceCallRecents2;
  // Models for newchatbutton dynamic component.
  late FlutterFlowDynamicModels<NewchatbuttonModel> newchatbuttonModels;

  @override
  void initState(BuildContext context) {
    newchatbuttonModels = FlutterFlowDynamicModels(() => NewchatbuttonModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    newchatbuttonModels.dispose();
  }
}
