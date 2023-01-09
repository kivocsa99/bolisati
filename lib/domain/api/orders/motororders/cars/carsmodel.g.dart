// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarsModel _$$_CarsModelFromJson(Map<String, dynamic> json) => _$_CarsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      vehicle_make_id: json['vehicle_make_id'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_CarsModelToJson(_$_CarsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'vehicle_make_id': instance.vehicle_make_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
