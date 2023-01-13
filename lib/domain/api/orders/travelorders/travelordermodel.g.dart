// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travelordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelOrderModel _$$_TravelOrderModelFromJson(Map<String, dynamic> json) =>
    _$_TravelOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      travel_insurance_id: json['travel_insurance_id'] as int?,
      travel_region_id: json['travel_region_id'] as int?,
      travel_order_status_id: json['travel_order_status_id'] as int?,
      travel_region_name: json['travel_region_name'] as String?,
      period_from: json['period_from'] as num?,
      period_to: json['period_to'] as num?,
      age_from: json['age_from'] as int?,
      age_to: json['age_to'] as int?,
      price: json['price'] as num?,
      name: json['name'] as String?,
      destination: json['destination'] as String?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      period_of_stay: json['period_of_stay'] as int?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      total: json['total'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      customer: json['customer'] == null
          ? null
          : UserModel.fromJson(json['customer'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      insurance_offer: json['insurance_offer'] == null
          ? null
          : TravelInsuranceOfferModel.fromJson(
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
      region: json['region'] == null
          ? null
          : RegionModel.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TravelOrderModelToJson(_$_TravelOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'travel_insurance_id': instance.travel_insurance_id,
      'travel_region_id': instance.travel_region_id,
      'travel_order_status_id': instance.travel_order_status_id,
      'travel_region_name': instance.travel_region_name,
      'period_from': instance.period_from,
      'period_to': instance.period_to,
      'age_from': instance.age_from,
      'age_to': instance.age_to,
      'price': instance.price,
      'name': instance.name,
      'destination': instance.destination,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'period_of_stay': instance.period_of_stay,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'total': instance.total,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'customer': instance.customer,
      'company': instance.company,
      'insurance_offer': instance.insurance_offer,
      'status': instance.status,
      'addons': instance.addons,
      'files': instance.files,
      'region': instance.region,
    };
