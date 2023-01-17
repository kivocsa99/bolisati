// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalaccidentordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalAccidentOrderModel _$$_PersonalAccidentOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalAccidentOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      personal_accident_insurance_id:
          json['personal_accident_insurance_id'] as int?,
      personal_accident_type_id: json['personal_accident_type_id'] as int?,
      personal_accident_occupation_id:
          json['personal_accident_occupation_id'] as int?,
      personal_accident_order_status_id:
          json['personal_accident_order_status_id'] as int?,
      age_from: json['age_from'] as String?,
      age_to: json['age_to'] as String?,
      personal_accident_occupation:
          json['personal_accident_occupation'] as String?,
      personal_accident_type: json['personal_accident_type'] as String?,
      rate: json['rate'] as String?,
      name: json['name'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      insurance_amount: json['insurance_amount'] as String?,
      total: json['total'] as num?,
      total_without_addons: json['total_without_addons'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      customer: json['customer'] == null
          ? null
          : UserModel.fromJson(json['customer'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : RetTypeModel.fromJson(json['type'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$_PersonalAccidentOrderModelToJson(
        _$_PersonalAccidentOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'personal_accident_insurance_id': instance.personal_accident_insurance_id,
      'personal_accident_type_id': instance.personal_accident_type_id,
      'personal_accident_occupation_id':
          instance.personal_accident_occupation_id,
      'personal_accident_order_status_id':
          instance.personal_accident_order_status_id,
      'age_from': instance.age_from,
      'age_to': instance.age_to,
      'personal_accident_occupation': instance.personal_accident_occupation,
      'personal_accident_type': instance.personal_accident_type,
      'rate': instance.rate,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'insurance_amount': instance.insurance_amount,
      'total': instance.total,
      'total_without_addons': instance.total_without_addons,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'customer': instance.customer,
      'company': instance.company,
      'type': instance.type,
      'addons': instance.addons,
      'status': instance.status,
      'files': instance.files,
    };
