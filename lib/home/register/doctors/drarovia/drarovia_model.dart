import '/components/draroviaz_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'drarovia_widget.dart' show DraroviaWidget;
import 'package:flutter/material.dart';

class DraroviaModel extends FlutterFlowModel<DraroviaWidget> {
  ///  Local state fields for this page.

  DocumentReference? startcall;

  bool recents = false;

  ///  State fields for stateful widgets in this page.

  // Model for draroviaz component.
  late DraroviazModel draroviazModel;

  @override
  void initState(BuildContext context) {
    draroviazModel = createModel(context, () => DraroviazModel());
  }

  @override
  void dispose() {
    draroviazModel.dispose();
  }
}
