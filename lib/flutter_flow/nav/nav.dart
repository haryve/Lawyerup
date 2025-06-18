import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn ? DocWidget() : Onboarding2Widget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? DocWidget() : Onboarding2Widget(),
        ),
        FFRoute(
          name: AuthenticateSolo1Widget.routeName,
          path: AuthenticateSolo1Widget.routePath,
          builder: (context, params) => AuthenticateSolo1Widget(),
        ),
        FFRoute(
          name: BforgotpasswordWidget.routeName,
          path: BforgotpasswordWidget.routePath,
          builder: (context, params) => BforgotpasswordWidget(),
        ),
        FFRoute(
          name: BPinCodeWidget.routeName,
          path: BPinCodeWidget.routePath,
          builder: (context, params) => BPinCodeWidget(
            mobile: params.getParam(
              'mobile',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: BProfileCreateEditWidget.routeName,
          path: BProfileCreateEditWidget.routePath,
          builder: (context, params) => BProfileCreateEditWidget(),
        ),
        FFRoute(
          name: TermsofserviceWidget.routeName,
          path: TermsofserviceWidget.routePath,
          builder: (context, params) => TermsofserviceWidget(),
        ),
        FFRoute(
          name: SupportticketWidget.routeName,
          path: SupportticketWidget.routePath,
          builder: (context, params) => SupportticketWidget(),
        ),
        FFRoute(
          name: SearchResultsWidget.routeName,
          path: SearchResultsWidget.routePath,
          builder: (context, params) => SearchResultsWidget(),
        ),
        FFRoute(
          name: PsychologistsWidget.routeName,
          path: PsychologistsWidget.routePath,
          builder: (context, params) => PsychologistsWidget(),
        ),
        FFRoute(
          name: AddfundstransactionsWidget.routeName,
          path: AddfundstransactionsWidget.routePath,
          builder: (context, params) => AddfundstransactionsWidget(),
        ),
        FFRoute(
          name: AddfundCheckoutWidget.routeName,
          path: AddfundCheckoutWidget.routePath,
          builder: (context, params) => AddfundCheckoutWidget(
            amount: params.getParam(
              'amount',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: AddfundssuccessWidget.routeName,
          path: AddfundssuccessWidget.routePath,
          builder: (context, params) => AddfundssuccessWidget(),
        ),
        FFRoute(
          name: AddfundsWidget.routeName,
          path: AddfundsWidget.routePath,
          builder: (context, params) => AddfundsWidget(),
        ),
        FFRoute(
          name: SearchResultscategoryWidget.routeName,
          path: SearchResultscategoryWidget.routePath,
          builder: (context, params) => SearchResultscategoryWidget(
            category: params.getParam(
              'category',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MobileloginWidget.routeName,
          path: MobileloginWidget.routePath,
          builder: (context, params) => MobileloginWidget(),
        ),
        FFRoute(
          name: DoctorProfiledemoWidget.routeName,
          path: DoctorProfiledemoWidget.routePath,
          builder: (context, params) => DoctorProfiledemoWidget(
            lawyerrefere: params.getParam(
              'lawyerrefere',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Lawyers'],
            ),
          ),
        ),
        FFRoute(
          name: AdmindoctoregisterWidget.routeName,
          path: AdmindoctoregisterWidget.routePath,
          builder: (context, params) => AdmindoctoregisterWidget(),
        ),
        FFRoute(
          name: CallScreenWidget.routeName,
          path: CallScreenWidget.routePath,
          builder: (context, params) => CallScreenWidget(
            callRef: params.getParam(
              'callRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['calls'],
            ),
          ),
        ),
        FFRoute(
          name: WithdrawFundsWidget.routeName,
          path: WithdrawFundsWidget.routePath,
          builder: (context, params) => WithdrawFundsWidget(),
        ),
        FFRoute(
          name: WithdrawCheckoutWidget.routeName,
          path: WithdrawCheckoutWidget.routePath,
          builder: (context, params) => WithdrawCheckoutWidget(
            amount: params.getParam(
              'amount',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: SuccessfulwithdrawalWidget.routeName,
          path: SuccessfulwithdrawalWidget.routePath,
          builder: (context, params) => SuccessfulwithdrawalWidget(),
        ),
        FFRoute(
          name: WithdrawlhistoryWidget.routeName,
          path: WithdrawlhistoryWidget.routePath,
          builder: (context, params) => WithdrawlhistoryWidget(),
        ),
        FFRoute(
          name: VideocallWidget.routeName,
          path: VideocallWidget.routePath,
          builder: (context, params) => VideocallWidget(
            callref: params.getParam(
              'callref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['calls'],
            ),
          ),
        ),
        FFRoute(
          name: ChattingPageWidget.routeName,
          path: ChattingPageWidget.routePath,
          builder: (context, params) => ChattingPageWidget(
            participantsimages: params.getParam<String>(
              'participantsimages',
              ParamType.String,
              isList: true,
            ),
            participantnames: params.getParam<String>(
              'participantnames',
              ParamType.String,
              isList: true,
            ),
            chatID: params.getParam(
              'chatID',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        ),
        FFRoute(
          name: DoctorpostdetailsWidget.routeName,
          path: DoctorpostdetailsWidget.routePath,
          builder: (context, params) => DoctorpostdetailsWidget(
            postid: params.getParam(
              'postid',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Lawyr_post'],
            ),
          ),
        ),
        FFRoute(
          name: NotificationsWidget.routeName,
          path: NotificationsWidget.routePath,
          builder: (context, params) => NotificationsWidget(),
        ),
        FFRoute(
          name: DoctorprofileadminWidget.routeName,
          path: DoctorprofileadminWidget.routePath,
          builder: (context, params) => DoctorprofileadminWidget(),
        ),
        FFRoute(
          name: DoctorslobbyWidget.routeName,
          path: DoctorslobbyWidget.routePath,
          builder: (context, params) => DoctorslobbyWidget(),
        ),
        FFRoute(
          name: UserprofileWidget.routeName,
          path: UserprofileWidget.routePath,
          builder: (context, params) => UserprofileWidget(),
        ),
        FFRoute(
          name: DoctorprofileWidget.routeName,
          path: DoctorprofileWidget.routePath,
          builder: (context, params) => DoctorprofileWidget(
            lawyrref: params.getParam(
              'lawyrref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Lawyers'],
            ),
          ),
        ),
        FFRoute(
          name: PrivacypolicyWidget.routeName,
          path: PrivacypolicyWidget.routePath,
          builder: (context, params) => PrivacypolicyWidget(),
        ),
        FFRoute(
          name: DraroviaWidget.routeName,
          path: DraroviaWidget.routePath,
          builder: (context, params) => DraroviaWidget(),
        ),
        FFRoute(
          name: PsychiatristsWidget.routeName,
          path: PsychiatristsWidget.routePath,
          builder: (context, params) => PsychiatristsWidget(
            doctortype: params.getParam(
              'doctortype',
              ParamType.String,
            ),
            t2: params.getParam(
              't2',
              ParamType.String,
            ),
            t3: params.getParam(
              't3',
              ParamType.String,
            ),
            t4: params.getParam(
              't4',
              ParamType.String,
            ),
            t5: params.getParam(
              't5',
              ParamType.String,
            ),
            t6: params.getParam(
              't6',
              ParamType.String,
            ),
            t7: params.getParam(
              't7',
              ParamType.String,
            ),
            t8: params.getParam(
              't8',
              ParamType.String,
            ),
            t9: params.getParam(
              't9',
              ParamType.String,
            ),
            t10: params.getParam(
              't10',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AichatWidget.routeName,
          path: AichatWidget.routePath,
          builder: (context, params) => AichatWidget(),
        ),
        FFRoute(
          name: ExpWidget.routeName,
          path: ExpWidget.routePath,
          builder: (context, params) => ExpWidget(
            rest: params.getParam(
              'rest',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LandingpageWidget.routeName,
          path: LandingpageWidget.routePath,
          builder: (context, params) => LandingpageWidget(),
        ),
        FFRoute(
          name: DocWidget.routeName,
          path: DocWidget.routePath,
          builder: (context, params) => DocWidget(),
        ),
        FFRoute(
          name: ExpCopyWidget.routeName,
          path: ExpCopyWidget.routePath,
          builder: (context, params) => ExpCopyWidget(),
        ),
        FFRoute(
          name: VideoWidget.routeName,
          path: VideoWidget.routePath,
          builder: (context, params) => VideoWidget(),
        ),
        FFRoute(
          name: Video2CopyWidget.routeName,
          path: Video2CopyWidget.routePath,
          builder: (context, params) => Video2CopyWidget(),
        ),
        FFRoute(
          name: DocfindermapWidget.routeName,
          path: DocfindermapWidget.routePath,
          builder: (context, params) => DocfindermapWidget(),
        ),
        FFRoute(
          name: FinddoconmapWidget.routeName,
          path: FinddoconmapWidget.routePath,
          builder: (context, params) => FinddoconmapWidget(),
        ),
        FFRoute(
          name: OnboardingWidget.routeName,
          path: OnboardingWidget.routePath,
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: Onboarding2Widget.routeName,
          path: Onboarding2Widget.routePath,
          builder: (context, params) => Onboarding2Widget(),
        ),
        FFRoute(
          name: VideoCopyWidget.routeName,
          path: VideoCopyWidget.routePath,
          builder: (context, params) => VideoCopyWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/onboarding2';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Color(0xFF475797),
                  child: Center(
                    child: Image.asset(
                      'assets/images/ChatGPT_Image_May_16,_2025,_08_17_29_PM.png',
                      width: MediaQuery.sizeOf(context).width * 2.0,
                      height: MediaQuery.sizeOf(context).height * 2.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    Key? key,
    required this.state,
    required this.child,
  }) : super(key: key);

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();

    // Handle erroneous links from Firebase Dynamic Links.

    String? location;

    /*
    Handle `links` routes that have dynamic-link entangled with deep-link 
    */
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.queryParameters.containsKey('deep_link_id')) {
      final deepLinkId = widget.state.uri.queryParameters['deep_link_id'];
      if (deepLinkId != null) {
        final deepLinkUri = Uri.parse(deepLinkId);
        final link = deepLinkUri.toString();
        final host = deepLinkUri.host;
        location = link.split(host).last;
      }
    }

    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      location = '/';
    }

    if (location != null) {
      SchedulerBinding.instance
          .addPostFrameCallback((_) => context.go(location!));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
