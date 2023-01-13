// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retirmentdonemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RetirmentDoneModel _$$_RetirmentDoneModelFromJson(
        Map<String, dynamic> json) =>
    _$_RetirmentDoneModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      aretirement_type_idge_to: json['aretirement_type_idge_to'] as String?,
      retirement_order_status_id: json['retirement_order_status_id'] as int?,
      retirement_type: json['retirement_type'] as String?,
      name: json['name'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      retirement_age: json['retirement_age'] as String?,
      monthly_fee: json['monthly_fee'] as String?,
      fixed_fee: json['fixed_fee'] as int?,
      total: json['total'] as num?,
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

Map<String, dynamic> _$$_RetirmentDoneModelToJson(
        _$_RetirmentDoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'aretirement_type_idge_to': instance.aretirement_type_idge_to,
      'retirement_order_status_id': instance.retirement_order_status_id,
      'retirement_type': instance.retirement_type,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'retirement_age': instance.retirement_age,
      'monthly_fee': instance.monthly_fee,
      'fixed_fee': instance.fixed_fee,
      'total': instance.total,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
      'company': instance.company,
    };
