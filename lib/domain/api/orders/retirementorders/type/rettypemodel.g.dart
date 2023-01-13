// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rettypemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RetTypeModel _$$_RetTypeModelFromJson(Map<String, dynamic> json) =>
    _$_RetTypeModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_RetTypeModelToJson(_$_RetTypeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
