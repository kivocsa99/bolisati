// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travelorderdonemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelOrderDoneModel _$$_TravelOrderDoneModelFromJson(
        Map<String, dynamic> json) =>
    _$_TravelOrderDoneModel(
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      travel_insurance_id: json['travel_insurance_id'] as String?,
      travel_region_id: json['travel_region_id'] as int?,
      travel_order_status_id: json['travel_order_status_id'] as int?,
      travel_region_name: json['travel_region_name'] as String?,
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

Map<String, dynamic> _$$_TravelOrderDoneModelToJson(
        _$_TravelOrderDoneModel instance) =>
    <String, dynamic>{
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'travel_insurance_id': instance.travel_insurance_id,
      'travel_region_id': instance.travel_region_id,
      'travel_order_status_id': instance.travel_order_status_id,
      'travel_region_name': instance.travel_region_name,
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
