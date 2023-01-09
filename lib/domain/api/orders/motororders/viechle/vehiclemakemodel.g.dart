// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehiclemakemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VehicleMakeModel _$$_VehicleMakeModelFromJson(Map<String, dynamic> json) =>
    _$_VehicleMakeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      logo: json['logo'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_VehicleMakeModelToJson(_$_VehicleMakeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'logo': instance.logo,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
