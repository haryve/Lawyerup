import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'docc_r_d_copy_model.dart';
export 'docc_r_d_copy_model.dart';

class DoccRDCopyWidget extends StatefulWidget {
  const DoccRDCopyWidget({super.key});

  @override
  State<DoccRDCopyWidget> createState() => _DoccRDCopyWidgetState();
}

class _DoccRDCopyWidgetState extends State<DoccRDCopyWidget> {
  late DoccRDCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoccRDCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Lottie.asset(
          'assets/jsons/Animation_-_1746864793853.json',
          width: 500.0,
          height: 500.0,
          fit: BoxFit.contain,
          animate: true,
        ),
      ],
    );
  }
}
