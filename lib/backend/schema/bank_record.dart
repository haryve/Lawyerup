import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankRecord extends FirestoreRecord {
  BankRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "account_holder_name" field.
  String? _accountHolderName;
  String get accountHolderName => _accountHolderName ?? '';
  bool hasAccountHolderName() => _accountHolderName != null;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  bool hasAccountNumber() => _accountNumber != null;

  // "ifsc_code" field.
  String? _ifscCode;
  String get ifscCode => _ifscCode ?? '';
  bool hasIfscCode() => _ifscCode != null;

  // "bank_name" field.
  String? _bankName;
  String get bankName => _bankName ?? '';
  bool hasBankName() => _bankName != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "upi" field.
  String? _upi;
  String get upi => _upi ?? '';
  bool hasUpi() => _upi != null;

  void _initializeFields() {
    _accountHolderName = snapshotData['account_holder_name'] as String?;
    _accountNumber = snapshotData['account_number'] as String?;
    _ifscCode = snapshotData['ifsc_code'] as String?;
    _bankName = snapshotData['bank_name'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _upi = snapshotData['upi'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bank');

  static Stream<BankRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BankRecord.fromSnapshot(s));

  static Future<BankRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BankRecord.fromSnapshot(s));

  static BankRecord fromSnapshot(DocumentSnapshot snapshot) => BankRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BankRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BankRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BankRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BankRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBankRecordData({
  String? accountHolderName,
  String? accountNumber,
  String? ifscCode,
  String? bankName,
  DocumentReference? user,
  String? upi,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'account_holder_name': accountHolderName,
      'account_number': accountNumber,
      'ifsc_code': ifscCode,
      'bank_name': bankName,
      'user': user,
      'upi': upi,
    }.withoutNulls,
  );

  return firestoreData;
}

class BankRecordDocumentEquality implements Equality<BankRecord> {
  const BankRecordDocumentEquality();

  @override
  bool equals(BankRecord? e1, BankRecord? e2) {
    return e1?.accountHolderName == e2?.accountHolderName &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.ifscCode == e2?.ifscCode &&
        e1?.bankName == e2?.bankName &&
        e1?.user == e2?.user &&
        e1?.upi == e2?.upi;
  }

  @override
  int hash(BankRecord? e) => const ListEquality().hash([
        e?.accountHolderName,
        e?.accountNumber,
        e?.ifscCode,
        e?.bankName,
        e?.user,
        e?.upi
      ]);

  @override
  bool isValidKey(Object? o) => o is BankRecord;
}
