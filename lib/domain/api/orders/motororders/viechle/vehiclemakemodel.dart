// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehiclemakemodel.freezed.dart';
part 'vehiclemakemodel.g.dart';

@freezed
class VehicleMakeModel with _$VehicleMakeModel {
  const factory VehicleMakeModel({
    int? id,
    String? name,
    String? code,
    String? logo,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _VehicleMakeModel;
  factory VehicleMakeModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleMakeModelFromJson(json);
}
