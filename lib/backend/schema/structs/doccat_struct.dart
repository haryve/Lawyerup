// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DoccatStruct extends FFFirebaseStruct {
  DoccatStruct({
    String? displayName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _displayName = displayName,
        super(firestoreUtilData);

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  static DoccatStruct fromMap(Map<String, dynamic> data) => DoccatStruct(
        displayName: data['display_name'] as String?,
      );

  static DoccatStruct? maybeFromMap(dynamic data) =>
      data is Map ? DoccatStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'display_name': _displayName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
      }.withoutNulls;

  static DoccatStruct fromSerializableMap(Map<String, dynamic> data) =>
      DoccatStruct(
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DoccatStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DoccatStruct && displayName == other.displayName;
  }

  @override
  int get hashCode => const ListEquality().hash([displayName]);
}

DoccatStruct createDoccatStruct({
  String? displayName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DoccatStruct(
      displayName: displayName,
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
