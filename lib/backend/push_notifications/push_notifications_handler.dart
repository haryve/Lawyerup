import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
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
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'AuthenticateSolo1': ParameterData.none(),
  'bforgotpassword': ParameterData.none(),
  'bPinCode': (data) async => ParameterData(
        allParams: {
          'mobile': getParameter<int>(data, 'mobile'),
        },
      ),
  'bProfileCreateEdit': ParameterData.none(),
  'termsofservice': ParameterData.none(),
  'Supportticket': ParameterData.none(),
  'SearchResults': ParameterData.none(),
  'psychologists': ParameterData.none(),
  'Addfundstransactions': ParameterData.none(),
  'AddfundCheckout': (data) async => ParameterData(
        allParams: {
          'amount': getParameter<int>(data, 'amount'),
        },
      ),
  'Addfundssuccess': ParameterData.none(),
  'Addfunds': ParameterData.none(),
  'SearchResultscategory': (data) async => ParameterData(
        allParams: {
          'category': getParameter<String>(data, 'category'),
        },
      ),
  'mobilelogin': ParameterData.none(),
  'doctorProfiledemo': (data) async => ParameterData(
        allParams: {
          'lawyerrefere': getParameter<DocumentReference>(data, 'lawyerrefere'),
        },
      ),
  'admindoctoregister': ParameterData.none(),
  'call_screen': (data) async => ParameterData(
        allParams: {
          'callRef': getParameter<DocumentReference>(data, 'callRef'),
        },
      ),
  'WithdrawFunds': ParameterData.none(),
  'withdrawCheckout': (data) async => ParameterData(
        allParams: {
          'amount': getParameter<int>(data, 'amount'),
        },
      ),
  'Successfulwithdrawal': ParameterData.none(),
  'withdrawlhistory': ParameterData.none(),
  'videocall': (data) async => ParameterData(
        allParams: {
          'callref': getParameter<DocumentReference>(data, 'callref'),
        },
      ),
  'chatting_page': (data) async => ParameterData(
        allParams: {
          'chatID': getParameter<DocumentReference>(data, 'chatID'),
        },
      ),
  'doctorpostdetails': (data) async => ParameterData(
        allParams: {
          'postid': getParameter<DocumentReference>(data, 'postid'),
        },
      ),
  'Notifications': ParameterData.none(),
  'doctorprofileadmin': ParameterData.none(),
  'Doctorslobby': ParameterData.none(),
  'userprofile': ParameterData.none(),
  'doctorprofile': (data) async => ParameterData(
        allParams: {
          'lawyrref': getParameter<DocumentReference>(data, 'lawyrref'),
        },
      ),
  'Privacypolicy': ParameterData.none(),
  'drarovia': ParameterData.none(),
  'psychiatrists': (data) async => ParameterData(
        allParams: {
          'doctortype': getParameter<String>(data, 'doctortype'),
          't2': getParameter<String>(data, 't2'),
          't3': getParameter<String>(data, 't3'),
          't4': getParameter<String>(data, 't4'),
          't5': getParameter<String>(data, 't5'),
          't6': getParameter<String>(data, 't6'),
          't7': getParameter<String>(data, 't7'),
          't8': getParameter<String>(data, 't8'),
          't9': getParameter<String>(data, 't9'),
          't10': getParameter<String>(data, 't10'),
        },
      ),
  'aichat': ParameterData.none(),
  'Exp': (data) async => ParameterData(
        allParams: {
          'rest': getParameter<String>(data, 'rest'),
        },
      ),
  'Landingpage': ParameterData.none(),
  'Doc': ParameterData.none(),
  'ExpCopy': ParameterData.none(),
  'video': ParameterData.none(),
  'video2Copy': ParameterData.none(),
  'Docfindermap': ParameterData.none(),
  'Finddoconmap': ParameterData.none(),
  'onboarding': ParameterData.none(),
  'Onboarding2': ParameterData.none(),
  'videoCopy': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
