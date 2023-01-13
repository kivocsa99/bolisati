// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'childmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildModel _$$_ChildModelFromJson(Map<String, dynamic> json) =>
    _$_ChildModel(
      id: json['id'] as int?,
      educational_order_id: json['educational_order_id'] as int?,
      gender_id: json['gender_id'] as int?,
      national_id_number: json['national_id_number'] as String?,
      name: json['name'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_ChildModelToJson(_$_ChildModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'educational_order_id': instance.educational_order_id,
      'gender_id': instance.gender_id,
      'national_id_number': instance.national_id_number,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
