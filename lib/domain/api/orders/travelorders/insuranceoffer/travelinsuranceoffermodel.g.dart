// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travelinsuranceoffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelInsuranceOfferModel _$$_TravelInsuranceOfferModelFromJson(
        Map<String, dynamic> json) =>
    _$_TravelInsuranceOfferModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      travel_region_id: json['travel_region_id'] as int?,
      period_from: json['period_from'] as int?,
      period_to: json['period_to'] as int?,
      age_from: json['age_from'] as int?,
      age_to: json['age_to'] as int?,
      price: json['price'] as num?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_TravelInsuranceOfferModelToJson(
        _$_TravelInsuranceOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'travel_region_id': instance.travel_region_id,
      'period_from': instance.period_from,
      'period_to': instance.period_to,
      'age_from': instance.age_from,
      'age_to': instance.age_to,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
