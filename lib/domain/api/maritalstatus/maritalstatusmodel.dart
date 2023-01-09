// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';


part 'maritalstatusmodel.freezed.dart';
part 'maritalstatusmodel.g.dart';

@freezed
class MaritalStatusModel with _$MaritalStatusModel {
  const factory MaritalStatusModel({
    int? id,
    String? code,
    String? name,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _MaritalStatusModel;
  factory MaritalStatusModel.fromJson(Map<String, dynamic> json) =>
      _$MaritalStatusModelFromJson(json);
}
