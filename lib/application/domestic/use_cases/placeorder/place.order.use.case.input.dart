import 'package:bolisati/domain/api/domestic/model/domesticoffermodel.dart';
import 'package:bolisati/domain/api/motor/model/motormodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';

class DomesticPlaceOrderUseCaseInput {
  final String? token;
  final String? addons;
  final DomesticOfferModel? model;

 DomesticPlaceOrderUseCaseInput({
    this.token,
    this.addons,
    this.model,
  });
}
