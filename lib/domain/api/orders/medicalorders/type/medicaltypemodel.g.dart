// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicaltypemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalTypeModel _$$_MedicalTypeModelFromJson(Map<String, dynamic> json) =>
    _$_MedicalTypeModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      name: json['name'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_MedicalTypeModelToJson(_$_MedicalTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
