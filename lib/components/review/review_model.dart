import '/components/ratingbar2/ratingbar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_widget.dart' show ReviewWidget;
import 'package:flutter/material.dart';

class ReviewModel extends FlutterFlowModel<ReviewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ratingbar2 component.
  late Ratingbar2Model ratingbar2Model;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    ratingbar2Model = createModel(context, () => Ratingbar2Model());
  }

  @override
  void dispose() {
    ratingbar2Model.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
