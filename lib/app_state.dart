import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _recentlycallledusers = prefs
              .getStringList('ff_recentlycallledusers')
              ?.map((path) => path.ref)
              .toList() ??
          _recentlycallledusers;
    });
    _safeInit(() {
      _recents = prefs.getBool('ff_recents') ?? _recents;
    });
    _safeInit(() {
      _incall = prefs.getBool('ff_incall') ?? _incall;
    });
    _safeInit(() {
      _pyschilogists = prefs.getBool('ff_pyschilogists') ?? _pyschilogists;
    });
    _safeInit(() {
      _Recommended = prefs.getStringList('ff_Recommended') ?? _Recommended;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<bool> _search = [];
  List<bool> get search => _search;
  set search(List<bool> value) {
    _search = value;
  }

  void addToSearch(bool value) {
    search.add(value);
  }

  void removeFromSearch(bool value) {
    search.remove(value);
  }

  void removeAtIndexFromSearch(int index) {
    search.removeAt(index);
  }

  void updateSearchAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    search[index] = updateFn(_search[index]);
  }

  void insertAtIndexInSearch(int index, bool value) {
    search.insert(index, value);
  }

  String _drawer = 'false';
  String get drawer => _drawer;
  set drawer(String value) {
    _drawer = value;
  }

  List<DocumentReference> _recentlycallledusers = [];
  List<DocumentReference> get recentlycallledusers => _recentlycallledusers;
  set recentlycallledusers(List<DocumentReference> value) {
    _recentlycallledusers = value;
    prefs.setStringList(
        'ff_recentlycallledusers', value.map((x) => x.path).toList());
  }

  void addToRecentlycallledusers(DocumentReference value) {
    recentlycallledusers.add(value);
    prefs.setStringList('ff_recentlycallledusers',
        _recentlycallledusers.map((x) => x.path).toList());
  }

  void removeFromRecentlycallledusers(DocumentReference value) {
    recentlycallledusers.remove(value);
    prefs.setStringList('ff_recentlycallledusers',
        _recentlycallledusers.map((x) => x.path).toList());
  }

  void removeAtIndexFromRecentlycallledusers(int index) {
    recentlycallledusers.removeAt(index);
    prefs.setStringList('ff_recentlycallledusers',
        _recentlycallledusers.map((x) => x.path).toList());
  }

  void updateRecentlycallledusersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    recentlycallledusers[index] = updateFn(_recentlycallledusers[index]);
    prefs.setStringList('ff_recentlycallledusers',
        _recentlycallledusers.map((x) => x.path).toList());
  }

  void insertAtIndexInRecentlycallledusers(int index, DocumentReference value) {
    recentlycallledusers.insert(index, value);
    prefs.setStringList('ff_recentlycallledusers',
        _recentlycallledusers.map((x) => x.path).toList());
  }

  bool _recents = false;
  bool get recents => _recents;
  set recents(bool value) {
    _recents = value;
    prefs.setBool('ff_recents', value);
  }

  bool _incall = false;
  bool get incall => _incall;
  set incall(bool value) {
    _incall = value;
    prefs.setBool('ff_incall', value);
  }

  bool _aiworking = true;
  bool get aiworking => _aiworking;
  set aiworking(bool value) {
    _aiworking = value;
  }

  bool _pyschilogists = false;
  bool get pyschilogists => _pyschilogists;
  set pyschilogists(bool value) {
    _pyschilogists = value;
    prefs.setBool('ff_pyschilogists', value);
  }

  bool _Notifications = true;
  bool get Notifications => _Notifications;
  set Notifications(bool value) {
    _Notifications = value;
  }

  bool _Refresh = true;
  bool get Refresh => _Refresh;
  set Refresh(bool value) {
    _Refresh = value;
  }

  bool _Posts = true;
  bool get Posts => _Posts;
  set Posts(bool value) {
    _Posts = value;
  }

  String _Appversion = '';
  String get Appversion => _Appversion;
  set Appversion(String value) {
    _Appversion = value;
  }

  /// Greetings
  String _Greetings = '';
  String get Greetings => _Greetings;
  set Greetings(String value) {
    _Greetings = value;
  }

  List<String> _Recommended = [];
  List<String> get Recommended => _Recommended;
  set Recommended(List<String> value) {
    _Recommended = value;
    prefs.setStringList('ff_Recommended', value);
  }

  void addToRecommended(String value) {
    Recommended.add(value);
    prefs.setStringList('ff_Recommended', _Recommended);
  }

  void removeFromRecommended(String value) {
    Recommended.remove(value);
    prefs.setStringList('ff_Recommended', _Recommended);
  }

  void removeAtIndexFromRecommended(int index) {
    Recommended.removeAt(index);
    prefs.setStringList('ff_Recommended', _Recommended);
  }

  void updateRecommendedAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Recommended[index] = updateFn(_Recommended[index]);
    prefs.setStringList('ff_Recommended', _Recommended);
  }

  void insertAtIndexInRecommended(int index, String value) {
    Recommended.insert(index, value);
    prefs.setStringList('ff_Recommended', _Recommended);
  }

  final _docnoManager = FutureRequestManager<int>();
  Future<int> docno({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _docnoManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDocnoCache() => _docnoManager.clear();
  void clearDocnoCacheKey(String? uniqueKey) =>
      _docnoManager.clearRequest(uniqueKey);

  final _notificationManager = FutureRequestManager<int>();
  Future<int> notification({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<int> Function() requestFn,
  }) =>
      _notificationManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearNotificationCache() => _notificationManager.clear();
  void clearNotificationCacheKey(String? uniqueKey) =>
      _notificationManager.clearRequest(uniqueKey);

  final _chatManager = FutureRequestManager<List<ChatinvitationRecord>>();
  Future<List<ChatinvitationRecord>> chat({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ChatinvitationRecord>> Function() requestFn,
  }) =>
      _chatManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChatCache() => _chatManager.clear();
  void clearChatCacheKey(String? uniqueKey) =>
      _chatManager.clearRequest(uniqueKey);

  final _allnotManager = FutureRequestManager<List<NotificationsRecord>>();
  Future<List<NotificationsRecord>> allnot({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<NotificationsRecord>> Function() requestFn,
  }) =>
      _allnotManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearAllnotCache() => _allnotManager.clear();
  void clearAllnotCacheKey(String? uniqueKey) =>
      _allnotManager.clearRequest(uniqueKey);

  final _bookingManager = FutureRequestManager<List<BookingsRecord>>();
  Future<List<BookingsRecord>> booking({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<BookingsRecord>> Function() requestFn,
  }) =>
      _bookingManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBookingCache() => _bookingManager.clear();
  void clearBookingCacheKey(String? uniqueKey) =>
      _bookingManager.clearRequest(uniqueKey);

  final _chatqManager = StreamRequestManager<List<ChatsRecord>>();
  Stream<List<ChatsRecord>> chatq({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ChatsRecord>> Function() requestFn,
  }) =>
      _chatqManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearChatqCache() => _chatqManager.clear();
  void clearChatqCacheKey(String? uniqueKey) =>
      _chatqManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
