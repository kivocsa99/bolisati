// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'domesticworkersmodel.freezed.dart';
part 'domesticworkersmodel.g.dart';

@freezed
class DomesticWorkersOrderModel with _$DomesticWorkersOrderModel {
  const factory DomesticWorkersOrderModel({int? id}) = _DomesticWorkersOrderModel;
  factory DomesticWorkersOrderModel.fromJson(Map<String, dynamic> json) =>
      _$DomesticWorkersOrderModelFromJson(json);
}
