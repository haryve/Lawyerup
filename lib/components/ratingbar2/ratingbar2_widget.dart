import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ratingbar2_model.dart';
export 'ratingbar2_model.dart';

class Ratingbar2Widget extends StatefulWidget {
  const Ratingbar2Widget({super.key});

  @override
  State<Ratingbar2Widget> createState() => _Ratingbar2WidgetState();
}

class _Ratingbar2WidgetState extends State<Ratingbar2Widget> {
  late Ratingbar2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Ratingbar2Model());

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
        unratedColor: FlutterFlowTheme.of(context).secondaryBackground,
        itemCount: 5,
        itemSize: 30.0,
        glowColor: FlutterFlowTheme.of(context).alternate,
      ),
    );
  }
}
