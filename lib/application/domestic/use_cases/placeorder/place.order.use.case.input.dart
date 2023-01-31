import 'package:bolisati/domain/api/domestic/model/domesticdonemodel.dart';
import 'package:bolisati/domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';

class DomesticPlaceOrderUseCaseInput {
  final String? token;
  final String? addons;
  final DomesticWorkersOrderModel? model;

  DomesticPlaceOrderUseCaseInput({
    this.token,
    this.addons,
    this.model,
  });
}
