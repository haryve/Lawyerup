import '/flutter_flow/flutter_flow_util.dart';
import 'notificationsettings_widget.dart' show NotificationsettingsWidget;
import 'package:flutter/material.dart';

class NotificationsettingsModel
    extends FlutterFlowModel<NotificationsettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // State field(s) for Switch widget.
  bool? switchValue3;
  // State field(s) for Switch widget.
  bool? switchValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
