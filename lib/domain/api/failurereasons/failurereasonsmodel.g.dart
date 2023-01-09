// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failurereasonsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FailureReasonsModel _$$_FailureReasonsModelFromJson(
        Map<String, dynamic> json) =>
    _$_FailureReasonsModel(
      medical_insurance_id: json['medical_insurance_id'] as int?,
      marital_status_id: json['marital_status_id'] as int?,
      name: json['name'] as String?,
      birth_date: json['birth_date'] as String?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
    );

Map<String, dynamic> _$$_FailureReasonsModelToJson(
        _$_FailureReasonsModel instance) =>
    <String, dynamic>{
      'medical_insurance_id': instance.medical_insurance_id,
      'marital_status_id': instance.marital_status_id,
      'name': instance.name,
      'birth_date': instance.birth_date,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
    };
