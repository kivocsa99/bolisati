// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalofferdonemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalOfferDoneModel _$$_PersonalOfferDoneModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalOfferDoneModel(
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      personal_accident_insurance_id:
          json['personal_accident_insurance_id'] as String?,
      personal_accident_occupation_id:
          json['personal_accident_occupation_id'] as String?,
      personal_accident_type_id: json['personal_accident_type_id'] as int?,
      personal_accident_order_status_id:
          json['personal_accident_order_status_id'] as int?,
      age_from: json['age_from'] as int?,
      age_to: json['age_to'] as int?,
      personal_accident_type: json['personal_accident_type'] as String?,
      personal_accident_occupation:
          json['personal_accident_occupation'] as String?,
      rate: json['rate'] as num?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      insurance_amount: json['insurance_amount'] as String?,
      birthdate: json['birthdate'] as String?,
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

Map<String, dynamic> _$$_PersonalOfferDoneModelToJson(
        _$_PersonalOfferDoneModel instance) =>
    <String, dynamic>{
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'personal_accident_insurance_id': instance.personal_accident_insurance_id,
      'personal_accident_occupation_id':
          instance.personal_accident_occupation_id,
      'personal_accident_type_id': instance.personal_accident_type_id,
      'personal_accident_order_status_id':
          instance.personal_accident_order_status_id,
      'age_from': instance.age_from,
      'age_to': instance.age_to,
      'personal_accident_type': instance.personal_accident_type,
      'personal_accident_occupation': instance.personal_accident_occupation,
      'rate': instance.rate,
      'name': instance.name,
      'age': instance.age,
      'insurance_amount': instance.insurance_amount,
      'birthdate': instance.birthdate,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'total': instance.total,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'id': instance.id,
      'addons': instance.addons,
    };
