import '/components/ratingbar2/ratingbar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'draroviaz_widget.dart' show DraroviazWidget;
import 'package:flutter/material.dart';

class DraroviazModel extends FlutterFlowModel<DraroviazWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for ratingbar2 component.
  late Ratingbar2Model ratingbar2Model1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for ratingbar2 dynamic component.
  late FlutterFlowDynamicModels<Ratingbar2Model> ratingbar2Models2;

  @override
  void initState(BuildContext context) {
    ratingbar2Model1 = createModel(context, () => Ratingbar2Model());
    ratingbar2Models2 = FlutterFlowDynamicModels(() => Ratingbar2Model());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    ratingbar2Model1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    ratingbar2Models2.dispose();
  }
}
