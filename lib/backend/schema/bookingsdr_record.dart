import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsdrRecord extends FirestoreRecord {
  BookingsdrRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "drref" field.
  DocumentReference? _drref;
  DocumentReference? get drref => _drref;
  bool hasDrref() => _drref != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _drref = snapshotData['drref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookingsdr');

  static Stream<BookingsdrRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsdrRecord.fromSnapshot(s));

  static Future<BookingsdrRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsdrRecord.fromSnapshot(s));

  static BookingsdrRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsdrRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsdrRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsdrRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsdrRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsdrRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsdrRecordData({
  DocumentReference? userref,
  DocumentReference? drref,
  DateTime? date,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'drref': drref,
      'date': date,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsdrRecordDocumentEquality implements Equality<BookingsdrRecord> {
  const BookingsdrRecordDocumentEquality();

  @override
  bool equals(BookingsdrRecord? e1, BookingsdrRecord? e2) {
    return e1?.userref == e2?.userref &&
        e1?.drref == e2?.drref &&
        e1?.date == e2?.date &&
        e1?.time == e2?.time;
  }

  @override
  int hash(BookingsdrRecord? e) =>
      const ListEquality().hash([e?.userref, e?.drref, e?.date, e?.time]);

  @override
  bool isValidKey(Object? o) => o is BookingsdrRecord;
}
