import 'package:bolisati/domain/api/educational/models/ducationaldoneoffermodel.dart';

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
