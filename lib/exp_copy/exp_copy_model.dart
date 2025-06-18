import '/components/drawer/drawer_widget.dart';
import '/components/incomming_call_box/incomming_call_box_widget.dart';
import '/components/userimage_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'exp_copy_widget.dart' show ExpCopyWidget;
import 'package:flutter/material.dart';

class ExpCopyModel extends FlutterFlowModel<ExpCopyWidget> {
  ///  Local state fields for this page.

  bool loading = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getappversion] action in ExpCopy widget.
  String? vrsion;
  // Model for USERIMAGE component.
  late UserimageModel userimageModel;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for PageView widget.
  PageController? pageViewController3;

  int get pageViewCurrentIndex3 => pageViewController3 != null &&
          pageViewController3!.hasClients &&
          pageViewController3!.page != null
      ? pageViewController3!.page!.round()
      : 0;
  // Model for Incomming_call_box component.
  late IncommingCallBoxModel incommingCallBoxModel;
  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    userimageModel = createModel(context, () => UserimageModel());
    incommingCallBoxModel = createModel(context, () => IncommingCallBoxModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    incommingCallBoxModel.dispose();
    drawerModel.dispose();
  }

  /// Action blocks.
  Future swipe(BuildContext context) async {}
}
