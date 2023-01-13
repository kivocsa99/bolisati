// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domesticworkersmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DomesticWorkersOrderModel _$$_DomesticWorkersOrderModelFromJson(
        Map<String, dynamic> json) =>
    _$_DomesticWorkersOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      domestic_worker_insurance_id:
          json['domestic_worker_insurance_id'] as int?,
      domestic_worker_order_status_id:
          json['domestic_worker_order_status_id'] as int?,
      name: json['name'] as String?,
      national_id_number: json['national_id_number'] as String?,
      worker_name: json['worker_name'] as String?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      total: json['total'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      insurance_offer: json['insurance_offer'] == null
          ? null
          : InsuranceOfferModel.fromJson(
              json['insurance_offer'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : UserModel.fromJson(json['customer'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => OrderAddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DomesticWorkersOrderModelToJson(
        _$_DomesticWorkersOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'domestic_worker_insurance_id': instance.domestic_worker_insurance_id,
      'domestic_worker_order_status_id':
          instance.domestic_worker_order_status_id,
      'name': instance.name,
      'national_id_number': instance.national_id_number,
      'worker_name': instance.worker_name,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'total': instance.total,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'insurance_offer': instance.insurance_offer,
      'customer': instance.customer,
      'company': instance.company,
      'status': instance.status,
      'addons': instance.addons,
      'files': instance.files,
    };
