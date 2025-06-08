import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Aichat1Record extends FirestoreRecord {
  Aichat1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "propmt" field.
  String? _propmt;
  String get propmt => _propmt ?? '';
  bool hasPropmt() => _propmt != null;

  // "response1" field.
  String? _response1;
  String get response1 => _response1 ?? '';
  bool hasResponse1() => _response1 != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "TimePrompt" field.
  DateTime? _timePrompt;
  DateTime? get timePrompt => _timePrompt;
  bool hasTimePrompt() => _timePrompt != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "lawrfr" field.
  DocumentReference? _lawrfr;
  DocumentReference? get lawrfr => _lawrfr;
  bool hasLawrfr() => _lawrfr != null;

  // "docfindstring" field.
  List<String>? _docfindstring;
  List<String> get docfindstring => _docfindstring ?? const [];
  bool hasDocfindstring() => _docfindstring != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _propmt = snapshotData['propmt'] as String?;
    _response1 = snapshotData['response1'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _timePrompt = snapshotData['TimePrompt'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _type = snapshotData['type'] as String?;
    _lawrfr = snapshotData['lawrfr'] as DocumentReference?;
    _docfindstring = getDataList(snapshotData['docfindstring']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aichat1');

  static Stream<Aichat1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Aichat1Record.fromSnapshot(s));

  static Future<Aichat1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Aichat1Record.fromSnapshot(s));

  static Aichat1Record fromSnapshot(DocumentSnapshot snapshot) =>
      Aichat1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Aichat1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Aichat1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Aichat1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Aichat1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAichat1RecordData({
  DocumentReference? userref,
  String? propmt,
  String? response1,
  DateTime? time,
  DateTime? timePrompt,
  String? image,
  String? type,
  DocumentReference? lawrfr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'propmt': propmt,
      'response1': response1,
      'time': time,
      'TimePrompt': timePrompt,
      'image': image,
      'type': type,
      'lawrfr': lawrfr,
    }.withoutNulls,
  );

  return firestoreData;
}

class Aichat1RecordDocumentEquality implements Equality<Aichat1Record> {
  const Aichat1RecordDocumentEquality();

  @override
  bool equals(Aichat1Record? e1, Aichat1Record? e2) {
    const listEquality = ListEquality();
    return e1?.userref == e2?.userref &&
        e1?.propmt == e2?.propmt &&
        e1?.response1 == e2?.response1 &&
        e1?.time == e2?.time &&
        e1?.timePrompt == e2?.timePrompt &&
        e1?.image == e2?.image &&
        e1?.type == e2?.type &&
        e1?.lawrfr == e2?.lawrfr &&
        listEquality.equals(e1?.docfindstring, e2?.docfindstring);
  }

  @override
  int hash(Aichat1Record? e) => const ListEquality().hash([
        e?.userref,
        e?.propmt,
        e?.response1,
        e?.time,
        e?.timePrompt,
        e?.image,
        e?.type,
        e?.lawrfr,
        e?.docfindstring
      ]);

  @override
  bool isValidKey(Object? o) => o is Aichat1Record;
}
