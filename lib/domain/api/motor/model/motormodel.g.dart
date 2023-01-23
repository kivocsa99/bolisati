// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motormodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MotorOffersModel _$$_MotorOffersModelFromJson(Map<String, dynamic> json) =>
    _$_MotorOffersModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      price_from: json['price_from'] as num?,
      price_to: json['price_to'] as num?,
      fixed: json['fixed'] as int?,
      percentage: json['percentage'] as num?,
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

Map<String, dynamic> _$$_MotorOffersModelToJson(_$_MotorOffersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'price_from': instance.price_from,
      'price_to': instance.price_to,
      'fixed': instance.fixed,
      'percentage': instance.percentage,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
      'company': instance.company,
    };
