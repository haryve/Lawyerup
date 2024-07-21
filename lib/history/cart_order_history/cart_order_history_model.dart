import '/flutter_flow/flutter_flow_util.dart';
import 'cart_order_history_widget.dart' show CartOrderHistoryWidget;
import 'package:flutter/material.dart';

class CartOrderHistoryModel extends FlutterFlowModel<CartOrderHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
