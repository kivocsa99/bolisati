// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'personalaccidentordermodel.freezed.dart';
part 'personalaccidentordermodel.g.dart';

@freezed
class PersonalAccidentOrderModel with _$PersonalAccidentOrderModel {
  const factory PersonalAccidentOrderModel({int? id}) =
      _PersonalAccidentOrderModel;
  factory PersonalAccidentOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalAccidentOrderModelFromJson(json);
}
