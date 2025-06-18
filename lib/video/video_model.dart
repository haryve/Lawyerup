import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'video_widget.dart' show VideoWidget;
import 'package:flutter/material.dart';

class VideoModel extends FlutterFlowModel<VideoWidget> {
  ///  Local state fields for this page.

  List<LawyrPostRecord> posts = [];
  void addToPosts(LawyrPostRecord item) => posts.add(item);
  void removeFromPosts(LawyrPostRecord item) => posts.remove(item);
  void removeAtIndexFromPosts(int index) => posts.removeAt(index);
  void insertAtIndexInPosts(int index, LawyrPostRecord item) =>
      posts.insert(index, item);
  void updatePostsAtIndex(int index, Function(LawyrPostRecord) updateFn) =>
      posts[index] = updateFn(posts[index]);

  bool nav = true;

  int items = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in video widget.
  List<LawyrPostRecord>? lawyrpost;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Firestore Query - Query a collection] action in PageView widget.
  List<LawyrPostRecord>? lawyrpost2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
