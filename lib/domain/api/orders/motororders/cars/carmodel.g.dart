// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarModel _$$_CarModelFromJson(Map<String, dynamic> json) => _$_CarModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      logo: json['logo'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      models: (json['models'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : CarsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CarModelToJson(_$_CarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'logo': instance.logo,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'models': instance.models,
    };
