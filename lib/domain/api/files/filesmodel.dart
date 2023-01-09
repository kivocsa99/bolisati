// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';


part 'filesmodel.freezed.dart';
part 'filesmodel.g.dart';

@freezed
class FilesModel with _$FilesModel {
  const factory FilesModel({
    int? id,
    String? belongable_type,
    int? belongable_id,
    int? user_id,
    String? title,
    String? name,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _FilesModel;
  factory FilesModel.fromJson(Map<String, dynamic> json) =>
      _$FilesModelFromJson(json);
}
