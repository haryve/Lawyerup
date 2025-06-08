import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "person" field.
  DocumentReference? _person;
  DocumentReference? get person => _person;
  bool hasPerson() => _person != null;

  // "post" field.
  DocumentReference? _post;
  DocumentReference? get post => _post;
  bool hasPost() => _post != null;

  // "TIME" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "senderdp" field.
  String? _senderdp;
  String get senderdp => _senderdp ?? '';
  bool hasSenderdp() => _senderdp != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  // "reply" field.
  String? _reply;
  String get reply => _reply ?? '';
  bool hasReply() => _reply != null;

  // "commentid" field.
  DocumentReference? _commentid;
  DocumentReference? get commentid => _commentid;
  bool hasCommentid() => _commentid != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _seen = snapshotData['seen'] as bool?;
    _person = snapshotData['person'] as DocumentReference?;
    _post = snapshotData['post'] as DocumentReference?;
    _time = snapshotData['TIME'] as DateTime?;
    _senderdp = snapshotData['senderdp'] as String?;
    _comment = snapshotData['comment'] as String?;
    _reply = snapshotData['reply'] as String?;
    _commentid = snapshotData['commentid'] as DocumentReference?;
    _message = snapshotData['Message'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notifications')
          : FirebaseFirestore.instance.collectionGroup('notifications');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('notifications').doc(id);

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? type,
  bool? seen,
  DocumentReference? person,
  DocumentReference? post,
  DateTime? time,
  String? senderdp,
  String? comment,
  String? reply,
  DocumentReference? commentid,
  String? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'seen': seen,
      'person': person,
      'post': post,
      'TIME': time,
      'senderdp': senderdp,
      'comment': comment,
      'reply': reply,
      'commentid': commentid,
      'Message': message,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.seen == e2?.seen &&
        e1?.person == e2?.person &&
        e1?.post == e2?.post &&
        e1?.time == e2?.time &&
        e1?.senderdp == e2?.senderdp &&
        e1?.comment == e2?.comment &&
        e1?.reply == e2?.reply &&
        e1?.commentid == e2?.commentid &&
        e1?.message == e2?.message;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.type,
        e?.seen,
        e?.person,
        e?.post,
        e?.time,
        e?.senderdp,
        e?.comment,
        e?.reply,
        e?.commentid,
        e?.message
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
