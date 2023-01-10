import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';

class MotorPlaceOrderUseCaseInput {
  final String? token;
  final MotorOrderModel? motorOrder;
  final String? addons;

  MotorPlaceOrderUseCaseInput({this.motorOrder, this.token,this.addons});
}
