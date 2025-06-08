import '/flutter_flow/flutter_flow_util.dart';
import 'onboarding02_widget.dart' show Onboarding02Widget;
import 'package:flutter/material.dart';

class Onboarding02Model extends FlutterFlowModel<Onboarding02Widget> {
  ///  Local state fields for this page.

  int pageview = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
