import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SocialmediapostRecord extends FirestoreRecord {
  SocialmediapostRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "hashtags" field.
  List<String>? _hashtags;
  List<String> get hashtags => _hashtags ?? const [];
  bool hasHashtags() => _hashtags != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _hashtags = getDataList(snapshotData['hashtags']);
    _image = snapshotData['image'] as String?;
    _video = snapshotData['video'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('socialmediapost');

  static Stream<SocialmediapostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SocialmediapostRecord.fromSnapshot(s));

  static Future<SocialmediapostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SocialmediapostRecord.fromSnapshot(s));

  static SocialmediapostRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SocialmediapostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SocialmediapostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SocialmediapostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SocialmediapostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SocialmediapostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSocialmediapostRecordData({
  String? text,
  DocumentReference? user,
  DateTime? time,
  String? image,
  String? video,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'user': user,
      'time': time,
      'image': image,
      'video': video,
    }.withoutNulls,
  );

  return firestoreData;
}

class SocialmediapostRecordDocumentEquality
    implements Equality<SocialmediapostRecord> {
  const SocialmediapostRecordDocumentEquality();

  @override
  bool equals(SocialmediapostRecord? e1, SocialmediapostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.text == e2?.text &&
        e1?.user == e2?.user &&
        e1?.time == e2?.time &&
        listEquality.equals(e1?.hashtags, e2?.hashtags) &&
        e1?.image == e2?.image &&
        e1?.video == e2?.video;
  }

  @override
  int hash(SocialmediapostRecord? e) => const ListEquality()
      .hash([e?.text, e?.user, e?.time, e?.hashtags, e?.image, e?.video]);

  @override
  bool isValidKey(Object? o) => o is SocialmediapostRecord;
}
