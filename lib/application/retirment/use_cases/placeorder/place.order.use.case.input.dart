import 'package:bolisati/domain/api/motor/model/motormodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';

class RetirmentPlaceOrderUseCaseInput {
  final String? token;
  final RetirementOrderModel? retirementOrderModel;

  RetirmentPlaceOrderUseCaseInput({
    this.token,
    this.retirementOrderModel,
  });
}
