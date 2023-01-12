// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'carsmodel.freezed.dart';
part 'carsmodel.g.dart';

@freezed
class CarsModel with _$CarsModel {
  const factory CarsModel({
    int? id,
    String? name,
    String? code,
    int? vehicle_make_id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _CarsModel;
  factory CarsModel.fromJson(Map<String, dynamic> json) =>
      _$CarsModelFromJson(json);
}
