// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'retirementordermodel.freezed.dart';
part 'retirementordermodel.g.dart';

@freezed
class RetirementOrderModel with _$RetirementOrderModel {
  const factory RetirementOrderModel({int? id}) = _RetirementOrderModel;
  factory RetirementOrderModel.fromJson(Map<String, dynamic> json) =>
      _$RetirementOrderModelFromJson(json);
}
