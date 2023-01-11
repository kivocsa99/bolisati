// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'educationaloffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationalOffersModel _$$_EducationalOffersModelFromJson(
        Map<String, dynamic> json) =>
    _$_EducationalOffersModel(
      id: json['id'] as int?,
      educational_order_id: json['educational_order_id'] as String?,
      name: json['name'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      national_id_number: json['national_id_number'] as String?,
      gender_id: json['gender_id'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => AddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EducationalOffersModelToJson(
        _$_EducationalOffersModel instance) =>
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
      'company': instance.company,
    };
