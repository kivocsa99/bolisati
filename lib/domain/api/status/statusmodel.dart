// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'statusmodel.freezed.dart';
part 'statusmodel.g.dart';

@freezed
class StatusModel with _$StatusModel {
  const factory StatusModel({
    int? id,
    String? code,
    String? name,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _StatusModel;
  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
}
