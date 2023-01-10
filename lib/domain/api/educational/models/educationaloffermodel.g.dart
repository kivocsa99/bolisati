// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'educationaloffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationalOffersModel _$$_EducationalOffersModelFromJson(
        Map<String, dynamic> json) =>
    _$_EducationalOffersModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      price: json['price'] as int?,
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

Map<String, dynamic> _$$_EducationalOffersModelToJson(
        _$_EducationalOffersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
      'company': instance.company,
    };
