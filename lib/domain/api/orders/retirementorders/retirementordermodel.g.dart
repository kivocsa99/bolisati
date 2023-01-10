// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retirementordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RetirementOrderModel _$$_RetirementOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_RetirementOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      retirement_type_id: json['retirement_type_id'] as String?,
      retirement_order_status_id: json['retirement_order_status_id'] as int?,
      retirement_type: json['retirement_type'] as int?,
      age: json['age'] as int?,
      birthdate: json['birthdate'] as String?,
      retirement_age: json['retirement_age'] as int?,
      monthly_fee: json['monthly_fee'] as int?,
      fixed_fee: json['fixed_fee'] as int?,
      name: json['name'] as String?,
      total_without_addons: json['total_without_addons'] as int?,
      total: json['total'] as int?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => OrderAddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_RetirementOrderModelToJson(
        _$_RetirementOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'retirement_type_id': instance.retirement_type_id,
      'retirement_order_status_id': instance.retirement_order_status_id,
      'retirement_type': instance.retirement_type,
      'age': instance.age,
      'birthdate': instance.birthdate,
      'retirement_age': instance.retirement_age,
      'monthly_fee': instance.monthly_fee,
      'fixed_fee': instance.fixed_fee,
      'name': instance.name,
      'total_without_addons': instance.total_without_addons,
      'total': instance.total,
      'addons': instance.addons,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
