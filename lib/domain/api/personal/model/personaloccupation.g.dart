// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personaloccupation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalOccupationModel _$$_PersonalOccupationModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalOccupationModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      personal_accident_type_id: json['personal_accident_type_id'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_PersonalOccupationModelToJson(
        _$_PersonalOccupationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'personal_accident_type_id': instance.personal_accident_type_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
