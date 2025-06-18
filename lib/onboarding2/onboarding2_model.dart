import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class Onboarding2Model extends FlutterFlowModel<Onboarding2Widget> {
  ///  Local state fields for this page.

  int? totalPagesCount = 3;

  bool hideButtonText = false;

  List<String> titleList = [
    'Welcome to CareMeez ',
    'CareMeez – Connect. Consult. Cure',
    'Start Your Health Journey with CareMeez.'
  ];
  void addToTitleList(String item) => titleList.add(item);
  void removeFromTitleList(String item) => titleList.remove(item);
  void removeAtIndexFromTitleList(int index) => titleList.removeAt(index);
  void insertAtIndexInTitleList(int index, String item) =>
      titleList.insert(index, item);
  void updateTitleListAtIndex(int index, Function(String) updateFn) =>
      titleList[index] = updateFn(titleList[index]);

  List<String> subtitleList = [
    'India\'s Instant Healthcare Line.',
    'Instant Connection. Trusted Care. Lasting Cure.',
    'Join Thousands Getting Expert Care – Anytime, Anywhere'
  ];
  void addToSubtitleList(String item) => subtitleList.add(item);
  void removeFromSubtitleList(String item) => subtitleList.remove(item);
  void removeAtIndexFromSubtitleList(int index) => subtitleList.removeAt(index);
  void insertAtIndexInSubtitleList(int index, String item) =>
      subtitleList.insert(index, item);
  void updateSubtitleListAtIndex(int index, Function(String) updateFn) =>
      subtitleList[index] = updateFn(subtitleList[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for SwipeableStack widget.
  late CardSwiperController swipeableStackController;

  @override
  void initState(BuildContext context) {
    swipeableStackController = CardSwiperController();
  }

  @override
  void dispose() {}

  /// Action blocks.
  /// Action that happens when a user presses a button on a last slide.
  Future lastSlideAction(BuildContext context) async {
    logFirebaseEvent('lastSlideAction_navigate_to');

    context.pushNamed(AuthenticateSolo1Widget.routeName);
  }
}
