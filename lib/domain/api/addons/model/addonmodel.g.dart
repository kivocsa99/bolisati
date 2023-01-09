// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addonmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddonModel _$$_AddonModelFromJson(Map<String, dynamic> json) =>
    _$_AddonModel(
      id: json['id'] as int?,
      insurance_type_id: json['insurance_type_id'] as String?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      addon: json['addon'] == null
          ? null
          : AddonModel.fromJson(json['addon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AddonModelToJson(_$_AddonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'insurance_type_id': instance.insurance_type_id,
      'code': instance.code,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'addon': instance.addon,
    };
