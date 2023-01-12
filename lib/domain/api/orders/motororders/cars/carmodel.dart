// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import 'carsmodel.dart';

part 'carmodel.freezed.dart';
part 'carmodel.g.dart';

@freezed
class CarModel with _$CarModel {
  const factory CarModel({
    int? id,
    String? name,
    String? code,
    String? logo,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<CarsModel?>? models,
  }) = _CarModel;
  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);
}
