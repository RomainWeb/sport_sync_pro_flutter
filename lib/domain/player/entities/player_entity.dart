import 'package:json_annotation/json_annotation.dart';

part 'player_entity.g.dart';

@JsonSerializable()
class PlayerEntity {
  final String firstname;
  final String lastname;
  final String phoneNumber;

  PlayerEntity({
    required this.firstname,
    required this.lastname,
    required this.phoneNumber,
  });

  factory PlayerEntity.fromJson(Map<String, dynamic> json) => _$PlayerEntityFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerEntityToJson(this);
}
