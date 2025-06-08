import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lastmessage" field.
  String? _lastmessage;
  String get lastmessage => _lastmessage ?? '';
  bool hasLastmessage() => _lastmessage != null;

  // "lastmessagetime" field.
  DateTime? _lastmessagetime;
  DateTime? get lastmessagetime => _lastmessagetime;
  bool hasLastmessagetime() => _lastmessagetime != null;

  // "Participantimages" field.
  List<String>? _participantimages;
  List<String> get participantimages => _participantimages ?? const [];
  bool hasParticipantimages() => _participantimages != null;

  // "participantids" field.
  List<DocumentReference>? _participantids;
  List<DocumentReference> get participantids => _participantids ?? const [];
  bool hasParticipantids() => _participantids != null;

  // "participantsnames" field.
  List<String>? _participantsnames;
  List<String> get participantsnames => _participantsnames ?? const [];
  bool hasParticipantsnames() => _participantsnames != null;

  // "lastmessageimage" field.
  String? _lastmessageimage;
  String get lastmessageimage => _lastmessageimage ?? '';
  bool hasLastmessageimage() => _lastmessageimage != null;

  // "lastmessagevideo" field.
  String? _lastmessagevideo;
  String get lastmessagevideo => _lastmessagevideo ?? '';
  bool hasLastmessagevideo() => _lastmessagevideo != null;

  // "lastmessageaudio" field.
  String? _lastmessageaudio;
  String get lastmessageaudio => _lastmessageaudio ?? '';
  bool hasLastmessageaudio() => _lastmessageaudio != null;

  // "lastmessagetype" field.
  String? _lastmessagetype;
  String get lastmessagetype => _lastmessagetype ?? '';
  bool hasLastmessagetype() => _lastmessagetype != null;

  // "Lastmessageseen" field.
  bool? _lastmessageseen;
  bool get lastmessageseen => _lastmessageseen ?? false;
  bool hasLastmessageseen() => _lastmessageseen != null;

  void _initializeFields() {
    _lastmessage = snapshotData['lastmessage'] as String?;
    _lastmessagetime = snapshotData['lastmessagetime'] as DateTime?;
    _participantimages = getDataList(snapshotData['Participantimages']);
    _participantids = getDataList(snapshotData['participantids']);
    _participantsnames = getDataList(snapshotData['participantsnames']);
    _lastmessageimage = snapshotData['lastmessageimage'] as String?;
    _lastmessagevideo = snapshotData['lastmessagevideo'] as String?;
    _lastmessageaudio = snapshotData['lastmessageaudio'] as String?;
    _lastmessagetype = snapshotData['lastmessagetype'] as String?;
    _lastmessageseen = snapshotData['Lastmessageseen'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? lastmessage,
  DateTime? lastmessagetime,
  String? lastmessageimage,
  String? lastmessagevideo,
  String? lastmessageaudio,
  String? lastmessagetype,
  bool? lastmessageseen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lastmessage': lastmessage,
      'lastmessagetime': lastmessagetime,
      'lastmessageimage': lastmessageimage,
      'lastmessagevideo': lastmessagevideo,
      'lastmessageaudio': lastmessageaudio,
      'lastmessagetype': lastmessagetype,
      'Lastmessageseen': lastmessageseen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.lastmessage == e2?.lastmessage &&
        e1?.lastmessagetime == e2?.lastmessagetime &&
        listEquality.equals(e1?.participantimages, e2?.participantimages) &&
        listEquality.equals(e1?.participantids, e2?.participantids) &&
        listEquality.equals(e1?.participantsnames, e2?.participantsnames) &&
        e1?.lastmessageimage == e2?.lastmessageimage &&
        e1?.lastmessagevideo == e2?.lastmessagevideo &&
        e1?.lastmessageaudio == e2?.lastmessageaudio &&
        e1?.lastmessagetype == e2?.lastmessagetype &&
        e1?.lastmessageseen == e2?.lastmessageseen;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.lastmessage,
        e?.lastmessagetime,
        e?.participantimages,
        e?.participantids,
        e?.participantsnames,
        e?.lastmessageimage,
        e?.lastmessagevideo,
        e?.lastmessageaudio,
        e?.lastmessagetype,
        e?.lastmessageseen
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
