import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "commentUser" field.
  DocumentReference? _commentUser;
  DocumentReference? get commentUser => _commentUser;
  bool hasCommentUser() => _commentUser != null;

  // "commentText" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "commentlikes" field.
  int? _commentlikes;
  int get commentlikes => _commentlikes ?? 0;
  bool hasCommentlikes() => _commentlikes != null;

  // "createdtime" field.
  DateTime? _createdtime;
  DateTime? get createdtime => _createdtime;
  bool hasCreatedtime() => _createdtime != null;

  // "commentUsername" field.
  String? _commentUsername;
  String get commentUsername => _commentUsername ?? '';
  bool hasCommentUsername() => _commentUsername != null;

  // "commenterimage" field.
  String? _commenterimage;
  String get commenterimage => _commenterimage ?? '';
  bool hasCommenterimage() => _commenterimage != null;

  // "commentlikeslist" field.
  List<DocumentReference>? _commentlikeslist;
  List<DocumentReference> get commentlikeslist => _commentlikeslist ?? const [];
  bool hasCommentlikeslist() => _commentlikeslist != null;

  // "replies" field.
  List<DocumentReference>? _replies;
  List<DocumentReference> get replies => _replies ?? const [];
  bool hasReplies() => _replies != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentUser = snapshotData['commentUser'] as DocumentReference?;
    _commentText = snapshotData['commentText'] as String?;
    _commentlikes = castToType<int>(snapshotData['commentlikes']);
    _createdtime = snapshotData['createdtime'] as DateTime?;
    _commentUsername = snapshotData['commentUsername'] as String?;
    _commenterimage = snapshotData['commenterimage'] as String?;
    _commentlikeslist = getDataList(snapshotData['commentlikeslist']);
    _replies = getDataList(snapshotData['replies']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comments')
          : FirebaseFirestore.instance.collectionGroup('comments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('comments').doc(id);

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  DocumentReference? commentUser,
  String? commentText,
  int? commentlikes,
  DateTime? createdtime,
  String? commentUsername,
  String? commenterimage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentUser': commentUser,
      'commentText': commentText,
      'commentlikes': commentlikes,
      'createdtime': createdtime,
      'commentUsername': commentUsername,
      'commenterimage': commenterimage,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commentUser == e2?.commentUser &&
        e1?.commentText == e2?.commentText &&
        e1?.commentlikes == e2?.commentlikes &&
        e1?.createdtime == e2?.createdtime &&
        e1?.commentUsername == e2?.commentUsername &&
        e1?.commenterimage == e2?.commenterimage &&
        listEquality.equals(e1?.commentlikeslist, e2?.commentlikeslist) &&
        listEquality.equals(e1?.replies, e2?.replies);
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentUser,
        e?.commentText,
        e?.commentlikes,
        e?.createdtime,
        e?.commentUsername,
        e?.commenterimage,
        e?.commentlikeslist,
        e?.replies
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
