import '/components/walletbalance/walletbalance_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'addfunds_widget.dart' show AddfundsWidget;
import 'package:flutter/material.dart';

class AddfundsModel extends FlutterFlowModel<AddfundsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for walletbalance component.
  late WalletbalanceModel walletbalanceModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    walletbalanceModel = createModel(context, () => WalletbalanceModel());
  }

  @override
  void dispose() {
    walletbalanceModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
