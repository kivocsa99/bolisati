// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motorordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MotorOrderModel _$$_MotorOrderModelFromJson(Map<String, dynamic> json) =>
    _$_MotorOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      motor_insurance_id: json['motor_insurance_id'] as int?,
      vehicle_make_id: json['vehicle_make_id'] as int?,
      vehicle_model_id: json['vehicle_model_id'] as int?,
      price: json['price'] as num?,
      price_from: json['price_from'] as num?,
      price_to: json['price_to'] as num?,
      fixed: json['fixed'] as int?,
      percentage: json['percentage'] as num?,
      vehicle_make: json['vehicle_make'] == null
          ? null
          : VehicleMakeModel.fromJson(
              json['vehicle_make'] as Map<String, dynamic>),
      vehicle_model: json['vehicle_model'] == null
          ? null
          : VehicleModelModel.fromJson(
              json['vehicle_model'] as Map<String, dynamic>),
      name: json['name'] as String?,
      car_make: json['car_make'] as String?,
      car_model: json['car_model'] as String?,
      estimated_car_price: json['estimated_car_price'] as int?,
      previous_accidents: json['previous_accidents'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      fuel_type: json['fuel_type'] as String?,
      car_year: json['car_year'] as String?,
      total: json['total'] as num?,
      customer: json['customer'] == null
          ? null
          : UserModel.fromJson(json['customer'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      insurance_offer: json['insurance_offer'] == null
          ? null
          : MotorInsuranceOfferModel.fromJson(
              json['insurance_offer'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => OrderAddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_MotorOrderModelToJson(_$_MotorOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'motor_insurance_id': instance.motor_insurance_id,
      'vehicle_make_id': instance.vehicle_make_id,
      'vehicle_model_id': instance.vehicle_model_id,
      'price': instance.price,
      'price_from': instance.price_from,
      'price_to': instance.price_to,
      'fixed': instance.fixed,
      'percentage': instance.percentage,
      'vehicle_make': instance.vehicle_make,
      'vehicle_model': instance.vehicle_model,
      'name': instance.name,
      'car_make': instance.car_make,
      'car_model': instance.car_model,
      'estimated_car_price': instance.estimated_car_price,
      'previous_accidents': instance.previous_accidents,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'fuel_type': instance.fuel_type,
      'car_year': instance.car_year,
      'total': instance.total,
      'customer': instance.customer,
      'company': instance.company,
      'insurance_offer': instance.insurance_offer,
      'status': instance.status,
      'addons': instance.addons,
      'files': instance.files,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
