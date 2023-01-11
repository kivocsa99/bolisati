import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:bolisati/domain/api/personal/model/personalofferdonemodel.dart';

class PersonalPlaceOrderUseCaseInput {
  final String? token;
  final PersonalOfferDoneModel? model;
  final String? addons;

  PersonalPlaceOrderUseCaseInput({this.model, this.token, this.addons});
}
