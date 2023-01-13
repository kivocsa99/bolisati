// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicalordermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalOrderModel _$$_MedicalOrderModelFromJson(Map<String, dynamic> json) =>
    _$_MedicalOrderModel(
      id: json['id'] as int?,
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      medical_insurance_id: json['medical_insurance_id'] as int?,
      marital_status_id: json['marital_status_id'] as int?,
      medical_insurance_type_id: json['medical_insurance_type_id'] as int?,
      gender_id: json['gender_id'] as int?,
      medical_order_status_id: json['medical_order_status_id'] as int?,
      age_form: json['age_form'] as int?,
      age_to: json['age_to'] as int?,
      medical_insurance_type: json['medical_insurance_type'] as String?,
      gender: json['gender'] == null
          ? null
          : GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      price: json['price'] as num?,
      name: json['name'] as String?,
      birthdate: json['birthdate'] as String?,
      age: json['age'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      total: json['total'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      customer: json['customer'] == null
          ? null
          : UserModel.fromJson(json['customer'] as Map<String, dynamic>),
      company: json['company'] == null
          ? null
          : CompanyModel.fromJson(json['company'] as Map<String, dynamic>),
      insurance_offer: json['insurance_offer'] == null
          ? null
          : MedicalInsuranceOfferModel.fromJson(
              json['insurance_offer'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => OrderAddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FilesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      marital_status: json['marital_status'] == null
          ? null
          : MaritalStatusModel.fromJson(
              json['marital_status'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : MedicalTypeModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MedicalOrderModelToJson(
        _$_MedicalOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'medical_insurance_id': instance.medical_insurance_id,
      'marital_status_id': instance.marital_status_id,
      'medical_insurance_type_id': instance.medical_insurance_type_id,
      'gender_id': instance.gender_id,
      'medical_order_status_id': instance.medical_order_status_id,
      'age_form': instance.age_form,
      'age_to': instance.age_to,
      'medical_insurance_type': instance.medical_insurance_type,
      'gender': instance.gender,
      'price': instance.price,
      'name': instance.name,
      'birthdate': instance.birthdate,
      'age': instance.age,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'total': instance.total,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'customer': instance.customer,
      'company': instance.company,
      'insurance_offer': instance.insurance_offer,
      'status': instance.status,
      'addons': instance.addons,
      'files': instance.files,
      'marital_status': instance.marital_status,
      'type': instance.type,
    };
