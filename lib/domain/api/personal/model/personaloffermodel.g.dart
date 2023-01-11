// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personaloffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonalOfferModel _$$_PersonalOfferModelFromJson(
        Map<String, dynamic> json) =>
    _$_PersonalOfferModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      price: json['price'] as int?,
      active: json['active'] as int?,
      age_from: json['age_from'] as int?,
      age_to: json['age_to'] as int?,
      personal_accident_type_id: json['personal_accident_type_id'] as int?,
      rate: json['rate'] as num?,
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

Map<String, dynamic> _$$_PersonalOfferModelToJson(
        _$_PersonalOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'price': instance.price,
      'active': instance.active,
      'age_from': instance.age_from,
      'age_to': instance.age_to,
      'personal_accident_type_id': instance.personal_accident_type_id,
      'rate': instance.rate,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
      'company': instance.company,
    };
