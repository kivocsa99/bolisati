// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehiclemodelmodel.freezed.dart';
part 'vehiclemodelmodel.g.dart';

@freezed
class VehicleModelModel with _$VehicleModelModel {
  const factory VehicleModelModel({
    int? id,
    String? name,
    String? code,
    int? vehicle_make_id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _VehicleModelModel;
  factory VehicleModelModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelModelFromJson(json);
}
