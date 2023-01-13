// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'childmodel.freezed.dart';
part 'childmodel.g.dart';

@freezed
class ChildModel with _$ChildModel {
  const factory ChildModel({
    int? id,
    int? educational_order_id,
    int? gender_id,
    String? national_id_number,
    String? name,
    String? birthdate,
    int? age,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _ChildModel;
  factory ChildModel.fromJson(Map<String, dynamic> json) =>
      _$ChildModelFromJson(json);
}
