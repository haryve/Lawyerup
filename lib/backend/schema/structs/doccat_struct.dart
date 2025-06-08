// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoccatStruct extends FFFirebaseStruct {
  DoccatStruct({
    List<String>? doc1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _doc1 = doc1,
        super(firestoreUtilData);

  // "DOC1" field.
  List<String>? _doc1;
  List<String> get doc1 => _doc1 ?? const [];
  set doc1(List<String>? val) => _doc1 = val;

  void updateDoc1(Function(List<String>) updateFn) {
    updateFn(_doc1 ??= []);
  }

  bool hasDoc1() => _doc1 != null;

  static DoccatStruct fromMap(Map<String, dynamic> data) => DoccatStruct(
        doc1: getDataList(data['DOC1']),
      );

  static DoccatStruct? maybeFromMap(dynamic data) =>
      data is Map ? DoccatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'DOC1': _doc1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'DOC1': serializeParam(
          _doc1,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DoccatStruct fromSerializableMap(Map<String, dynamic> data) =>
      DoccatStruct(
        doc1: deserializeParam<String>(
          data['DOC1'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DoccatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DoccatStruct && listEquality.equals(doc1, other.doc1);
  }

  @override
  int get hashCode => const ListEquality().hash([doc1]);
}

DoccatStruct createDoccatStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DoccatStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DoccatStruct? updateDoccatStruct(
  DoccatStruct? doccat, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    doccat
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDoccatStructData(
  Map<String, dynamic> firestoreData,
  DoccatStruct? doccat,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (doccat == null) {
    return;
  }
  if (doccat.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && doccat.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final doccatData = getDoccatFirestoreData(doccat, forFieldValue);
  final nestedData = doccatData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = doccat.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDoccatFirestoreData(
  DoccatStruct? doccat, [
  bool forFieldValue = false,
]) {
  if (doccat == null) {
    return {};
  }
  final firestoreData = mapToFirestore(doccat.toMap());

  // Add any Firestore field values
  doccat.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDoccatListFirestoreData(
  List<DoccatStruct>? doccats,
) =>
    doccats?.map((e) => getDoccatFirestoreData(e, true)).toList() ?? [];
