import 'package:bolisati/domain/api/educational/models/ducationaldoneoffermodel.dart';
import 'package:bolisati/domain/api/motor/model/motormodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';

class EducationalPlaceOrderUseCaseInput {
  final String? token;
  final String? addons;
  final EducationalDoneModel? model;

  EducationalPlaceOrderUseCaseInput({
    this.token,
    this.addons,
    this.model,
  });
}
