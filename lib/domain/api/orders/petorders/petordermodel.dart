// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'petordermodel.freezed.dart';
part 'petordermodel.g.dart';

@freezed
class PetOrderModel with _$PetOrderModel {
  const factory PetOrderModel({int? id}) = _PetOrderModel;
  factory PetOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PetOrderModelFromJson(json);
}
