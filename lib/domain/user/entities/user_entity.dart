class UserEntity {
  final String uid;
  final String email;
  late String? displayName;
  late bool emailVerified;
  late String? phoneNumber;
  late String? photoUrl;

  UserEntity({
    required this.uid,
    required this.email,
    this.displayName,
    this.emailVerified = false,
    this.phoneNumber,
    this.photoUrl,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      uid: json['uid'],
      email: json['uid'],
      displayName: json['displayName'],
      emailVerified: json['emailVerified'],
      phoneNumber: json['phoneNumber'],
      photoUrl: json['photoUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'emailVerified': emailVerified,
      'phoneNumber': phoneNumber,
      'photoUrl': photoUrl,
    };
  }
}
