import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorsspecRecord extends FirestoreRecord {
  DoctorsspecRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "def" field.
  String? _def;
  String get def => _def ?? '';
  bool hasDef() => _def != null;

  // "speciality" field.
  String? _speciality;
  String get speciality => _speciality ?? '';
  bool hasSpeciality() => _speciality != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _def = snapshotData['def'] as String?;
    _speciality = snapshotData['speciality'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctorsspec');

  static Stream<DoctorsspecRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorsspecRecord.fromSnapshot(s));

  static Future<DoctorsspecRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorsspecRecord.fromSnapshot(s));

  static DoctorsspecRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorsspecRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorsspecRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorsspecRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorsspecRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorsspecRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorsspecRecordData({
  DocumentReference? userref,
  String? def,
  String? speciality,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'def': def,
      'speciality': speciality,
    }.withoutNulls,
  );

  return firestoreData;
}

class DoctorsspecRecordDocumentEquality implements Equality<DoctorsspecRecord> {
  const DoctorsspecRecordDocumentEquality();

  @override
  bool equals(DoctorsspecRecord? e1, DoctorsspecRecord? e2) {
    return e1?.userref == e2?.userref &&
        e1?.def == e2?.def &&
        e1?.speciality == e2?.speciality;
  }

  @override
  int hash(DoctorsspecRecord? e) =>
      const ListEquality().hash([e?.userref, e?.def, e?.speciality]);

  @override
  bool isValidKey(Object? o) => o is DoctorsspecRecord;
}
