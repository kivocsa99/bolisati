// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ducationaldoneoffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationalOffersModel _$$_EducationalOffersModelFromJson(
        Map<String, dynamic> json) =>
    _$_EducationalOffersModel(
      customer_user_id: json['customer_user_id'] as int?,
      educational_type_id: json['educational_type_id'] as String?,
      company_id: json['company_id'] as int?,
      educational_order_status_id: json['educational_order_status_id'] as int?,
      educational_type: json['educational_type'] as String?,
      name: json['name'] as String?,
      monthly_fee: json['monthly_fee'] as String?,
      university_fee: json['university_fee'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      total: json['total'] as num?,
      active: json['active'] as int?,
      id: json['id'] as int?,
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
      'customer_user_id': instance.customer_user_id,
      'educational_type_id': instance.educational_type_id,
      'company_id': instance.company_id,
      'educational_order_status_id': instance.educational_order_status_id,
      'educational_type': instance.educational_type,
      'name': instance.name,
      'monthly_fee': instance.monthly_fee,
      'university_fee': instance.university_fee,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'total': instance.total,
      'active': instance.active,
      'id': instance.id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addons': instance.addons,
      'company': instance.company,
    };
