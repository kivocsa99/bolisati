// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'educationalordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationalOrderModel _$$_EducationalOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_EducationalOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      educational_type_id: json['educational_type_id'] as int?,
      personal_accident_type_id: json['personal_accident_type_id'] as int?,
      educational_order_status_id: json['educational_order_status_id'] as int?,
      educational_type: json['educational_type'] as String?,
      name: json['name'] as String?,
      end_date: json['end_date'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      monthly_fee: json['monthly_fee'] as int?,
      university_fee: json['university_fee'] as int?,
      total: json['total'] as num?,
      rate: json['rate'] as num?,
      total_without_addons: json['total_without_addons'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      customer: json['customer'] == null
          ? null
          : UserModel.fromJson(json['customer'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : RetTypeModel.fromJson(json['type'] as Map<String, dynamic>),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => OrderAddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      kids: (json['kids'] as List<dynamic>?)
          ?.map((e) => ChildModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EducationalOrderModelToJson(
        _$_EducationalOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'educational_type_id': instance.educational_type_id,
      'personal_accident_type_id': instance.personal_accident_type_id,
      'educational_order_status_id': instance.educational_order_status_id,
      'educational_type': instance.educational_type,
      'name': instance.name,
      'end_date': instance.end_date,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'monthly_fee': instance.monthly_fee,
      'university_fee': instance.university_fee,
      'total': instance.total,
      'rate': instance.rate,
      'total_without_addons': instance.total_without_addons,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'customer': instance.customer,
      'company': instance.company,
      'type': instance.type,
      'addons': instance.addons,
      'status': instance.status,
      'files': instance.files,
      'kids': instance.kids,
    };
