import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimerRecord extends FirestoreRecord {
  TimerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "callstarttime" field.
  DateTime? _callstarttime;
  DateTime? get callstarttime => _callstarttime;
  bool hasCallstarttime() => _callstarttime != null;

  // "callendtime" field.
  DateTime? _callendtime;
  DateTime? get callendtime => _callendtime;
  bool hasCallendtime() => _callendtime != null;

  // "callcost" field.
  int? _callcost;
  int get callcost => _callcost ?? 0;
  bool hasCallcost() => _callcost != null;

  // "lawyer" field.
  DocumentReference? _lawyer;
  DocumentReference? get lawyer => _lawyer;
  bool hasLawyer() => _lawyer != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "totalcallcost" field.
  int? _totalcallcost;
  int get totalcallcost => _totalcallcost ?? 0;
  bool hasTotalcallcost() => _totalcallcost != null;

  // "callstarttimee" field.
  int? _callstarttimee;
  int get callstarttimee => _callstarttimee ?? 0;
  bool hasCallstarttimee() => _callstarttimee != null;

  void _initializeFields() {
    _callstarttime = snapshotData['callstarttime'] as DateTime?;
    _callendtime = snapshotData['callendtime'] as DateTime?;
    _callcost = castToType<int>(snapshotData['callcost']);
    _lawyer = snapshotData['lawyer'] as DocumentReference?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _totalcallcost = castToType<int>(snapshotData['totalcallcost']);
    _callstarttimee = castToType<int>(snapshotData['callstarttimee']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('timer');

  static Stream<TimerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimerRecord.fromSnapshot(s));

  static Future<TimerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimerRecord.fromSnapshot(s));

  static TimerRecord fromSnapshot(DocumentSnapshot snapshot) => TimerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimerRecordData({
  DateTime? callstarttime,
  DateTime? callendtime,
  int? callcost,
  DocumentReference? lawyer,
  DocumentReference? userref,
  int? totalcallcost,
  int? callstarttimee,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'callstarttime': callstarttime,
      'callendtime': callendtime,
      'callcost': callcost,
      'lawyer': lawyer,
      'userref': userref,
      'totalcallcost': totalcallcost,
      'callstarttimee': callstarttimee,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimerRecordDocumentEquality implements Equality<TimerRecord> {
  const TimerRecordDocumentEquality();

  @override
  bool equals(TimerRecord? e1, TimerRecord? e2) {
    return e1?.callstarttime == e2?.callstarttime &&
        e1?.callendtime == e2?.callendtime &&
        e1?.callcost == e2?.callcost &&
        e1?.lawyer == e2?.lawyer &&
        e1?.userref == e2?.userref &&
        e1?.totalcallcost == e2?.totalcallcost &&
        e1?.callstarttimee == e2?.callstarttimee;
  }

  @override
  int hash(TimerRecord? e) => const ListEquality().hash([
        e?.callstarttime,
        e?.callendtime,
        e?.callcost,
        e?.lawyer,
        e?.userref,
        e?.totalcallcost,
        e?.callstarttimee
      ]);

  @override
  bool isValidKey(Object? o) => o is TimerRecord;
}
