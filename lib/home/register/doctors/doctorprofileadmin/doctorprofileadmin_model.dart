import '/components/commentbox/commentbox_widget.dart';
import '/components/ratingbar2/ratingbar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doctorprofileadmin_widget.dart' show DoctorprofileadminWidget;
import 'package:flutter/material.dart';

class DoctorprofileadminModel
    extends FlutterFlowModel<DoctorprofileadminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ratingbar2 component.
  late Ratingbar2Model ratingbar2Model1;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for commentbox dynamic component.
  late FlutterFlowDynamicModels<CommentboxModel> commentboxModels;
  // Models for ratingbar2 dynamic component.
  late FlutterFlowDynamicModels<Ratingbar2Model> ratingbar2Models2;

  @override
  void initState(BuildContext context) {
    ratingbar2Model1 = createModel(context, () => Ratingbar2Model());
    commentboxModels = FlutterFlowDynamicModels(() => CommentboxModel());
    ratingbar2Models2 = FlutterFlowDynamicModels(() => Ratingbar2Model());
  }

  @override
  void dispose() {
    ratingbar2Model1.dispose();
    tabBarController?.dispose();
    commentboxModels.dispose();
    ratingbar2Models2.dispose();
  }
}
