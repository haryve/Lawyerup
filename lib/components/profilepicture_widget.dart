import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profilepicture_model.dart';
export 'profilepicture_model.dart';

class ProfilepictureWidget extends StatefulWidget {
  const ProfilepictureWidget({super.key});

  @override
  State<ProfilepictureWidget> createState() => _ProfilepictureWidgetState();
}

class _ProfilepictureWidgetState extends State<ProfilepictureWidget> {
  late ProfilepictureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilepictureModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
