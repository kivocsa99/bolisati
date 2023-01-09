// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'medicaltypemodel.freezed.dart';
part 'medicaltypemodel.g.dart';

@freezed
class MedicalTypeModel with _$MedicalTypeModel {
  const factory MedicalTypeModel({
    int? id,
    String? code,
    String? name,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _MedicalTypeModel;
  factory MedicalTypeModel.fromJson(Map<String, dynamic> json) =>
      _$MedicalTypeModelFromJson(json);
}
