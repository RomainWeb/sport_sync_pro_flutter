import 'package:json_annotation/json_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
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

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
