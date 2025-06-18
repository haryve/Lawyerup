import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'video2_copy_model.dart';
export 'video2_copy_model.dart';

class Video2CopyWidget extends StatefulWidget {
  const Video2CopyWidget({super.key});

  static String routeName = 'video2Copy';
  static String routePath = '/video2Copy';

  @override
  State<Video2CopyWidget> createState() => _Video2CopyWidgetState();
}

class _Video2CopyWidgetState extends State<Video2CopyWidget> {
  late Video2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Video2CopyModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'video2Copy'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        child: custom_widgets.CustomVidPlayer2(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          videoPath:
                              'https://firebasestorage.googleapis.com/v0/b/constitution-simplified.appspot.com/o/users%2FOf3KR4kvoJZngSSdD17oNCencvf1%2Fuploads%2F1749474921574007.mp4?alt=media&token=afd28898-ef37-432a-96aa-1e18e0e884f4',
                          playPauseVideoAction: true,
                          looping: true,
                          showControls: true,
                          allowFullScreen: true,
                          allowPlayBackSpeedChanging: true,
                          controlAudio: true,
                          loadingCircleColor:
                              FlutterFlowTheme.of(context).primaryText,
                          enablePlayOnFocus: true,
                          imageThumbnail:
                              'https://thumbs.dreamstime.com/b/fresh-green-grass-background-exotic-asian-plant-beautiful-nature-rainforest-gorgeous-natural-mobile-wallpaper-282279765.jpg',
                          actualTimestamp: (timestampSeconds) async {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
