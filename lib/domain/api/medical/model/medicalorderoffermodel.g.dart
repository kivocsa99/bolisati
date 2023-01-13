// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicalorderoffermodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MedicalOrderOfferModel _$$_MedicalOrderOfferModelFromJson(
        Map<String, dynamic> json) =>
    _$_MedicalOrderOfferModel(
      customer_user_id: json['customer_user_id'] as int?,
      company_id: json['company_id'] as int?,
      medical_insurance_id: json['medical_insurance_id'] as int?,
      marital_status_id: json['marital_status_id'] as int?,
      medical_insurance_type_id: json['medical_insurance_type_id'] as int?,
      gender_id: json['gender_id'] as int?,
      age_form: json['age_form'] as int?,
      age_to: json['age_to'] as int?,
      medical_insurance_type: json['medical_insurance_type'] as String?,
      gender: json['gender'] == null
          ? null
          : GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      price: json['price'] as num?,
      name: json['name'] as String?,
      birth_date: json['birth_date'] as String?,
      age: json['age'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      id: json['id'] as int?,
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => AddonsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MedicalOrderOfferModelToJson(
        _$_MedicalOrderOfferModel instance) =>
    <String, dynamic>{
      'customer_user_id': instance.customer_user_id,
      'company_id': instance.company_id,
      'medical_insurance_id': instance.medical_insurance_id,
      'marital_status_id': instance.marital_status_id,
      'medical_insurance_type_id': instance.medical_insurance_type_id,
      'gender_id': instance.gender_id,
      'age_form': instance.age_form,
      'age_to': instance.age_to,
      'medical_insurance_type': instance.medical_insurance_type,
      'gender': instance.gender,
      'price': instance.price,
      'name': instance.name,
      'birth_date': instance.birth_date,
      'age': instance.age,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'id': instance.id,
      'addons': instance.addons,
    };
