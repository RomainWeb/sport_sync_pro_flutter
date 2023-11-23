import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../common/enums/day_enum.dart';
import '../../player/entities/player_entity.dart';

part 'user_group_entity.g.dart';

@JsonSerializable()
class UserGroupEntity {
  final String coachId;
  final String name;
  final DayEnum day;
  final DateTime startHour;
  final int sessionCount;
  final int duration;
  final int price;
  final List<String> playerIds;

  UserGroupEntity({
    required this.coachId,
    required this.name,
    required this.day,
    required this.startHour,
    this.sessionCount = 0,
    this.duration = 0,
    this.price = 0,
    this.playerIds = const [],
  });

  factory UserGroupEntity.fromJson(Map<String, dynamic> json) => _$UserGroupEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserGroupEntityToJson(this);
}
