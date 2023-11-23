// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGroupEntity _$UserGroupEntityFromJson(Map<String, dynamic> json) =>
    UserGroupEntity(
      coachId: json['coachId'] as String,
      name: json['name'] as String,
      day: $enumDecode(_$DayEnumEnumMap, json['day']),
      startHour: (json['startHour'] as Timestamp).toDate(),
      sessionCount: json['sessionCount'] as int? ?? 0,
      duration: json['duration'] as int? ?? 0,
      price: json['price'] as int? ?? 0,
      playerIds: (json['playerIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UserGroupEntityToJson(UserGroupEntity instance) =>
    <String, dynamic>{
      'coachId': instance.coachId,
      'name': instance.name,
      'day': _$DayEnumEnumMap[instance.day]!,
      'startHour': instance.startHour.toIso8601String(),
      'sessionCount': instance.sessionCount,
      'duration': instance.duration,
      'price': instance.price,
      'playerIds': instance.playerIds,
    };

const _$DayEnumEnumMap = {
  DayEnum.Monday: 'Monday',
  DayEnum.Tuesday: 'Tuesday',
  DayEnum.Wednesday: 'Wednesday',
  DayEnum.Thursday: 'Thursday',
  DayEnum.Friday: 'Friday',
  DayEnum.Saturday: 'Saturday',
  DayEnum.Sunday: 'Sunday',
};
