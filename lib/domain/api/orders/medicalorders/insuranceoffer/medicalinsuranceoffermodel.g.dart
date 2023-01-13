// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicalinsuranceoffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalInsuranceOfferModel _$$_MedicalInsuranceOfferModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalInsuranceOfferModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      age_form: json['age_form'] as int?,
      age_to: json['age_to'] as int?,
      medical_insurance_type_id: json['medical_insurance_type_id'] as int?,
      gender_id: json['gender_id'] as int?,
      price: json['price'] as num?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_MedicalInsuranceOfferModelToJson(
        _$_MedicalInsuranceOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'age_form': instance.age_form,
      'age_to': instance.age_to,
      'medical_insurance_type_id': instance.medical_insurance_type_id,
      'gender_id': instance.gender_id,
      'price': instance.price,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
