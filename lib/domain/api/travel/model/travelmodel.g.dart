// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travelmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelOffersModel _$$_TravelOffersModelFromJson(Map<String, dynamic> json) =>
    _$_TravelOffersModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      travel_region_id: json['travel_region_id'] as int?,
      period_from: json['period_from'] as int?,
      period_to: json['period_to'] as int?,
      age_form: json['age_form'] as int?,
      age_to: json['age_to'] as int?,
      price: json['price'] as num?,
      active: json['active'] as int?,
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

Map<String, dynamic> _$$_TravelOffersModelToJson(
        _$_TravelOffersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'travel_region_id': instance.travel_region_id,
      'period_from': instance.period_from,
      'period_to': instance.period_to,
      'age_form': instance.age_form,
      'age_to': instance.age_to,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
      'company': instance.company,
    };
