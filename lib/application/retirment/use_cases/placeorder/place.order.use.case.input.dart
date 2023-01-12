import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';

class RetirmentPlaceOrderUseCaseInput {
  final String? token;
  final RetirementOrderModel? retirementOrderModel;

  RetirmentPlaceOrderUseCaseInput({
    this.token,
    this.retirementOrderModel,
  });
}
