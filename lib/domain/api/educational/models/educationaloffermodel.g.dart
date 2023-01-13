// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'educationaloffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationalChildDoneModel _$$_EducationalChildDoneModelFromJson(
        Map<String, dynamic> json) =>
    _$_EducationalChildDoneModel(
      id: json['id'] as int?,
      educational_order_id: json['educational_order_id'] as String?,
      name: json['name'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      national_id_number: json['national_id_number'] as String?,
      gender_id: json['gender_id'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => AddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EducationalChildDoneModelToJson(
        _$_EducationalChildDoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'educational_order_id': instance.educational_order_id,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'national_id_number': instance.national_id_number,
      'gender_id': instance.gender_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
    };
