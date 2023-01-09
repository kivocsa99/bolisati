// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gendermodel.freezed.dart';
part 'gendermodel.g.dart';

@freezed
class GenderModel with _$GenderModel {
  const factory GenderModel({
    int? id,
    String? code,
    String? name,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _GenderModel;
  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);
}
