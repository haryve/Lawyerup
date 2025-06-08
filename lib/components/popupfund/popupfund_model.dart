import '/components/walletbalance/walletbalance_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'popupfund_widget.dart' show PopupfundWidget;
import 'package:flutter/material.dart';

class PopupfundModel extends FlutterFlowModel<PopupfundWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for walletbalance component.
  late WalletbalanceModel walletbalanceModel;

  @override
  void initState(BuildContext context) {
    walletbalanceModel = createModel(context, () => WalletbalanceModel());
  }

  @override
  void dispose() {
    walletbalanceModel.dispose();
  }
}
