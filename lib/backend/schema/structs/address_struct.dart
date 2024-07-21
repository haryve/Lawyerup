// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    LatLng? latLong,
    String? name,
    String? streetAddress,
    String? streetAddress2,
    String? city,
    String? state,
    String? postalCode,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _latLong = latLong,
        _name = name,
        _streetAddress = streetAddress,
        _streetAddress2 = streetAddress2,
        _city = city,
        _state = state,
        _postalCode = postalCode,
        super(firestoreUtilData);

  // "latLong" field.
  LatLng? _latLong;
  LatLng? get latLong => _latLong;
  set latLong(LatLng? val) => _latLong = val;

  bool hasLatLong() => _latLong != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "StreetAddress" field.
  String? _streetAddress;
  String get streetAddress => _streetAddress ?? '';
  set streetAddress(String? val) => _streetAddress = val;

  bool hasStreetAddress() => _streetAddress != null;

  // "StreetAddress2" field.
  String? _streetAddress2;
  String get streetAddress2 => _streetAddress2 ?? '';
  set streetAddress2(String? val) => _streetAddress2 = val;

  bool hasStreetAddress2() => _streetAddress2 != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;

  bool hasCity() => _city != null;

  // "State" field.
  String? _state;
  String get state => _state ?? '';
  set state(String? val) => _state = val;

  bool hasState() => _state != null;

  // "PostalCode" field.
  String? _postalCode;
  String get postalCode => _postalCode ?? '';
  set postalCode(String? val) => _postalCode = val;

  bool hasPostalCode() => _postalCode != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        latLong: data['latLong'] as LatLng?,
        name: data['Name'] as String?,
        streetAddress: data['StreetAddress'] as String?,
        streetAddress2: data['StreetAddress2'] as String?,
        city: data['City'] as String?,
        state: data['State'] as String?,
        postalCode: data['PostalCode'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'latLong': _latLong,
        'Name': _name,
        'StreetAddress': _streetAddress,
        'StreetAddress2': _streetAddress2,
        'City': _city,
        'State': _state,
        'PostalCode': _postalCode,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latLong': serializeParam(
          _latLong,
          ParamType.LatLng,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'StreetAddress': serializeParam(
          _streetAddress,
          ParamType.String,
        ),
        'StreetAddress2': serializeParam(
          _streetAddress2,
          ParamType.String,
        ),
        'City': serializeParam(
          _city,
          ParamType.String,
        ),
        'State': serializeParam(
          _state,
          ParamType.String,
        ),
        'PostalCode': serializeParam(
          _postalCode,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        latLong: deserializeParam(
          data['latLong'],
          ParamType.LatLng,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        streetAddress: deserializeParam(
          data['StreetAddress'],
          ParamType.String,
          false,
        ),
        streetAddress2: deserializeParam(
          data['StreetAddress2'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['City'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['State'],
          ParamType.String,
          false,
        ),
        postalCode: deserializeParam(
          data['PostalCode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        latLong == other.latLong &&
        name == other.name &&
        streetAddress == other.streetAddress &&
        streetAddress2 == other.streetAddress2 &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [latLong, name, streetAddress, streetAddress2, city, state, postalCode]);
}

AddressStruct createAddressStruct({
  LatLng? latLong,
  String? name,
  String? streetAddress,
  String? streetAddress2,
  String? city,
  String? state,
  String? postalCode,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      latLong: latLong,
      name: name,
      streetAddress: streetAddress,
      streetAddress2: streetAddress2,
      city: city,
      state: state,
      postalCode: postalCode,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
