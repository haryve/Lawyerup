import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'docc_r_d_model.dart';
export 'docc_r_d_model.dart';

class DoccRDWidget extends StatefulWidget {
  const DoccRDWidget({super.key});

  @override
  State<DoccRDWidget> createState() => _DoccRDWidgetState();
}

class _DoccRDWidgetState extends State<DoccRDWidget> {
  late DoccRDModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DoccRDModel());

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
          'assets/jsons/optimized-lottie.json',
          width: 500.0,
          height: 500.0,
          fit: BoxFit.contain,
          animate: true,
        ),
      ],
    );
  }
}
