import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsercallmanagementRecord extends FirestoreRecord {
  UsercallmanagementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  bool hasActive() => _active != null;

  // "incoming" field.
  bool? _incoming;
  bool get incoming => _incoming ?? false;
  bool hasIncoming() => _incoming != null;

  // "video_call_request" field.
  bool? _videoCallRequest;
  bool get videoCallRequest => _videoCallRequest ?? false;
  bool hasVideoCallRequest() => _videoCallRequest != null;

  // "in_call" field.
  bool? _inCall;
  bool get inCall => _inCall ?? false;
  bool hasInCall() => _inCall != null;

  // "activecallref" field.
  DocumentReference? _activecallref;
  DocumentReference? get activecallref => _activecallref;
  bool hasActivecallref() => _activecallref != null;

  // "ts" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  void _initializeFields() {
    _active = snapshotData['active'] as bool?;
    _incoming = snapshotData['incoming'] as bool?;
    _videoCallRequest = snapshotData['video_call_request'] as bool?;
    _inCall = snapshotData['in_call'] as bool?;
    _activecallref = snapshotData['activecallref'] as DocumentReference?;
    _ts = snapshotData['ts'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usercallmanagement');

  static Stream<UsercallmanagementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsercallmanagementRecord.fromSnapshot(s));

  static Future<UsercallmanagementRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsercallmanagementRecord.fromSnapshot(s));

  static UsercallmanagementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsercallmanagementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsercallmanagementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsercallmanagementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsercallmanagementRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsercallmanagementRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsercallmanagementRecordData({
  bool? active,
  bool? incoming,
  bool? videoCallRequest,
  bool? inCall,
  DocumentReference? activecallref,
  DateTime? ts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'active': active,
      'incoming': incoming,
      'video_call_request': videoCallRequest,
      'in_call': inCall,
      'activecallref': activecallref,
      'ts': ts,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsercallmanagementRecordDocumentEquality
    implements Equality<UsercallmanagementRecord> {
  const UsercallmanagementRecordDocumentEquality();

  @override
  bool equals(UsercallmanagementRecord? e1, UsercallmanagementRecord? e2) {
    return e1?.active == e2?.active &&
        e1?.incoming == e2?.incoming &&
        e1?.videoCallRequest == e2?.videoCallRequest &&
        e1?.inCall == e2?.inCall &&
        e1?.activecallref == e2?.activecallref &&
        e1?.ts == e2?.ts;
  }

  @override
  int hash(UsercallmanagementRecord? e) => const ListEquality().hash([
        e?.active,
        e?.incoming,
        e?.videoCallRequest,
        e?.inCall,
        e?.activecallref,
        e?.ts
      ]);

  @override
  bool isValidKey(Object? o) => o is UsercallmanagementRecord;
}
