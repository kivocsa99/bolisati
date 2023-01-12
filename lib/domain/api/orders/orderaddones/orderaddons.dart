// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'orderaddons.freezed.dart';
part 'orderaddons.g.dart';

@freezed
class OrderAddonsModel with _$OrderAddonsModel {
  const factory OrderAddonsModel({
    int? id,
    String? belongable_type,
    String? name,
    num? price,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _OrderAddonsModel;
  factory OrderAddonsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderAddonsModelFromJson(json);
}
