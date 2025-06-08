import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "payment_id" field.
  String? _paymentId;
  String get paymentId => _paymentId ?? '';
  bool hasPaymentId() => _paymentId != null;

  // "razorpay_payment_id" field.
  String? _razorpayPaymentId;
  String get razorpayPaymentId => _razorpayPaymentId ?? '';
  bool hasRazorpayPaymentId() => _razorpayPaymentId != null;

  // "razorpay_signature" field.
  String? _razorpaySignature;
  String get razorpaySignature => _razorpaySignature ?? '';
  bool hasRazorpaySignature() => _razorpaySignature != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _amount = castToType<int>(snapshotData['amount']);
    _user = snapshotData['user'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _paymentId = snapshotData['payment_id'] as String?;
    _razorpayPaymentId = snapshotData['razorpay_payment_id'] as String?;
    _razorpaySignature = snapshotData['razorpay_signature'] as String?;
    _status = snapshotData['Status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('transactions')
          : FirebaseFirestore.instance.collectionGroup('transactions');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('transactions').doc(id);

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  int? amount,
  DocumentReference? user,
  DateTime? date,
  String? description,
  String? paymentId,
  String? razorpayPaymentId,
  String? razorpaySignature,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'amount': amount,
      'user': user,
      'date': date,
      'description': description,
      'payment_id': paymentId,
      'razorpay_payment_id': razorpayPaymentId,
      'razorpay_signature': razorpaySignature,
      'Status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.amount == e2?.amount &&
        e1?.user == e2?.user &&
        e1?.date == e2?.date &&
        e1?.description == e2?.description &&
        e1?.paymentId == e2?.paymentId &&
        e1?.razorpayPaymentId == e2?.razorpayPaymentId &&
        e1?.razorpaySignature == e2?.razorpaySignature &&
        e1?.status == e2?.status;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.amount,
        e?.user,
        e?.date,
        e?.description,
        e?.paymentId,
        e?.razorpayPaymentId,
        e?.razorpaySignature,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
