// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckInModel _$$_CheckInModelFromJson(Map<String, dynamic> json) =>
    _$_CheckInModel(
      checkin: json['checkin'] as String,
      location: json['location'] as String,
      purpose: json['purpose'] as String,
      id: json['id'] as String,
      employeeId: json['employeeId'] as String,
    );

Map<String, dynamic> _$$_CheckInModelToJson(_$_CheckInModel instance) =>
    <String, dynamic>{
      'checkin': instance.checkin,
      'location': instance.location,
      'purpose': instance.purpose,
      'id': instance.id,
      'employeeId': instance.employeeId,
    };
