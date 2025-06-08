import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepliesRecord extends FirestoreRecord {
  RepliesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comment" field.
  DocumentReference? _comment;
  DocumentReference? get comment => _comment;
  bool hasComment() => _comment != null;

  // "Replytext" field.
  String? _replytext;
  String get replytext => _replytext ?? '';
  bool hasReplytext() => _replytext != null;

  // "ReplyUser" field.
  DocumentReference? _replyUser;
  DocumentReference? get replyUser => _replyUser;
  bool hasReplyUser() => _replyUser != null;

  // "ReplyUsernam" field.
  String? _replyUsernam;
  String get replyUsernam => _replyUsernam ?? '';
  bool hasReplyUsernam() => _replyUsernam != null;

  // "ReplyUserimage" field.
  String? _replyUserimage;
  String get replyUserimage => _replyUserimage ?? '';
  bool hasReplyUserimage() => _replyUserimage != null;

  // "Userlikes" field.
  List<DocumentReference>? _userlikes;
  List<DocumentReference> get userlikes => _userlikes ?? const [];
  bool hasUserlikes() => _userlikes != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _comment = snapshotData['comment'] as DocumentReference?;
    _replytext = snapshotData['Replytext'] as String?;
    _replyUser = snapshotData['ReplyUser'] as DocumentReference?;
    _replyUsernam = snapshotData['ReplyUsernam'] as String?;
    _replyUserimage = snapshotData['ReplyUserimage'] as String?;
    _userlikes = getDataList(snapshotData['Userlikes']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('replies')
          : FirebaseFirestore.instance.collectionGroup('replies');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('replies').doc(id);

  static Stream<RepliesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RepliesRecord.fromSnapshot(s));

  static Future<RepliesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RepliesRecord.fromSnapshot(s));

  static RepliesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RepliesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RepliesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RepliesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RepliesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RepliesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRepliesRecordData({
  DocumentReference? comment,
  String? replytext,
  DocumentReference? replyUser,
  String? replyUsernam,
  String? replyUserimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comment': comment,
      'Replytext': replytext,
      'ReplyUser': replyUser,
      'ReplyUsernam': replyUsernam,
      'ReplyUserimage': replyUserimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class RepliesRecordDocumentEquality implements Equality<RepliesRecord> {
  const RepliesRecordDocumentEquality();

  @override
  bool equals(RepliesRecord? e1, RepliesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.comment == e2?.comment &&
        e1?.replytext == e2?.replytext &&
        e1?.replyUser == e2?.replyUser &&
        e1?.replyUsernam == e2?.replyUsernam &&
        e1?.replyUserimage == e2?.replyUserimage &&
        listEquality.equals(e1?.userlikes, e2?.userlikes);
  }

  @override
  int hash(RepliesRecord? e) => const ListEquality().hash([
        e?.comment,
        e?.replytext,
        e?.replyUser,
        e?.replyUsernam,
        e?.replyUserimage,
        e?.userlikes
      ]);

  @override
  bool isValidKey(Object? o) => o is RepliesRecord;
}
