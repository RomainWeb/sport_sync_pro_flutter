// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerEntity _$PlayerEntityFromJson(Map<String, dynamic> json) => PlayerEntity(
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$PlayerEntityToJson(PlayerEntity instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'phoneNumber': instance.phoneNumber,
    };
