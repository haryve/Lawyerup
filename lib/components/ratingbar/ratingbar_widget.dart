import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ratingbar_model.dart';
export 'ratingbar_model.dart';

class RatingbarWidget extends StatefulWidget {
  const RatingbarWidget({super.key});

  @override
  State<RatingbarWidget> createState() => _RatingbarWidgetState();
}

class _RatingbarWidgetState extends State<RatingbarWidget> {
  late RatingbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingbarModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
      child: RatingBar.builder(
        onRatingUpdate: (newValue) =>
            safeSetState(() => _model.ratingBarValue = newValue),
        itemBuilder: (context, index) => Icon(
          Icons.star_rounded,
          color: FlutterFlowTheme.of(context).alternate,
        ),
        direction: Axis.horizontal,
        initialRating: _model.ratingBarValue ??= 3.0,
        unratedColor: Color(0x4DD1ECEF),
        itemCount: 5,
        itemSize: 24.0,
        glowColor: FlutterFlowTheme.of(context).alternate,
      ),
    );
  }
}
