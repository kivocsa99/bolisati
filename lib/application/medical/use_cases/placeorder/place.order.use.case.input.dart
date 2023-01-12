import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';

class MedicalPlaceOrderUseCaseInput {
  final String? token;
  final String? addons;
  final MedicalOrderModel? medicalOrderModel;

  MedicalPlaceOrderUseCaseInput({
    this.token,
    this.addons,
    this.medicalOrderModel,
  });
}
