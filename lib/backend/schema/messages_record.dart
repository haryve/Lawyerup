import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessagesRecord extends FirestoreRecord {
  MessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "SenderID" field.
  DocumentReference? _senderID;
  DocumentReference? get senderID => _senderID;
  bool hasSenderID() => _senderID != null;

  // "Sendername" field.
  String? _sendername;
  String get sendername => _sendername ?? '';
  bool hasSendername() => _sendername != null;

  // "SenderImage" field.
  String? _senderImage;
  String get senderImage => _senderImage ?? '';
  bool hasSenderImage() => _senderImage != null;

  // "Messagetext" field.
  String? _messagetext;
  String get messagetext => _messagetext ?? '';
  bool hasMessagetext() => _messagetext != null;

  // "MessageAudio" field.
  String? _messageAudio;
  String get messageAudio => _messageAudio ?? '';
  bool hasMessageAudio() => _messageAudio != null;

  // "MessageVideo" field.
  String? _messageVideo;
  String get messageVideo => _messageVideo ?? '';
  bool hasMessageVideo() => _messageVideo != null;

  // "messageImage" field.
  String? _messageImage;
  String get messageImage => _messageImage ?? '';
  bool hasMessageImage() => _messageImage != null;

  // "ts" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "messagerepliesto" field.
  DocumentReference? _messagerepliesto;
  DocumentReference? get messagerepliesto => _messagerepliesto;
  bool hasMessagerepliesto() => _messagerepliesto != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  // "seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _senderID = snapshotData['SenderID'] as DocumentReference?;
    _sendername = snapshotData['Sendername'] as String?;
    _senderImage = snapshotData['SenderImage'] as String?;
    _messagetext = snapshotData['Messagetext'] as String?;
    _messageAudio = snapshotData['MessageAudio'] as String?;
    _messageVideo = snapshotData['MessageVideo'] as String?;
    _messageImage = snapshotData['messageImage'] as String?;
    _ts = snapshotData['ts'] as DateTime?;
    _type = snapshotData['type'] as String?;
    _messagerepliesto = snapshotData['messagerepliesto'] as DocumentReference?;
    _file = snapshotData['file'] as String?;
    _seen = snapshotData['seen'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('messages')
          : FirebaseFirestore.instance.collectionGroup('messages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('messages').doc(id);

  static Stream<MessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MessagesRecord.fromSnapshot(s));

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MessagesRecord.fromSnapshot(s));

  static MessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMessagesRecordData({
  DocumentReference? senderID,
  String? sendername,
  String? senderImage,
  String? messagetext,
  String? messageAudio,
  String? messageVideo,
  String? messageImage,
  DateTime? ts,
  String? type,
  DocumentReference? messagerepliesto,
  String? file,
  bool? seen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SenderID': senderID,
      'Sendername': sendername,
      'SenderImage': senderImage,
      'Messagetext': messagetext,
      'MessageAudio': messageAudio,
      'MessageVideo': messageVideo,
      'messageImage': messageImage,
      'ts': ts,
      'type': type,
      'messagerepliesto': messagerepliesto,
      'file': file,
      'seen': seen,
    }.withoutNulls,
  );

  return firestoreData;
}

class MessagesRecordDocumentEquality implements Equality<MessagesRecord> {
  const MessagesRecordDocumentEquality();

  @override
  bool equals(MessagesRecord? e1, MessagesRecord? e2) {
    return e1?.senderID == e2?.senderID &&
        e1?.sendername == e2?.sendername &&
        e1?.senderImage == e2?.senderImage &&
        e1?.messagetext == e2?.messagetext &&
        e1?.messageAudio == e2?.messageAudio &&
        e1?.messageVideo == e2?.messageVideo &&
        e1?.messageImage == e2?.messageImage &&
        e1?.ts == e2?.ts &&
        e1?.type == e2?.type &&
        e1?.messagerepliesto == e2?.messagerepliesto &&
        e1?.file == e2?.file &&
        e1?.seen == e2?.seen;
  }

  @override
  int hash(MessagesRecord? e) => const ListEquality().hash([
        e?.senderID,
        e?.sendername,
        e?.senderImage,
        e?.messagetext,
        e?.messageAudio,
        e?.messageVideo,
        e?.messageImage,
        e?.ts,
        e?.type,
        e?.messagerepliesto,
        e?.file,
        e?.seen
      ]);

  @override
  bool isValidKey(Object? o) => o is MessagesRecord;
}
