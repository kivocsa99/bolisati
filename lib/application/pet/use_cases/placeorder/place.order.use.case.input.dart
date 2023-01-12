import 'package:bolisati/domain/api/pet/model/petorderdonemodel.dart';

class PetPlaceOrderUseCaseInput {
  final String? token;
  final PetOrderDoneModel? model;
  final String? addons;

  PetPlaceOrderUseCaseInput({this.model, this.token, this.addons});
}
