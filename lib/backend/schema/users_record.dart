import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "favorites" field.
  List<int>? _favorites;
  List<int> get favorites => _favorites ?? const [];
  bool hasFavorites() => _favorites != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "password" field.
  double? _password;
  double get password => _password ?? 0.0;
  bool hasPassword() => _password != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "blockedUsers" field.
  List<DocumentReference>? _blockedUsers;
  List<DocumentReference> get blockedUsers => _blockedUsers ?? const [];
  bool hasBlockedUsers() => _blockedUsers != null;

  // "addresses" field.
  List<AddressStruct>? _addresses;
  List<AddressStruct> get addresses => _addresses ?? const [];
  bool hasAddresses() => _addresses != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "ref" field.
  DocumentReference? _ref;
  DocumentReference? get ref => _ref;
  bool hasRef() => _ref != null;

  // "usercallmanagement" field.
  DocumentReference? _usercallmanagement;
  DocumentReference? get usercallmanagement => _usercallmanagement;
  bool hasUsercallmanagement() => _usercallmanagement != null;

  // "callnotification" field.
  List<DocumentReference>? _callnotification;
  List<DocumentReference> get callnotification => _callnotification ?? const [];
  bool hasCallnotification() => _callnotification != null;

  // "lawref" field.
  DocumentReference? _lawref;
  DocumentReference? get lawref => _lawref;
  bool hasLawref() => _lawref != null;

  // "supportticket" field.
  DocumentReference? _supportticket;
  DocumentReference? get supportticket => _supportticket;
  bool hasSupportticket() => _supportticket != null;

  // "Waller" field.
  int? _waller;
  int get waller => _waller ?? 0;
  bool hasWaller() => _waller != null;

  // "MyLawyers" field.
  List<DocumentReference>? _myLawyers;
  List<DocumentReference> get myLawyers => _myLawyers ?? const [];
  bool hasMyLawyers() => _myLawyers != null;

  // "MyClients" field.
  List<DocumentReference>? _myClients;
  List<DocumentReference> get myClients => _myClients ?? const [];
  bool hasMyClients() => _myClients != null;

  // "pendingrequests" field.
  List<DocumentReference>? _pendingrequests;
  List<DocumentReference> get pendingrequests => _pendingrequests ?? const [];
  bool hasPendingrequests() => _pendingrequests != null;

  // "calls" field.
  DocumentReference? _calls;
  DocumentReference? get calls => _calls;
  bool hasCalls() => _calls != null;

  // "timer" field.
  DocumentReference? _timer;
  DocumentReference? get timer => _timer;
  bool hasTimer() => _timer != null;

  // "online" field.
  bool? _online;
  bool get online => _online ?? false;
  bool hasOnline() => _online != null;

  // "UserProfession" field.
  String? _userProfession;
  String get userProfession => _userProfession ?? '';
  bool hasUserProfession() => _userProfession != null;

  // "Age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "AIchatref" field.
  DocumentReference? _aIchatref;
  DocumentReference? get aIchatref => _aIchatref;
  bool hasAIchatref() => _aIchatref != null;

  // "bankrf" field.
  DocumentReference? _bankrf;
  DocumentReference? get bankrf => _bankrf;
  bool hasBankrf() => _bankrf != null;

  // "Languages" field.
  List<String>? _languages;
  List<String> get languages => _languages ?? const [];
  bool hasLanguages() => _languages != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _favorites = getDataList(snapshotData['favorites']);
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _password = castToType<double>(snapshotData['password']);
    _displayName = snapshotData['display_name'] as String?;
    _bio = snapshotData['bio'] as String?;
    _city = snapshotData['city'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _state = snapshotData['state'] as String?;
    _blockedUsers = getDataList(snapshotData['blockedUsers']);
    _addresses = getStructList(
      snapshotData['addresses'],
      AddressStruct.fromMap,
    );
    _uid = snapshotData['uid'] as String?;
    _gender = snapshotData['gender'] as String?;
    _ref = snapshotData['ref'] as DocumentReference?;
    _usercallmanagement =
        snapshotData['usercallmanagement'] as DocumentReference?;
    _callnotification = getDataList(snapshotData['callnotification']);
    _lawref = snapshotData['lawref'] as DocumentReference?;
    _supportticket = snapshotData['supportticket'] as DocumentReference?;
    _waller = castToType<int>(snapshotData['Waller']);
    _myLawyers = getDataList(snapshotData['MyLawyers']);
    _myClients = getDataList(snapshotData['MyClients']);
    _pendingrequests = getDataList(snapshotData['pendingrequests']);
    _calls = snapshotData['calls'] as DocumentReference?;
    _timer = snapshotData['timer'] as DocumentReference?;
    _online = snapshotData['online'] as bool?;
    _userProfession = snapshotData['UserProfession'] as String?;
    _age = castToType<int>(snapshotData['Age']);
    _aIchatref = snapshotData['AIchatref'] as DocumentReference?;
    _bankrf = snapshotData['bankrf'] as DocumentReference?;
    _languages = getDataList(snapshotData['Languages']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? userName,
  double? password,
  String? displayName,
  String? bio,
  String? city,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
  String? state,
  String? uid,
  String? gender,
  DocumentReference? ref,
  DocumentReference? usercallmanagement,
  DocumentReference? lawref,
  DocumentReference? supportticket,
  int? waller,
  DocumentReference? calls,
  DocumentReference? timer,
  bool? online,
  String? userProfession,
  int? age,
  DocumentReference? aIchatref,
  DocumentReference? bankrf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_name': userName,
      'password': password,
      'display_name': displayName,
      'bio': bio,
      'city': city,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
      'state': state,
      'uid': uid,
      'gender': gender,
      'ref': ref,
      'usercallmanagement': usercallmanagement,
      'lawref': lawref,
      'supportticket': supportticket,
      'Waller': waller,
      'calls': calls,
      'timer': timer,
      'online': online,
      'UserProfession': userProfession,
      'Age': age,
      'AIchatref': aIchatref,
      'bankrf': bankrf,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        listEquality.equals(e1?.favorites, e2?.favorites) &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.password == e2?.password &&
        e1?.displayName == e2?.displayName &&
        e1?.bio == e2?.bio &&
        e1?.city == e2?.city &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        e1?.state == e2?.state &&
        listEquality.equals(e1?.blockedUsers, e2?.blockedUsers) &&
        listEquality.equals(e1?.addresses, e2?.addresses) &&
        e1?.uid == e2?.uid &&
        e1?.gender == e2?.gender &&
        e1?.ref == e2?.ref &&
        e1?.usercallmanagement == e2?.usercallmanagement &&
        listEquality.equals(e1?.callnotification, e2?.callnotification) &&
        e1?.lawref == e2?.lawref &&
        e1?.supportticket == e2?.supportticket &&
        e1?.waller == e2?.waller &&
        listEquality.equals(e1?.myLawyers, e2?.myLawyers) &&
        listEquality.equals(e1?.myClients, e2?.myClients) &&
        listEquality.equals(e1?.pendingrequests, e2?.pendingrequests) &&
        e1?.calls == e2?.calls &&
        e1?.timer == e2?.timer &&
        e1?.online == e2?.online &&
        e1?.userProfession == e2?.userProfession &&
        e1?.age == e2?.age &&
        e1?.aIchatref == e2?.aIchatref &&
        e1?.bankrf == e2?.bankrf &&
        listEquality.equals(e1?.languages, e2?.languages);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.createdTime,
        e?.favorites,
        e?.phoneNumber,
        e?.userName,
        e?.password,
        e?.displayName,
        e?.bio,
        e?.city,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.state,
        e?.blockedUsers,
        e?.addresses,
        e?.uid,
        e?.gender,
        e?.ref,
        e?.usercallmanagement,
        e?.callnotification,
        e?.lawref,
        e?.supportticket,
        e?.waller,
        e?.myLawyers,
        e?.myClients,
        e?.pendingrequests,
        e?.calls,
        e?.timer,
        e?.online,
        e?.userProfession,
        e?.age,
        e?.aIchatref,
        e?.bankrf,
        e?.languages
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
