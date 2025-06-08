import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CallsRecord extends FirestoreRecord {
  CallsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_A" field.
  DocumentReference? _userA;
  DocumentReference? get userA => _userA;
  bool hasUserA() => _userA != null;

  // "user_b" field.
  DocumentReference? _userB;
  DocumentReference? get userB => _userB;
  bool hasUserB() => _userB != null;

  // "app_id" field.
  String? _appId;
  String get appId => _appId ?? '';
  bool hasAppId() => _appId != null;

  // "token_id" field.
  String? _tokenId;
  String get tokenId => _tokenId ?? '';
  bool hasTokenId() => _tokenId != null;

  // "channelName" field.
  String? _channelName;
  String get channelName => _channelName ?? '';
  bool hasChannelName() => _channelName != null;

  // "ringing" field.
  bool? _ringing;
  bool get ringing => _ringing ?? false;
  bool hasRinging() => _ringing != null;

  // "call_ended" field.
  bool? _callEnded;
  bool get callEnded => _callEnded ?? false;
  bool hasCallEnded() => _callEnded != null;

  // "call_declined" field.
  bool? _callDeclined;
  bool get callDeclined => _callDeclined ?? false;
  bool hasCallDeclined() => _callDeclined != null;

  // "declined_by" field.
  DocumentReference? _declinedBy;
  DocumentReference? get declinedBy => _declinedBy;
  bool hasDeclinedBy() => _declinedBy != null;

  // "user_A_joined" field.
  bool? _userAJoined;
  bool get userAJoined => _userAJoined ?? false;
  bool hasUserAJoined() => _userAJoined != null;

  // "user_b_joined" field.
  bool? _userBJoined;
  bool get userBJoined => _userBJoined ?? false;
  bool hasUserBJoined() => _userBJoined != null;

  // "call_placed_at" field.
  DateTime? _callPlacedAt;
  DateTime? get callPlacedAt => _callPlacedAt;
  bool hasCallPlacedAt() => _callPlacedAt != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "videocall" field.
  bool? _videocall;
  bool get videocall => _videocall ?? false;
  bool hasVideocall() => _videocall != null;

  void _initializeFields() {
    _userA = snapshotData['user_A'] as DocumentReference?;
    _userB = snapshotData['user_b'] as DocumentReference?;
    _appId = snapshotData['app_id'] as String?;
    _tokenId = snapshotData['token_id'] as String?;
    _channelName = snapshotData['channelName'] as String?;
    _ringing = snapshotData['ringing'] as bool?;
    _callEnded = snapshotData['call_ended'] as bool?;
    _callDeclined = snapshotData['call_declined'] as bool?;
    _declinedBy = snapshotData['declined_by'] as DocumentReference?;
    _userAJoined = snapshotData['user_A_joined'] as bool?;
    _userBJoined = snapshotData['user_b_joined'] as bool?;
    _callPlacedAt = snapshotData['call_placed_at'] as DateTime?;
    _users = getDataList(snapshotData['users']);
    _videocall = snapshotData['videocall'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('calls');

  static Stream<CallsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CallsRecord.fromSnapshot(s));

  static Future<CallsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CallsRecord.fromSnapshot(s));

  static CallsRecord fromSnapshot(DocumentSnapshot snapshot) => CallsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CallsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CallsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CallsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CallsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCallsRecordData({
  DocumentReference? userA,
  DocumentReference? userB,
  String? appId,
  String? tokenId,
  String? channelName,
  bool? ringing,
  bool? callEnded,
  bool? callDeclined,
  DocumentReference? declinedBy,
  bool? userAJoined,
  bool? userBJoined,
  DateTime? callPlacedAt,
  bool? videocall,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_A': userA,
      'user_b': userB,
      'app_id': appId,
      'token_id': tokenId,
      'channelName': channelName,
      'ringing': ringing,
      'call_ended': callEnded,
      'call_declined': callDeclined,
      'declined_by': declinedBy,
      'user_A_joined': userAJoined,
      'user_b_joined': userBJoined,
      'call_placed_at': callPlacedAt,
      'videocall': videocall,
    }.withoutNulls,
  );

  return firestoreData;
}

class CallsRecordDocumentEquality implements Equality<CallsRecord> {
  const CallsRecordDocumentEquality();

  @override
  bool equals(CallsRecord? e1, CallsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userA == e2?.userA &&
        e1?.userB == e2?.userB &&
        e1?.appId == e2?.appId &&
        e1?.tokenId == e2?.tokenId &&
        e1?.channelName == e2?.channelName &&
        e1?.ringing == e2?.ringing &&
        e1?.callEnded == e2?.callEnded &&
        e1?.callDeclined == e2?.callDeclined &&
        e1?.declinedBy == e2?.declinedBy &&
        e1?.userAJoined == e2?.userAJoined &&
        e1?.userBJoined == e2?.userBJoined &&
        e1?.callPlacedAt == e2?.callPlacedAt &&
        listEquality.equals(e1?.users, e2?.users) &&
        e1?.videocall == e2?.videocall;
  }

  @override
  int hash(CallsRecord? e) => const ListEquality().hash([
        e?.userA,
        e?.userB,
        e?.appId,
        e?.tokenId,
        e?.channelName,
        e?.ringing,
        e?.callEnded,
        e?.callDeclined,
        e?.declinedBy,
        e?.userAJoined,
        e?.userBJoined,
        e?.callPlacedAt,
        e?.users,
        e?.videocall
      ]);

  @override
  bool isValidKey(Object? o) => o is CallsRecord;
}
