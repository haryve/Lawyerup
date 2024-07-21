import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'propert_model.dart';
export 'propert_model.dart';

class PropertWidget extends StatefulWidget {
  const PropertWidget({super.key});

  @override
  State<PropertWidget> createState() => _PropertWidgetState();
}

class _PropertWidgetState extends State<PropertWidget> {
  late PropertModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF14181B),
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'On Call',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                color: const Color(0xFF14181B),
                fontSize: 24.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
    );
  }
}
