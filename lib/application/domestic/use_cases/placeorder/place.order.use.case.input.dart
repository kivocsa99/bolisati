import 'package:bolisati/domain/api/domestic/model/domesticdonemodel.dart';

class DomesticPlaceOrderUseCaseInput {
  final String? token;
  final String? addons;
  final DomesticDoneModel? model;

  DomesticPlaceOrderUseCaseInput({
    this.token,
    this.addons,
    this.model,
  });
}
