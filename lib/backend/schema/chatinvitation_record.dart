import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatinvitationRecord extends FirestoreRecord {
  ChatinvitationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "Chataccepted" field.
  bool? _chataccepted;
  bool get chataccepted => _chataccepted ?? false;
  bool hasChataccepted() => _chataccepted != null;

  // "ChatRejected" field.
  bool? _chatRejected;
  bool get chatRejected => _chatRejected ?? false;
  bool hasChatRejected() => _chatRejected != null;

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "Message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sender = snapshotData['Sender'] as DocumentReference?;
    _time = snapshotData['time'] as DateTime?;
    _chataccepted = snapshotData['Chataccepted'] as bool?;
    _chatRejected = snapshotData['ChatRejected'] as bool?;
    _state = snapshotData['State'] as String?;
    _message = snapshotData['Message'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chatinvitation')
          : FirebaseFirestore.instance.collectionGroup('chatinvitation');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('chatinvitation').doc(id);

  static Stream<ChatinvitationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatinvitationRecord.fromSnapshot(s));

  static Future<ChatinvitationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatinvitationRecord.fromSnapshot(s));

  static ChatinvitationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatinvitationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatinvitationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatinvitationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatinvitationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatinvitationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatinvitationRecordData({
  DocumentReference? sender,
  DateTime? time,
  bool? chataccepted,
  bool? chatRejected,
  String? state,
  String? message,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Sender': sender,
      'time': time,
      'Chataccepted': chataccepted,
      'ChatRejected': chatRejected,
      'State': state,
      'Message': message,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatinvitationRecordDocumentEquality
    implements Equality<ChatinvitationRecord> {
  const ChatinvitationRecordDocumentEquality();

  @override
  bool equals(ChatinvitationRecord? e1, ChatinvitationRecord? e2) {
    return e1?.sender == e2?.sender &&
        e1?.time == e2?.time &&
        e1?.chataccepted == e2?.chataccepted &&
        e1?.chatRejected == e2?.chatRejected &&
        e1?.state == e2?.state &&
        e1?.message == e2?.message;
  }

  @override
  int hash(ChatinvitationRecord? e) => const ListEquality().hash([
        e?.sender,
        e?.time,
        e?.chataccepted,
        e?.chatRejected,
        e?.state,
        e?.message
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatinvitationRecord;
}
