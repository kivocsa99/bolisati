// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicalorderdone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalOrderDoneModel _$$_MedicalOrderDoneModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalOrderDoneModel(
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      retirement_type_id: json['retirement_type_id'] as String?,
      retirement_order_status_id: json['retirement_order_status_id'] as int?,
      retirement_type: json['retirement_type'] as String?,
      age_from: json['age_from'] as int?,
      age_to: json['age_to'] as int?,
      period_from: json['period_from'] as int?,
      period_to: json['period_to'] as int?,
      price: json['price'] as num?,
      name: json['name'] as String?,
      distination: json['distination'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      period_of_stay: json['period_of_stay'] as int?,
      total: json['total'] as num?,
      updated_at: json['updated_at'] as String?,
      created_at: json['created_at'] as String?,
      id: json['id'] as int?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => AddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalOrderDoneModelToJson(
        _$_MedicalOrderDoneModel instance) =>
    <String, dynamic>{
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'retirement_type_id': instance.retirement_type_id,
      'retirement_order_status_id': instance.retirement_order_status_id,
      'retirement_type': instance.retirement_type,
      'age_from': instance.age_from,
      'age_to': instance.age_to,
      'period_from': instance.period_from,
      'period_to': instance.period_to,
      'price': instance.price,
      'name': instance.name,
      'distination': instance.distination,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'period_of_stay': instance.period_of_stay,
      'total': instance.total,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
      'addons': instance.addons,
    };
