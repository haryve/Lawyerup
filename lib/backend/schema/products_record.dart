import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createdTime" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "salePrice" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  void _initializeFields() {
    _coverImage = snapshotData['coverImage'] as String?;
    _images = getDataList(snapshotData['images']);
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdTime = snapshotData['createdTime'] as DateTime?;
    _price = castToType<double>(snapshotData['price']);
    _salePrice = castToType<double>(snapshotData['salePrice']);
    _category = snapshotData['category'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _tags = getDataList(snapshotData['tags']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? coverImage,
  String? name,
  String? description,
  DateTime? createdTime,
  double? price,
  double? salePrice,
  String? category,
  DocumentReference? owner,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'coverImage': coverImage,
      'name': name,
      'description': description,
      'createdTime': createdTime,
      'price': price,
      'salePrice': salePrice,
      'category': category,
      'owner': owner,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.coverImage == e2?.coverImage &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.price == e2?.price &&
        e1?.salePrice == e2?.salePrice &&
        e1?.category == e2?.category &&
        e1?.owner == e2?.owner &&
        listEquality.equals(e1?.tags, e2?.tags);
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.coverImage,
        e?.images,
        e?.name,
        e?.description,
        e?.createdTime,
        e?.price,
        e?.salePrice,
        e?.category,
        e?.owner,
        e?.tags
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
