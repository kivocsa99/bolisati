// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

//needs work
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../addons/model/addonsmodel.dart';

part 'educationaloffermodel.freezed.dart';
part 'educationaloffermodel.g.dart';

@freezed
class EducationalChildDoneModel with _$EducationalChildDoneModel {
  const factory EducationalChildDoneModel({
    int? id,
    String? educational_order_id,
    String? name,
    String? birthdate,
    int? age,
    String? national_id_number,
    String? gender_id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<AddonsModel>? addons,
  }) = _EducationalChildDoneModel;
  factory EducationalChildDoneModel.fromJson(Map<String, dynamic> json) =>
      _$EducationalChildDoneModelFromJson(json);
}
