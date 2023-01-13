// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personalinsuranceoffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalInsuranceOfferModel _$$_PersonalInsuranceOfferModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalInsuranceOfferModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      age_from: json['age_from'] as num?,
      age_to: json['age_to'] as num?,
      personal_accident_type_id: json['personal_accident_type_id'] as num?,
      rate: json['rate'] as num?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_PersonalInsuranceOfferModelToJson(
        _$_PersonalInsuranceOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'age_from': instance.age_from,
      'age_to': instance.age_to,
      'personal_accident_type_id': instance.personal_accident_type_id,
      'rate': instance.rate,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
