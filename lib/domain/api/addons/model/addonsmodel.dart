// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import 'addonmodel.dart';

part 'addonsmodel.freezed.dart';
part 'addonsmodel.g.dart';

@freezed
class AddonsModel with _$AddonsModel {
  const factory AddonsModel({
    int? id,
    int? company_id,
    int? insurance_type_id,
    int? addon_id,
    num? price,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    AddonModel? addon,
  }) = _AddonsModel;
  factory AddonsModel.fromJson(Map<String, dynamic> json) =>
      _$AddonsModelFromJson(json);
}
