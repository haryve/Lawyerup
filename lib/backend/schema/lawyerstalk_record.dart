import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LawyerstalkRecord extends FirestoreRecord {
  LawyerstalkRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "SENDERid" field.
  DocumentReference? _sENDERid;
  DocumentReference? get sENDERid => _sENDERid;
  bool hasSENDERid() => _sENDERid != null;

  // "SENDERNAME" field.
  String? _sendername;
  String get sendername => _sendername ?? '';
  bool hasSendername() => _sendername != null;

  // "SENDERDP" field.
  String? _senderdp;
  String get senderdp => _senderdp ?? '';
  bool hasSenderdp() => _senderdp != null;

  // "SENDERIMG" field.
  String? _senderimg;
  String get senderimg => _senderimg ?? '';
  bool hasSenderimg() => _senderimg != null;

  // "SENDERMSG" field.
  String? _sendermsg;
  String get sendermsg => _sendermsg ?? '';
  bool hasSendermsg() => _sendermsg != null;

  // "SENDERTS" field.
  DateTime? _senderts;
  DateTime? get senderts => _senderts;
  bool hasSenderts() => _senderts != null;

  // "SENDERaUDIO" field.
  String? _sENDERaUDIO;
  String get sENDERaUDIO => _sENDERaUDIO ?? '';
  bool hasSENDERaUDIO() => _sENDERaUDIO != null;

  // "docref" field.
  DocumentReference? _docref;
  DocumentReference? get docref => _docref;
  bool hasDocref() => _docref != null;

  void _initializeFields() {
    _sENDERid = snapshotData['SENDERid'] as DocumentReference?;
    _sendername = snapshotData['SENDERNAME'] as String?;
    _senderdp = snapshotData['SENDERDP'] as String?;
    _senderimg = snapshotData['SENDERIMG'] as String?;
    _sendermsg = snapshotData['SENDERMSG'] as String?;
    _senderts = snapshotData['SENDERTS'] as DateTime?;
    _sENDERaUDIO = snapshotData['SENDERaUDIO'] as String?;
    _docref = snapshotData['docref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LAWYERSTALK');

  static Stream<LawyerstalkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LawyerstalkRecord.fromSnapshot(s));

  static Future<LawyerstalkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LawyerstalkRecord.fromSnapshot(s));

  static LawyerstalkRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LawyerstalkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LawyerstalkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LawyerstalkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LawyerstalkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LawyerstalkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLawyerstalkRecordData({
  DocumentReference? sENDERid,
  String? sendername,
  String? senderdp,
  String? senderimg,
  String? sendermsg,
  DateTime? senderts,
  String? sENDERaUDIO,
  DocumentReference? docref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SENDERid': sENDERid,
      'SENDERNAME': sendername,
      'SENDERDP': senderdp,
      'SENDERIMG': senderimg,
      'SENDERMSG': sendermsg,
      'SENDERTS': senderts,
      'SENDERaUDIO': sENDERaUDIO,
      'docref': docref,
    }.withoutNulls,
  );

  return firestoreData;
}

class LawyerstalkRecordDocumentEquality implements Equality<LawyerstalkRecord> {
  const LawyerstalkRecordDocumentEquality();

  @override
  bool equals(LawyerstalkRecord? e1, LawyerstalkRecord? e2) {
    return e1?.sENDERid == e2?.sENDERid &&
        e1?.sendername == e2?.sendername &&
        e1?.senderdp == e2?.senderdp &&
        e1?.senderimg == e2?.senderimg &&
        e1?.sendermsg == e2?.sendermsg &&
        e1?.senderts == e2?.senderts &&
        e1?.sENDERaUDIO == e2?.sENDERaUDIO &&
        e1?.docref == e2?.docref;
  }

  @override
  int hash(LawyerstalkRecord? e) => const ListEquality().hash([
        e?.sENDERid,
        e?.sendername,
        e?.senderdp,
        e?.senderimg,
        e?.sendermsg,
        e?.senderts,
        e?.sENDERaUDIO,
        e?.docref
      ]);

  @override
  bool isValidKey(Object? o) => o is LawyerstalkRecord;
}
