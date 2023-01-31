import 'package:bolisati/domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';

class PersonalPlaceOrderUseCaseInput {
  final String? token;
  final PersonalAccidentOrderModel? model;
  final String? addons;

  PersonalPlaceOrderUseCaseInput({this.model, this.token, this.addons});
}
