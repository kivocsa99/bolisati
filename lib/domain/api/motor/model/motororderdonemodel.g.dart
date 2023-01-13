// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motororderdonemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MotorOrderDoneModel _$$_MotorOrderDoneModelFromJson(
        Map<String, dynamic> json) =>
    _$_MotorOrderDoneModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      price_from: json['price_from'] as num?,
      price_to: json['price_to'] as num?,
      fixed: json['fixed'] as int?,
      percentage: json['percentage'] as num?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => AddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      customer_user_id: json['customer_user_id'] as int?,
      motor_insurance_id: json['motor_insurance_id'] as String?,
      vehicle_make_id: json['vehicle_make_id'] as int?,
      vehicle_model_id: json['vehicle_model_id'] as String?,
      motor_order_status_id: json['motor_order_status_id'] as int?,
      car_make: json['car_make'] as String?,
      car_model: json['car_model'] as String?,
      name: json['name'] as String?,
      estimated_car_price: json['estimated_car_price'] as String?,
      previous_accidents: json['previous_accidents'] as String?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      fuel_type: json['fuel_type'] as String?,
      car_year: json['car_year'] as String?,
      total: json['total'] as num?,
    );

Map<String, dynamic> _$$_MotorOrderDoneModelToJson(
        _$_MotorOrderDoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'price_from': instance.price_from,
      'price_to': instance.price_to,
      'fixed': instance.fixed,
      'percentage': instance.percentage,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
      'customer_user_id': instance.customer_user_id,
      'motor_insurance_id': instance.motor_insurance_id,
      'vehicle_make_id': instance.vehicle_make_id,
      'vehicle_model_id': instance.vehicle_model_id,
      'motor_order_status_id': instance.motor_order_status_id,
      'car_make': instance.car_make,
      'car_model': instance.car_model,
      'name': instance.name,
      'estimated_car_price': instance.estimated_car_price,
      'previous_accidents': instance.previous_accidents,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'fuel_type': instance.fuel_type,
      'car_year': instance.car_year,
      'total': instance.total,
    };
