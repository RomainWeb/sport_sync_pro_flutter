import 'package:json_annotation/json_annotation.dart';

import '../../../common/enums/day_enum.dart';

@JsonSerializable()
class UserGroupEntity {
  // coachId: string;
  // day: DayEnum.Monday;
  // startDate: Date;
  // endDate: Date;
  // sessionCount: number;
  // players: Array<PlayerEntity>;

  final String coachId;
  final DayEnum day;
  final DateTime startDate;
  final int sessionCount;

  UserGroupEntity({
    required this.coachId,
    required this.day,
    required this.startDate,
    this.sessionCount = 0,
  });
}
