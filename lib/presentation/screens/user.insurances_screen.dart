// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/orders/user.orders.model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/provider/user.repository.provider.dart';
import '../../domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import '../../domain/api/orders/educationalorders/educationalordermodel.dart';
import '../../domain/api/orders/medicalorders/medicalordermodel.dart';
import '../../domain/api/orders/motororders/motorordermodel.dart';
import '../../domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';
import '../../domain/api/orders/petorders/petordermodel.dart';
import '../../domain/api/orders/travelorders/travelordermodel.dart';
import '../../router/app_route.gr.dart';
import '../widgets/horizantal_user_insurance_container.dart';

class UserInsuranceListScreen extends HookConsumerWidget {
  final UserOrdersModel? order;
  const UserInsuranceListScreen({super.key, this.order});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box setting = Hive.box("setting");
    final apitoken = setting.get('apitoken');
    final userOrderProvider = ref.watch(GetorderProvider(apitoken));
    final allinsurances = useState<List<dynamic>>([]);
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              context.locale.languageCode == "en"
                  ? Positioned(
                      left: 20,
                      top: 30,
                      child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new)))
                  : Positioned(
                      right: 20,
                      top: 30,
                      child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(FontAwesomeIcons.arrowRight))),
              Positioned(
                  left: context.locale.languageCode == "ar" ? 0 : 80,
                  right: context.locale.languageCode == "ar" ? 80 : 0,
                  top: 40,
                  child: Text(
                    "allins".tr(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: userOrderProvider.when(
                      data: (orders) {
                        return orders.fold(
                          (l) => const Text(
                            "contact",
                          ).tr(),
                          (r) {
                            UserOrdersModel orders = r;
                            List<dynamic> firstElements = [];

                            if (orders.DomesticWorkerOrders!.isNotEmpty) {
                              firstElements
                                  .add(orders.DomesticWorkerOrders![0]);
                            }
                            if (orders.EducationalOrders!.isNotEmpty) {
                              firstElements.add(orders.EducationalOrders![0]);
                            }
                            if (orders.MedicalOrders!.isNotEmpty) {
                              firstElements.add(orders.MedicalOrders![0]);
                            }
                            if (orders.MotorOrders!.isNotEmpty) {
                              firstElements.add(orders.MotorOrders![0]);
                            }
                            if (orders.PetOrders!.isNotEmpty) {
                              firstElements.add(orders.PetOrders![0]);
                            }
                            if (orders.PersonalAccidentOrders!.isNotEmpty) {
                              firstElements
                                  .add(orders.PersonalAccidentOrders![0]);
                            }
                            if (orders.RetirementOrders!.isNotEmpty) {
                              firstElements.add(orders.RetirementOrders![0]);
                            }
                            if (orders.TravelOrders!.isNotEmpty) {
                              firstElements.add(orders.TravelOrders![0]);
                            }
                            return Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: ListView.separated(
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(
                                        height: 10,
                                      );
                                    },
                                    itemBuilder: (context, index) {
                                      return firstElements.isNotEmpty
                                          ? HorizantalUesrInsuranceContainer(
                                              insuranceName:
                                                  firstElements[index].name,
                                              insuranceDescreption: firstElements[
                                                              index]
                                                          .end_date !=
                                                      null
                                                  ? "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(firstElements[index].end_date!))}"
                                                  : "",
                                              price: firstElements[index]
                                                  .status!
                                                  .name
                                                  .toString(),
                                              containercolor: carcontainer,
                                              function: () {
                                                context.router.push(
                                                    InsuranceScreen(
                                                        model: firstElements[
                                                            index]));
                                              },
                                              icon: firstElements[index]
                                                      is MotorOrderModel
                                                  ? "assets/car.svg"
                                                  : firstElements[index]
                                                          is EducationalOrderModel
                                                      ? "assets/educational.svg"
                                                      : firstElements[index]
                                                              is DomesticWorkersOrderModel
                                                          ? "assets/domestic.svg"
                                                          : firstElements[index]
                                                                  is TravelOrderModel
                                                              ? "assets/travel.svg"
                                                              : firstElements[
                                                                          index]
                                                                      is PersonalAccidentOrderModel
                                                                  ? "assets/personal.svg"
                                                                  : firstElements[
                                                                              index]
                                                                          is MedicalOrderModel
                                                                      ? "assets/medical.svg"
                                                                      : firstElements[index]
                                                                              is PetOrderModel
                                                                          ? "assets/pet.svg"
                                                                          : "assets/ret.svg",
                                            )
                                          : const SizedBox.shrink();
                                    },
                                    itemCount: firstElements.isNotEmpty
                                        ? firstElements.length
                                        : 0,
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      },
                      error: (error, stacktrace) {
                        return Center(child: Text(error.toString()));
                      },
                      loading: () => const SpinKitThreeInOut(
                            color: Colors.blue,
                          )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
