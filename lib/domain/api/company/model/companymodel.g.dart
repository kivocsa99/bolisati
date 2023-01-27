// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companymodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyModel _$$_CompanyModelFromJson(Map<String, dynamic> json) =>
    _$_CompanyModel(
      id: json['id'] as int?,
      parent_company_id: json['parent_company_id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      description: json['description'] as String?,
      description_ar: json['description_ar'] as String?,
      code: json['code'] as String?,
      email: json['email'] as String?,
      p_d_f_s: (json['p_d_f_s'] as List<dynamic>?)
          ?.map((e) => PdfModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_CompanyModelToJson(_$_CompanyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_company_id': instance.parent_company_id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'description': instance.description,
      'description_ar': instance.description_ar,
      'code': instance.code,
      'email': instance.email,
      'p_d_f_s': instance.p_d_f_s,
      'image': instance.image,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
