import 'package:bolisati/domain/api/motor/model/motormodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';

class RetirmentPlaceOrderUseCaseInput {
  final String? token;
  final String? addons;
  final MedicalOrderModel? medicalOrderModel;

  RetirmentPlaceOrderUseCaseInput({
    this.token,
    this.addons,
    this.medicalOrderModel,
  });
}
