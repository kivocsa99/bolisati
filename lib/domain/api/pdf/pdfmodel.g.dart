// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdfmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PdfModel _$$_PdfModelFromJson(Map<String, dynamic> json) => _$_PdfModel(
      id: json['id'] as int?,
      company_id: json['company_id'] as int?,
      insurance_type_id: json['insurance_type_id'] as int?,
      file: json['file'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_PdfModelToJson(_$_PdfModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.company_id,
      'insurance_type_id': instance.insurance_type_id,
      'file': instance.file,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
