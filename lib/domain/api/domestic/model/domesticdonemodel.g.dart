// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domesticdonemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DomesticDoneModel _$$_DomesticDoneModelFromJson(Map<String, dynamic> json) =>
    _$_DomesticDoneModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      domestic_worker_order_status_id:
          json['domestic_worker_order_status_id'] as int?,
      name: json['name'] as String?,
      national_id_number: json['national_id_number'] as String?,
      worker_name: json['worker_name'] as String?,
      active: json['active'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      total: json['total'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => AddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DomesticDoneModelToJson(
        _$_DomesticDoneModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'customer_user_id': instance.customer_user_id,
      'domestic_worker_order_status_id':
          instance.domestic_worker_order_status_id,
      'name': instance.name,
      'national_id_number': instance.national_id_number,
      'worker_name': instance.worker_name,
      'active': instance.active,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'total': instance.total,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'addons': instance.addons,
    };
