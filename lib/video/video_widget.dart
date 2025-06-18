import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'video_model.dart';
export 'video_model.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key});

  static String routeName = 'video';
  static String routePath = '/video';

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'video'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('VIDEO_PAGE_video_ON_INIT_STATE');
      logFirebaseEvent('video_firestore_query');
      _model.lawyrpost = await queryLawyrPostRecordOnce(
        queryBuilder: (lawyrPostRecord) => lawyrPostRecord
            .where(
              'Postype',
              isEqualTo: 'video',
            )
            .orderBy('Createdtime', descending: true),
        limit: 5,
      );
      logFirebaseEvent('video_update_page_state');
      _model.posts = _model.lawyrpost!.toList().cast<LawyrPostRecord>();
      _model.items = _model.lawyrpost!.length;
      safeSetState(() {});
    });

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
              child: Container(
                width: double.infinity,
                height: 500.0,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: PageView(
                    controller: _model.pageViewController ??=
                        PageController(initialPage: 0),
                    onPageChanged: (_) async {
                      logFirebaseEvent(
                          'VIDEO_PageView_xzqt5yub_ON_WIDGET_SWIPE');
                      if (_model.pageViewCurrentIndex == 4) {
                        logFirebaseEvent('PageView_firestore_query');
                        _model.lawyrpost2 = await queryLawyrPostRecordOnce(
                          queryBuilder: (lawyrPostRecord) => lawyrPostRecord
                              .where(
                                'Postype',
                                isEqualTo: 'video',
                              )
                              .where(
                                'Createdtime',
                                isLessThan:
                                    _model.posts.lastOrNull?.createdtime,
                              )
                              .orderBy('Createdtime', descending: true),
                          limit: 5,
                        );
                        logFirebaseEvent('PageView_update_page_state');
                        _model.posts =
                            _model.lawyrpost2!.toList().cast<LawyrPostRecord>();
                        _model.items = _model.posts.length;
                        safeSetState(() {});
                        logFirebaseEvent('PageView_page_view');
                        await _model.pageViewController?.animateToPage(
                          0,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      } else {
                        logFirebaseEvent('PageView_page_view');
                        await _model.pageViewController?.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }

                      safeSetState(() {});
                    },
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          child: custom_widgets.CustomVidPlayer2(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            videoPath: functions.videourl(
                                _model.posts.elementAtOrNull(0)!.postvideo)!,
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
                            playbackSpeed: 1.0,
                            startTimeSeconds: 0,
                            actualTimestamp: (timestampSeconds) async {},
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          child: custom_widgets.CustomVidPlayer2(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            videoPath: functions.videourl(
                                _model.posts.elementAtOrNull(1)!.postvideo)!,
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
                            playbackSpeed: 1.0,
                            startTimeSeconds: 0,
                            actualTimestamp: (timestampSeconds) async {},
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          child: custom_widgets.CustomVidPlayer2(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            videoPath: functions.videourl(
                                _model.posts.elementAtOrNull(2)!.postvideo)!,
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
                            playbackSpeed: 1.0,
                            startTimeSeconds: 0,
                            actualTimestamp: (timestampSeconds) async {},
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          child: custom_widgets.CustomVidPlayer2(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            videoPath: functions.videourl(
                                _model.posts.elementAtOrNull(3)!.postvideo)!,
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
                            playbackSpeed: 1.0,
                            startTimeSeconds: 0,
                            actualTimestamp: (timestampSeconds) async {},
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          child: custom_widgets.CustomVidPlayer2(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: MediaQuery.sizeOf(context).height * 1.0,
                            videoPath: functions.videourl(
                                _model.posts.elementAtOrNull(4)!.postvideo)!,
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
                            playbackSpeed: 1.0,
                            startTimeSeconds: 0,
                            actualTimestamp: (timestampSeconds) async {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
