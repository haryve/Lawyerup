import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/commentbox/commentbox_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/ratingbar2/ratingbar2_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doctorprofile_widget.dart' show DoctorprofileWidget;
import 'package:flutter/material.dart';

class DoctorprofileModel extends FlutterFlowModel<DoctorprofileWidget> {
  ///  Local state fields for this page.

  DocumentReference? startcall;

  bool recents = false;

  ///  State fields for stateful widgets in this page.

  // Model for USERIMAGE component.
  late UserimageModel userimageModel;
  // Model for ratingbar1.
  late Ratingbar2Model ratingbar1Model;
  // Model for newchatbutton component.
  late NewchatbuttonModel newchatbuttonModel;
  // Model for videocallbutton component.
  late VideocallbuttonModel videocallbuttonModel;
  // Model for callbuttonnew component.
  late CallbuttonnewModel callbuttonnewModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for commentbox dynamic component.
  late FlutterFlowDynamicModels<CommentboxModel> commentboxModels;
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
    userimageModel = createModel(context, () => UserimageModel());
    ratingbar1Model = createModel(context, () => Ratingbar2Model());
    newchatbuttonModel = createModel(context, () => NewchatbuttonModel());
    videocallbuttonModel = createModel(context, () => VideocallbuttonModel());
    callbuttonnewModel = createModel(context, () => CallbuttonnewModel());
    commentboxModels = FlutterFlowDynamicModels(() => CommentboxModel());
    ratingbar2Model1 = createModel(context, () => Ratingbar2Model());
    ratingbar2Models2 = FlutterFlowDynamicModels(() => Ratingbar2Model());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    ratingbar1Model.dispose();
    newchatbuttonModel.dispose();
    videocallbuttonModel.dispose();
    callbuttonnewModel.dispose();
    tabBarController?.dispose();
    commentboxModels.dispose();
    ratingbar2Model1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    ratingbar2Models2.dispose();
  }
}
