// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addonsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddonsModel _$$_AddonsModelFromJson(Map<String, dynamic> json) =>
    _$_AddonsModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      insurance_type_id: json['insurance_type_id'] as int?,
      addon_id: json['addon_id'] as int?,
      price: json['price'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      addon: json['addon'] == null
          ? null
          : AddonModel.fromJson(json['addon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddonsModelToJson(_$_AddonsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'insurance_type_id': instance.insurance_type_id,
      'addon_id': instance.addon_id,
      'price': instance.price,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addon': instance.addon,
    };
