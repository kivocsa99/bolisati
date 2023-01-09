// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? email_verified_at,
    String? belongable_type,
    int? belongable_id,
    String? language,
    int? countryid,
    String? created_at,
    int? active,
    String? updated_at,
    String? deleted_at,
  }) = _UserModel;
  const UserModel._();
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
