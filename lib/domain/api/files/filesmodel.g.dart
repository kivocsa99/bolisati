// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filesmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilesModel _$$_FilesModelFromJson(Map<String, dynamic> json) =>
    _$_FilesModel(
      id: json['id'] as int?,
      belongable_type: json['belongable_type'] as String?,
      belongable_id: json['belongable_id'] as int?,
      user_id: json['user_id'] as int?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_FilesModelToJson(_$_FilesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'belongable_type': instance.belongable_type,
      'belongable_id': instance.belongable_id,
      'user_id': instance.user_id,
      'title': instance.title,
      'name': instance.name,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
