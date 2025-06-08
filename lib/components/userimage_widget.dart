import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'userimage_model.dart';
export 'userimage_model.dart';

class UserimageWidget extends StatefulWidget {
  const UserimageWidget({super.key});

  @override
  State<UserimageWidget> createState() => _UserimageWidgetState();
}

class _UserimageWidgetState extends State<UserimageWidget> {
  late UserimageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserimageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (currentUserPhoto != '')
          AuthUserStreamWidget(
            builder: (context) => Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                    currentUserPhoto,
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
        if ((currentUserPhoto == '') &&
            (valueOrDefault(currentUserDocument?.gender, '') == 'Male'))
          AuthUserStreamWidget(
            builder: (context) => Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: Image.asset(
                    'assets/images/Screenshot_2025-02-20_232800.png',
                  ).image,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
        if ((currentUserPhoto == '') &&
            (valueOrDefault(currentUserDocument?.gender, '') == 'Female'))
          AuthUserStreamWidget(
            builder: (context) => Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/Screenshot_2025-02-20_232801.png',
                  ).image,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
      ],
    );
  }
}
