import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LawyerregisterRecord extends FirestoreRecord {
  LawyerregisterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "subjects" field.
  List<String>? _subjects;
  List<String> get subjects => _subjects ?? const [];
  bool hasSubjects() => _subjects != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "author" field.
  DocumentReference? _author;
  DocumentReference? get author => _author;
  bool hasAuthor() => _author != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "lawyer_dp" field.
  String? _lawyerDp;
  String get lawyerDp => _lawyerDp ?? '';
  bool hasLawyerDp() => _lawyerDp != null;

  // "post" field.
  String? _post;
  String get post => _post ?? '';
  bool hasPost() => _post != null;

  // "quote" field.
  String? _quote;
  String get quote => _quote ?? '';
  bool hasQuote() => _quote != null;

  // "Lawyer_calls" field.
  String? _lawyerCalls;
  String get lawyerCalls => _lawyerCalls ?? '';
  bool hasLawyerCalls() => _lawyerCalls != null;

  // "Lawyer_reviews" field.
  List<String>? _lawyerReviews;
  List<String> get lawyerReviews => _lawyerReviews ?? const [];
  bool hasLawyerReviews() => _lawyerReviews != null;

  // "Lawyer_Skills" field.
  List<String>? _lawyerSkills;
  List<String> get lawyerSkills => _lawyerSkills ?? const [];
  bool hasLawyerSkills() => _lawyerSkills != null;

  // "Lawyer_charge" field.
  int? _lawyerCharge;
  int get lawyerCharge => _lawyerCharge ?? 0;
  bool hasLawyerCharge() => _lawyerCharge != null;

  // "lawyer_email" field.
  String? _lawyerEmail;
  String get lawyerEmail => _lawyerEmail ?? '';
  bool hasLawyerEmail() => _lawyerEmail != null;

  // "lawyer_expertise" field.
  String? _lawyerExpertise;
  String get lawyerExpertise => _lawyerExpertise ?? '';
  bool hasLawyerExpertise() => _lawyerExpertise != null;

  // "lawyer_mobile" field.
  int? _lawyerMobile;
  int get lawyerMobile => _lawyerMobile ?? 0;
  bool hasLawyerMobile() => _lawyerMobile != null;

  // "callid" field.
  String? _callid;
  String get callid => _callid ?? '';
  bool hasCallid() => _callid != null;

  // "email_address" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _subjects = getDataList(snapshotData['subjects']);
    _location = snapshotData['location'] as String?;
    _author = snapshotData['author'] as DocumentReference?;
    _city = snapshotData['city'] as String?;
    _bio = snapshotData['bio'] as String?;
    _lawyerDp = snapshotData['lawyer_dp'] as String?;
    _post = snapshotData['post'] as String?;
    _quote = snapshotData['quote'] as String?;
    _lawyerCalls = snapshotData['Lawyer_calls'] as String?;
    _lawyerReviews = getDataList(snapshotData['Lawyer_reviews']);
    _lawyerSkills = getDataList(snapshotData['Lawyer_Skills']);
    _lawyerCharge = castToType<int>(snapshotData['Lawyer_charge']);
    _lawyerEmail = snapshotData['lawyer_email'] as String?;
    _lawyerExpertise = snapshotData['lawyer_expertise'] as String?;
    _lawyerMobile = castToType<int>(snapshotData['lawyer_mobile']);
    _callid = snapshotData['callid'] as String?;
    _emailAddress = snapshotData['email_address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lawyerregister');

  static Stream<LawyerregisterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LawyerregisterRecord.fromSnapshot(s));

  static Future<LawyerregisterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LawyerregisterRecord.fromSnapshot(s));

  static LawyerregisterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LawyerregisterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LawyerregisterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LawyerregisterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LawyerregisterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LawyerregisterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLawyerregisterRecordData({
  String? name,
  String? description,
  String? category,
  String? location,
  DocumentReference? author,
  String? city,
  String? bio,
  String? lawyerDp,
  String? post,
  String? quote,
  String? lawyerCalls,
  int? lawyerCharge,
  String? lawyerEmail,
  String? lawyerExpertise,
  int? lawyerMobile,
  String? callid,
  String? emailAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'category': category,
      'location': location,
      'author': author,
      'city': city,
      'bio': bio,
      'lawyer_dp': lawyerDp,
      'post': post,
      'quote': quote,
      'Lawyer_calls': lawyerCalls,
      'Lawyer_charge': lawyerCharge,
      'lawyer_email': lawyerEmail,
      'lawyer_expertise': lawyerExpertise,
      'lawyer_mobile': lawyerMobile,
      'callid': callid,
      'email_address': emailAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class LawyerregisterRecordDocumentEquality
    implements Equality<LawyerregisterRecord> {
  const LawyerregisterRecordDocumentEquality();

  @override
  bool equals(LawyerregisterRecord? e1, LawyerregisterRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        listEquality.equals(e1?.subjects, e2?.subjects) &&
        e1?.location == e2?.location &&
        e1?.author == e2?.author &&
        e1?.city == e2?.city &&
        e1?.bio == e2?.bio &&
        e1?.lawyerDp == e2?.lawyerDp &&
        e1?.post == e2?.post &&
        e1?.quote == e2?.quote &&
        e1?.lawyerCalls == e2?.lawyerCalls &&
        listEquality.equals(e1?.lawyerReviews, e2?.lawyerReviews) &&
        listEquality.equals(e1?.lawyerSkills, e2?.lawyerSkills) &&
        e1?.lawyerCharge == e2?.lawyerCharge &&
        e1?.lawyerEmail == e2?.lawyerEmail &&
        e1?.lawyerExpertise == e2?.lawyerExpertise &&
        e1?.lawyerMobile == e2?.lawyerMobile &&
        e1?.callid == e2?.callid &&
        e1?.emailAddress == e2?.emailAddress;
  }

  @override
  int hash(LawyerregisterRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.category,
        e?.subjects,
        e?.location,
        e?.author,
        e?.city,
        e?.bio,
        e?.lawyerDp,
        e?.post,
        e?.quote,
        e?.lawyerCalls,
        e?.lawyerReviews,
        e?.lawyerSkills,
        e?.lawyerCharge,
        e?.lawyerEmail,
        e?.lawyerExpertise,
        e?.lawyerMobile,
        e?.callid,
        e?.emailAddress
      ]);

  @override
  bool isValidKey(Object? o) => o is LawyerregisterRecord;
}
