import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LawyersRecord extends FirestoreRecord {
  LawyersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

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

  // "callid" field.
  String? _callid;
  String get callid => _callid ?? '';
  bool hasCallid() => _callid != null;

  // "email_address" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "saves" field.
  List<String>? _saves;
  List<String> get saves => _saves ?? const [];
  bool hasSaves() => _saves != null;

  // "Allposts" field.
  List<String>? _allposts;
  List<String> get allposts => _allposts ?? const [];
  bool hasAllposts() => _allposts != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  // "availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  bool hasAvailability() => _availability != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "college" field.
  String? _college;
  String get college => _college ?? '';
  bool hasCollege() => _college != null;

  // "Wallet" field.
  int? _wallet;
  int get wallet => _wallet ?? 0;
  bool hasWallet() => _wallet != null;

  // "availaibilitylist" field.
  List<String>? _availaibilitylist;
  List<String> get availaibilitylist => _availaibilitylist ?? const [];
  bool hasAvailaibilitylist() => _availaibilitylist != null;

  // "expertiselist" field.
  List<String>? _expertiselist;
  List<String> get expertiselist => _expertiselist ?? const [];
  bool hasExpertiselist() => _expertiselist != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "practicetime" field.
  int? _practicetime;
  int get practicetime => _practicetime ?? 0;
  bool hasPracticetime() => _practicetime != null;

  // "GraduationYear" field.
  int? _graduationYear;
  int get graduationYear => _graduationYear ?? 0;
  bool hasGraduationYear() => _graduationYear != null;

  // "reviews" field.
  List<int>? _reviews;
  List<int> get reviews => _reviews ?? const [];
  bool hasReviews() => _reviews != null;

  // "expertise" field.
  String? _expertise;
  String get expertise => _expertise ?? '';
  bool hasExpertise() => _expertise != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "online" field.
  bool? _online;
  bool get online => _online ?? false;
  bool hasOnline() => _online != null;

  // "bookref" field.
  DocumentReference? _bookref;
  DocumentReference? get bookref => _bookref;
  bool hasBookref() => _bookref != null;

  // "Experttype" field.
  String? _experttype;
  String get experttype => _experttype ?? '';
  bool hasExperttype() => _experttype != null;

  // "Languages" field.
  List<String>? _languages;
  List<String> get languages => _languages ?? const [];
  bool hasLanguages() => _languages != null;

  // "callref" field.
  DocumentReference? _callref;
  DocumentReference? get callref => _callref;
  bool hasCallref() => _callref != null;

  // "Usercallmanageref" field.
  DocumentReference? _usercallmanageref;
  DocumentReference? get usercallmanageref => _usercallmanageref;
  bool hasUsercallmanageref() => _usercallmanageref != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _author = snapshotData['author'] as DocumentReference?;
    _city = snapshotData['city'] as String?;
    _bio = snapshotData['bio'] as String?;
    _lawyerDp = snapshotData['lawyer_dp'] as String?;
    _lawyerCalls = snapshotData['Lawyer_calls'] as String?;
    _lawyerReviews = getDataList(snapshotData['Lawyer_reviews']);
    _lawyerSkills = getDataList(snapshotData['Lawyer_Skills']);
    _lawyerCharge = castToType<int>(snapshotData['Lawyer_charge']);
    _callid = snapshotData['callid'] as String?;
    _emailAddress = snapshotData['email_address'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gender = snapshotData['gender'] as String?;
    _saves = getDataList(snapshotData['saves']);
    _allposts = getDataList(snapshotData['Allposts']);
    _about = snapshotData['about'] as String?;
    _availability = snapshotData['availability'] as String?;
    _state = snapshotData['state'] as String?;
    _college = snapshotData['college'] as String?;
    _wallet = castToType<int>(snapshotData['Wallet']);
    _availaibilitylist = getDataList(snapshotData['availaibilitylist']);
    _expertiselist = getDataList(snapshotData['expertiselist']);
    _category = snapshotData['category'] as String?;
    _practicetime = castToType<int>(snapshotData['practicetime']);
    _graduationYear = castToType<int>(snapshotData['GraduationYear']);
    _reviews = getDataList(snapshotData['reviews']);
    _expertise = snapshotData['expertise'] as String?;
    _type = snapshotData['type'] as String?;
    _online = snapshotData['online'] as bool?;
    _bookref = snapshotData['bookref'] as DocumentReference?;
    _experttype = snapshotData['Experttype'] as String?;
    _languages = getDataList(snapshotData['Languages']);
    _callref = snapshotData['callref'] as DocumentReference?;
    _usercallmanageref =
        snapshotData['Usercallmanageref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lawyers');

  static Stream<LawyersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LawyersRecord.fromSnapshot(s));

  static Future<LawyersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LawyersRecord.fromSnapshot(s));

  static LawyersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LawyersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LawyersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LawyersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LawyersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LawyersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLawyersRecordData({
  String? name,
  DocumentReference? author,
  String? city,
  String? bio,
  String? lawyerDp,
  String? lawyerCalls,
  int? lawyerCharge,
  String? callid,
  String? emailAddress,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? gender,
  String? about,
  String? availability,
  String? state,
  String? college,
  int? wallet,
  String? category,
  int? practicetime,
  int? graduationYear,
  String? expertise,
  String? type,
  bool? online,
  DocumentReference? bookref,
  String? experttype,
  DocumentReference? callref,
  DocumentReference? usercallmanageref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'author': author,
      'city': city,
      'bio': bio,
      'lawyer_dp': lawyerDp,
      'Lawyer_calls': lawyerCalls,
      'Lawyer_charge': lawyerCharge,
      'callid': callid,
      'email_address': emailAddress,
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'gender': gender,
      'about': about,
      'availability': availability,
      'state': state,
      'college': college,
      'Wallet': wallet,
      'category': category,
      'practicetime': practicetime,
      'GraduationYear': graduationYear,
      'expertise': expertise,
      'type': type,
      'online': online,
      'bookref': bookref,
      'Experttype': experttype,
      'callref': callref,
      'Usercallmanageref': usercallmanageref,
    }.withoutNulls,
  );

  return firestoreData;
}

class LawyersRecordDocumentEquality implements Equality<LawyersRecord> {
  const LawyersRecordDocumentEquality();

  @override
  bool equals(LawyersRecord? e1, LawyersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.author == e2?.author &&
        e1?.city == e2?.city &&
        e1?.bio == e2?.bio &&
        e1?.lawyerDp == e2?.lawyerDp &&
        e1?.lawyerCalls == e2?.lawyerCalls &&
        listEquality.equals(e1?.lawyerReviews, e2?.lawyerReviews) &&
        listEquality.equals(e1?.lawyerSkills, e2?.lawyerSkills) &&
        e1?.lawyerCharge == e2?.lawyerCharge &&
        e1?.callid == e2?.callid &&
        e1?.emailAddress == e2?.emailAddress &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gender == e2?.gender &&
        listEquality.equals(e1?.saves, e2?.saves) &&
        listEquality.equals(e1?.allposts, e2?.allposts) &&
        e1?.about == e2?.about &&
        e1?.availability == e2?.availability &&
        e1?.state == e2?.state &&
        e1?.college == e2?.college &&
        e1?.wallet == e2?.wallet &&
        listEquality.equals(e1?.availaibilitylist, e2?.availaibilitylist) &&
        listEquality.equals(e1?.expertiselist, e2?.expertiselist) &&
        e1?.category == e2?.category &&
        e1?.practicetime == e2?.practicetime &&
        e1?.graduationYear == e2?.graduationYear &&
        listEquality.equals(e1?.reviews, e2?.reviews) &&
        e1?.expertise == e2?.expertise &&
        e1?.type == e2?.type &&
        e1?.online == e2?.online &&
        e1?.bookref == e2?.bookref &&
        e1?.experttype == e2?.experttype &&
        listEquality.equals(e1?.languages, e2?.languages) &&
        e1?.callref == e2?.callref &&
        e1?.usercallmanageref == e2?.usercallmanageref;
  }

  @override
  int hash(LawyersRecord? e) => const ListEquality().hash([
        e?.name,
        e?.author,
        e?.city,
        e?.bio,
        e?.lawyerDp,
        e?.lawyerCalls,
        e?.lawyerReviews,
        e?.lawyerSkills,
        e?.lawyerCharge,
        e?.callid,
        e?.emailAddress,
        e?.displayName,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.gender,
        e?.saves,
        e?.allposts,
        e?.about,
        e?.availability,
        e?.state,
        e?.college,
        e?.wallet,
        e?.availaibilitylist,
        e?.expertiselist,
        e?.category,
        e?.practicetime,
        e?.graduationYear,
        e?.reviews,
        e?.expertise,
        e?.type,
        e?.online,
        e?.bookref,
        e?.experttype,
        e?.languages,
        e?.callref,
        e?.usercallmanageref
      ]);

  @override
  bool isValidKey(Object? o) => o is LawyersRecord;
}
