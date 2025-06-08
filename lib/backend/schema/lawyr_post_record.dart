import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LawyrPostRecord extends FirestoreRecord {
  LawyrPostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postimage" field.
  String? _postimage;
  String get postimage => _postimage ?? '';
  bool hasPostimage() => _postimage != null;

  // "Postuser" field.
  DocumentReference? _postuser;
  DocumentReference? get postuser => _postuser;
  bool hasPostuser() => _postuser != null;

  // "Usershares" field.
  int? _usershares;
  int get usershares => _usershares ?? 0;
  bool hasUsershares() => _usershares != null;

  // "Posttext" field.
  String? _posttext;
  String get posttext => _posttext ?? '';
  bool hasPosttext() => _posttext != null;

  // "postusername" field.
  String? _postusername;
  String get postusername => _postusername ?? '';
  bool hasPostusername() => _postusername != null;

  // "postuserimage" field.
  String? _postuserimage;
  String get postuserimage => _postuserimage ?? '';
  bool hasPostuserimage() => _postuserimage != null;

  // "UserLikes" field.
  List<DocumentReference>? _userLikes;
  List<DocumentReference> get userLikes => _userLikes ?? const [];
  bool hasUserLikes() => _userLikes != null;

  // "UserBookmarks" field.
  List<DocumentReference>? _userBookmarks;
  List<DocumentReference> get userBookmarks => _userBookmarks ?? const [];
  bool hasUserBookmarks() => _userBookmarks != null;

  // "Createdtime" field.
  DateTime? _createdtime;
  DateTime? get createdtime => _createdtime;
  bool hasCreatedtime() => _createdtime != null;

  // "commentscount" field.
  int? _commentscount;
  int get commentscount => _commentscount ?? 0;
  bool hasCommentscount() => _commentscount != null;

  // "PosterName" field.
  String? _posterName;
  String get posterName => _posterName ?? '';
  bool hasPosterName() => _posterName != null;

  // "lawyers" field.
  DocumentReference? _lawyers;
  DocumentReference? get lawyers => _lawyers;
  bool hasLawyers() => _lawyers != null;

  // "postvideo" field.
  String? _postvideo;
  String get postvideo => _postvideo ?? '';
  bool hasPostvideo() => _postvideo != null;

  // "comments" field.
  DocumentReference? _comments;
  DocumentReference? get comments => _comments;
  bool hasComments() => _comments != null;

  void _initializeFields() {
    _postimage = snapshotData['postimage'] as String?;
    _postuser = snapshotData['Postuser'] as DocumentReference?;
    _usershares = castToType<int>(snapshotData['Usershares']);
    _posttext = snapshotData['Posttext'] as String?;
    _postusername = snapshotData['postusername'] as String?;
    _postuserimage = snapshotData['postuserimage'] as String?;
    _userLikes = getDataList(snapshotData['UserLikes']);
    _userBookmarks = getDataList(snapshotData['UserBookmarks']);
    _createdtime = snapshotData['Createdtime'] as DateTime?;
    _commentscount = castToType<int>(snapshotData['commentscount']);
    _posterName = snapshotData['PosterName'] as String?;
    _lawyers = snapshotData['lawyers'] as DocumentReference?;
    _postvideo = snapshotData['postvideo'] as String?;
    _comments = snapshotData['comments'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lawyr_post');

  static Stream<LawyrPostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LawyrPostRecord.fromSnapshot(s));

  static Future<LawyrPostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LawyrPostRecord.fromSnapshot(s));

  static LawyrPostRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LawyrPostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LawyrPostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LawyrPostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LawyrPostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LawyrPostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLawyrPostRecordData({
  String? postimage,
  DocumentReference? postuser,
  int? usershares,
  String? posttext,
  String? postusername,
  String? postuserimage,
  DateTime? createdtime,
  int? commentscount,
  String? posterName,
  DocumentReference? lawyers,
  String? postvideo,
  DocumentReference? comments,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postimage': postimage,
      'Postuser': postuser,
      'Usershares': usershares,
      'Posttext': posttext,
      'postusername': postusername,
      'postuserimage': postuserimage,
      'Createdtime': createdtime,
      'commentscount': commentscount,
      'PosterName': posterName,
      'lawyers': lawyers,
      'postvideo': postvideo,
      'comments': comments,
    }.withoutNulls,
  );

  return firestoreData;
}

class LawyrPostRecordDocumentEquality implements Equality<LawyrPostRecord> {
  const LawyrPostRecordDocumentEquality();

  @override
  bool equals(LawyrPostRecord? e1, LawyrPostRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postimage == e2?.postimage &&
        e1?.postuser == e2?.postuser &&
        e1?.usershares == e2?.usershares &&
        e1?.posttext == e2?.posttext &&
        e1?.postusername == e2?.postusername &&
        e1?.postuserimage == e2?.postuserimage &&
        listEquality.equals(e1?.userLikes, e2?.userLikes) &&
        listEquality.equals(e1?.userBookmarks, e2?.userBookmarks) &&
        e1?.createdtime == e2?.createdtime &&
        e1?.commentscount == e2?.commentscount &&
        e1?.posterName == e2?.posterName &&
        e1?.lawyers == e2?.lawyers &&
        e1?.postvideo == e2?.postvideo &&
        e1?.comments == e2?.comments;
  }

  @override
  int hash(LawyrPostRecord? e) => const ListEquality().hash([
        e?.postimage,
        e?.postuser,
        e?.usershares,
        e?.posttext,
        e?.postusername,
        e?.postuserimage,
        e?.userLikes,
        e?.userBookmarks,
        e?.createdtime,
        e?.commentscount,
        e?.posterName,
        e?.lawyers,
        e?.postvideo,
        e?.comments
      ]);

  @override
  bool isValidKey(Object? o) => o is LawyrPostRecord;
}
