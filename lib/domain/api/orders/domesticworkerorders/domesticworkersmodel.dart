// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/user/model/usermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../company/model/companymodel.dart';
import '../../files/filesmodel.dart';
import '../../insurance/insuranceoffer.dart';
import '../../status/statusmodel.dart';
import '../orderaddones/orderaddons.dart';
part 'domesticworkersmodel.freezed.dart';
part 'domesticworkersmodel.g.dart';

@freezed
class DomesticWorkersOrderModel with _$DomesticWorkersOrderModel {
  const factory DomesticWorkersOrderModel({
    int? id,
    int? customer_user_id,
    int? company_id,
    int? domestic_worker_insurance_id,
    int? domestic_worker_order_status_id,
    String? name,
    String? national_id_number,
    String? worker_name,
    String? start_date,
    String? end_date,
    num? total,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    InsuranceOfferModel? insurance_offer,
    UserModel? customer,
    CompanyModel? company,
    StatusModel? status,
    List<OrderAddonsModel>? addons,
    List<FilesModel>? files,
  }) = _DomesticWorkersOrderModel;
  factory DomesticWorkersOrderModel.fromJson(Map<String, dynamic> json) =>
      _$DomesticWorkersOrderModelFromJson(json);
}
