// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetOrderModel _$$_PetOrderModelFromJson(Map<String, dynamic> json) =>
    _$_PetOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      pet_insurance_id: json['pet_insurance_id'] as int?,
      pet_type_id: json['pet_type_id'] as int?,
      gender_id: json['gender_id'] as int?,
      pet_order_status_id: json['pet_order_status_id'] as int?,
      pet_type: json['pet_type'] as String?,
      gender: json['gender'] == null
          ? null
          : GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      name: json['name'] as String?,
      country_id: json['country_id'] as int?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      total: json['total'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      customer: json['customer'] == null
          ? null
          : UserModel.fromJson(json['customer'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : RetTypeModel.fromJson(json['type'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => OrderAddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PetOrderModelToJson(_$_PetOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'deleted_at': instance.deleted_at,
      'customer': instance.customer,
      'type': instance.type,
      'company': instance.company,
      'addons': instance.addons,
      'status': instance.status,
      'files': instance.files,
    };
