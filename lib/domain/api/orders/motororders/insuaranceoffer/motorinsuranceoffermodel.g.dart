// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motorinsuranceoffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MotorInsuranceOfferModel _$$_MotorInsuranceOfferModelFromJson(
        Map<String, dynamic> json) =>
    _$_MotorInsuranceOfferModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      price_from: json['price_from'] as int?,
      price_to: json['price_to'] as int?,
      fixed: json['fixed'] as int?,
      precentage: json['precentage'] as int?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_MotorInsuranceOfferModelToJson(
        _$_MotorInsuranceOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'price_from': instance.price_from,
      'price_to': instance.price_to,
      'fixed': instance.fixed,
      'precentage': instance.precentage,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
