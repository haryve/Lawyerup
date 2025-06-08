import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
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

  // "morning" field.
  List<String>? _morning;
  List<String> get morning => _morning ?? const [];
  bool hasMorning() => _morning != null;

  // "evening" field.
  List<String>? _evening;
  List<String> get evening => _evening ?? const [];
  bool hasEvening() => _evening != null;

  // "afternoon" field.
  List<String>? _afternoon;
  List<String> get afternoon => _afternoon ?? const [];
  bool hasAfternoon() => _afternoon != null;

  // "night" field.
  List<String>? _night;
  List<String> get night => _night ?? const [];
  bool hasNight() => _night != null;

  // "availaiblitylist" field.
  List<String>? _availaiblitylist;
  List<String> get availaiblitylist => _availaiblitylist ?? const [];
  bool hasAvailaiblitylist() => _availaiblitylist != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  bool hasEnddate() => _enddate != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _drref = snapshotData['drref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _morning = getDataList(snapshotData['morning']);
    _evening = getDataList(snapshotData['evening']);
    _afternoon = getDataList(snapshotData['afternoon']);
    _night = getDataList(snapshotData['night']);
    _availaiblitylist = getDataList(snapshotData['availaiblitylist']);
    _time = snapshotData['time'] as String?;
    _enddate = snapshotData['enddate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? userref,
  DocumentReference? drref,
  DateTime? date,
  String? time,
  DateTime? enddate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'drref': drref,
      'date': date,
      'time': time,
      'enddate': enddate,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userref == e2?.userref &&
        e1?.drref == e2?.drref &&
        e1?.date == e2?.date &&
        listEquality.equals(e1?.morning, e2?.morning) &&
        listEquality.equals(e1?.evening, e2?.evening) &&
        listEquality.equals(e1?.afternoon, e2?.afternoon) &&
        listEquality.equals(e1?.night, e2?.night) &&
        listEquality.equals(e1?.availaiblitylist, e2?.availaiblitylist) &&
        e1?.time == e2?.time &&
        e1?.enddate == e2?.enddate;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.userref,
        e?.drref,
        e?.date,
        e?.morning,
        e?.evening,
        e?.afternoon,
        e?.night,
        e?.availaiblitylist,
        e?.time,
        e?.enddate
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
