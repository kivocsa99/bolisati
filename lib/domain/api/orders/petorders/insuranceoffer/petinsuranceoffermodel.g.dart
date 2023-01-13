// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'petinsuranceoffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PetInsuranceOfferModel _$$_PetInsuranceOfferModelFromJson(
        Map<String, dynamic> json) =>
    _$_PetInsuranceOfferModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      price: json['price'] as num?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_PetInsuranceOfferModelToJson(
        _$_PetInsuranceOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
