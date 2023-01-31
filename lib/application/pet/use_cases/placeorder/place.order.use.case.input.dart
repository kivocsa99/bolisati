import 'package:bolisati/domain/api/orders/petorders/petordermodel.dart';

class PetPlaceOrderUseCaseInput {
  final String? token;
  final PetOrderModel? model;
  final String? addons;

  PetPlaceOrderUseCaseInput({this.model, this.token, this.addons});
}
