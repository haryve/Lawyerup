import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SupportTicketRecord extends FirestoreRecord {
  SupportTicketRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "issue" field.
  String? _issue;
  String get issue => _issue ?? '';
  bool hasIssue() => _issue != null;

  // "issueimage" field.
  String? _issueimage;
  String get issueimage => _issueimage ?? '';
  bool hasIssueimage() => _issueimage != null;

  // "usrref" field.
  DocumentReference? _usrref;
  DocumentReference? get usrref => _usrref;
  bool hasUsrref() => _usrref != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _subject = snapshotData['subject'] as String?;
    _issue = snapshotData['issue'] as String?;
    _issueimage = snapshotData['issueimage'] as String?;
    _usrref = snapshotData['usrref'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SupportTicket');

  static Stream<SupportTicketRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SupportTicketRecord.fromSnapshot(s));

  static Future<SupportTicketRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SupportTicketRecord.fromSnapshot(s));

  static SupportTicketRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SupportTicketRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SupportTicketRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SupportTicketRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SupportTicketRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SupportTicketRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSupportTicketRecordData({
  String? name,
  String? subject,
  String? issue,
  String? issueimage,
  DocumentReference? usrref,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'subject': subject,
      'issue': issue,
      'issueimage': issueimage,
      'usrref': usrref,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class SupportTicketRecordDocumentEquality
    implements Equality<SupportTicketRecord> {
  const SupportTicketRecordDocumentEquality();

  @override
  bool equals(SupportTicketRecord? e1, SupportTicketRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.subject == e2?.subject &&
        e1?.issue == e2?.issue &&
        e1?.issueimage == e2?.issueimage &&
        e1?.usrref == e2?.usrref &&
        e1?.time == e2?.time;
  }

  @override
  int hash(SupportTicketRecord? e) => const ListEquality()
      .hash([e?.name, e?.subject, e?.issue, e?.issueimage, e?.usrref, e?.time]);

  @override
  bool isValidKey(Object? o) => o is SupportTicketRecord;
}
