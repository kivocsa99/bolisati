// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      email_verified_at: json['email_verified_at'] as String?,
      belongable_type: json['belongable_type'] as String?,
      belongable_id: json['belongable_id'] as int?,
      language: json['language'] as String?,
      countryid: json['countryid'] as int?,
      created_at: json['created_at'] as String?,
      active: json['active'] as int?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'email_verified_at': instance.email_verified_at,
      'belongable_type': instance.belongable_type,
      'belongable_id': instance.belongable_id,
      'language': instance.language,
      'countryid': instance.countryid,
      'created_at': instance.created_at,
      'active': instance.active,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
