// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bolisati/domain/api/orders/educationalorders/educationalordermodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:bolisati/domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';
import 'package:bolisati/domain/api/orders/petorders/petordermodel.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';
import 'package:bolisati/domain/api/orders/travelorders/travelordermodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'domesticworkerorders/domesticworkersmodel.dart';
part 'user.orders.model.freezed.dart';
part 'user.orders.model.g.dart';

@freezed
class UserOrdersModel with _$UserOrdersModel {
  const factory UserOrdersModel({
    String? AZSVR,
    List<DomesticWorkersOrderModel>? DomesticWorkerOrders,
    List<EducationalOrderModel>? EducationalOrders,
    List<MedicalOrderModel>? MedicalOrders,
    List<MotorOrderModel>? MotorOrders,
    List<PersonalAccidentOrderModel>? PersonalAccidentOrders,
    List<PetOrderModel>? PetOrders,
    List<RetirementOrderModel>? RetirementOrders,
    List<TravelOrderModel>? TravelOrders,
  }) = _UserOrdersModel;
  factory UserOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$UserOrdersModelFromJson(json);
}
