import 'package:bolisati/domain/api/orders/travelorders/travelordermodel.dart';

class TravelPlaceOrderUseCaseInput {
  final String? token;
  final String? addons;
  final TravelOrderModel? travelOrder;

  TravelPlaceOrderUseCaseInput({this.addons, this.travelOrder, this.token});
}
