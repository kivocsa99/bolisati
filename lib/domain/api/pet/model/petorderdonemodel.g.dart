// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petorderdonemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetOrderDoneModel _$$_PetOrderDoneModelFromJson(Map<String, dynamic> json) =>
    _$_PetOrderDoneModel(
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      pet_insurance_id: json['pet_insurance_id'] as String?,
      pet_type_id: json['pet_type_id'] as String?,
      gender_id: json['gender_id'] as String?,
      pet_order_status_id: json['pet_order_status_id'] as int?,
      pet_type: json['pet_type'] as String?,
      gender: json['gender'] as String?,
      name: json['name'] as String?,
      country_id: json['country_id'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      total: json['total'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      id: json['id'] as int?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => AddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PetOrderDoneModelToJson(
        _$_PetOrderDoneModel instance) =>
    <String, dynamic>{
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'pet_insurance_id': instance.pet_insurance_id,
      'pet_type_id': instance.pet_type_id,
      'gender_id': instance.gender_id,
      'pet_order_status_id': instance.pet_order_status_id,
      'pet_type': instance.pet_type,
      'gender': instance.gender,
      'name': instance.name,
      'country_id': instance.country_id,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'total': instance.total,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'id': instance.id,
      'addons': instance.addons,
    };
