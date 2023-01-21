// ignore_for_file: body_might_complete_normally_nullable

import 'package:auto_route/auto_route.dart';
import 'package:bolisati/domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import 'package:bolisati/domain/api/orders/educationalorders/educationalordermodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:bolisati/domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';
import 'package:bolisati/domain/api/orders/travelorders/travelordermodel.dart';
import 'package:bolisati/application/provider/user.repository.provider.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/presentation/widgets/horizantal_insurance_type_container.dart';
import 'package:bolisati/presentation/widgets/vertical_insurance_type_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/api/orders/petorders/petordermodel.dart';
import '../../domain/api/orders/user.orders.model.dart';
import '../../main.dart';
import 'horizantal_user_insurance_container.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime now = DateTime.now();
    final message = useState("morning".tr());
    String currentHour = DateFormat('kk').format(now);
    final Box setting = Hive.box('setting');

    int hour = int.parse(currentHour);
    if (hour >= 5 && hour < 12) {
      message.value = 'morning'.tr();
    } else if (hour >= 12 && hour <= 17) {
      message.value = 'evening'.tr();
    } else {
      message.value = 'evening'.tr();
    }
    useEffect(
      () {
        FirebaseMessaging.onMessage.listen((event) {
          return showFlutterNotification(event);
        });

        FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
      },
    );

    return ValueListenableBuilder(
      valueListenable: setting.listenable(),
      builder: (context, Box box, child) {
        final apitoken = box.get('apitoken');
        final name = box.get("name");
        final userOrderProvider = ref.watch(GetorderProvider(apitoken));
        return Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              Align(
                  alignment: context.locale.languageCode == "ar"
                      ? Alignment.topRight
                      : Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "${"hello".tr()}, $name",
                      style: const TextStyle(fontSize: 36),
                    ),
                  )),
              Align(
                  alignment: context.locale.languageCode == "ar"
                      ? Alignment.topRight
                      : Alignment.topLeft,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(message.value).tr())),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () =>
                        context.router.push(const InsuranceListScreen()),
                    child: Text(
                      "view".tr(),
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HorizantalInsurance(
                      containercolor: carcontainer,
                      function: () {
                        context.router.push(const MotorPlaceOrderScreen());
                      },
                      icon: "assets/car.png",
                      insuranceName: "vehicle".tr(),
                      insuranceDescreption: "vehicledes".tr(),
                    ),
                    HorizantalInsurance(
                      containercolor: medicalcontainer,
                      function: () {
                        context.router.push(const MedicalPlaceOrderScreen());
                      },
                      icon: "assets/medical.svg",
                      insuranceName: "medical".tr(),
                      insuranceDescreption: "medicaldes".tr(),
                    ),
                  ],
                ),
              ),
              VerticalInsurance(
                  function: () {
                    context.router.push(const TravelPlaceOrderScreen());
                  },
                  insuranceName: "travel".tr(),
                  insuranceDescreption: "traveldes".tr(),
                  containercolor: travelcontainer,
                  icon: "assets/travel.png"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "insuranceall".tr(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "view",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF1E90FF),
                            decoration: TextDecoration.underline),
                      ).tr(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              userOrderProvider.when(
                  data: (orders) {
                    return orders.fold(
                      (l) => const Text(
                        "contact",
                      ).tr(),
                      (r) {
                        UserOrdersModel orders = r;
                        List<dynamic> firstElements = [];

                        if (orders.DomesticWorkerOrders!.isNotEmpty) {
                          firstElements.add(orders.DomesticWorkerOrders![0]);
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
                          firstElements.add(orders.PersonalAccidentOrders![0]);
                        }
                        if (orders.RetirementOrders!.isNotEmpty) {
                          firstElements.add(orders.RetirementOrders![0]);
                        }
                        if (orders.TravelOrders!.isNotEmpty) {
                          firstElements.add(orders.TravelOrders![0]);
                        }
                        return ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 10,
                            );
                          },
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return firstElements.isNotEmpty
                                ? HorizantalUesrInsuranceContainer(
                                    insuranceName: "",
                                    insuranceDescreption: firstElements[index]
                                                .end_date !=
                                            null
                                        ? "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(firstElements[index].end_date!))}"
                                        : "",
                                    price: firstElements[index]
                                        .status!
                                        .name
                                        .toString(),
                                    containercolor: carcontainer,
                                    function: () {},
                                    icon: Icon(
                                      firstElements[index] is MotorOrderModel
                                          ? FontAwesomeIcons.car
                                          : firstElements[index]
                                                  is EducationalOrderModel
                                              ? FontAwesomeIcons.book
                                              : firstElements[index]
                                                      is DomesticWorkersOrderModel
                                                  ? FontAwesomeIcons.briefcase
                                                  : firstElements[index]
                                                          is TravelOrderModel
                                                      ? FontAwesomeIcons.plane
                                                      : firstElements[index]
                                                              is PersonalAccidentOrderModel
                                                          ? FontAwesomeIcons
                                                              .personFallingBurst
                                                          : firstElements[index]
                                                                  is MedicalOrderModel
                                                              ? FontAwesomeIcons
                                                                  .houseMedical
                                                              : firstElements[
                                                                          index]
                                                                      is PetOrderModel
                                                                  ? FontAwesomeIcons
                                                                      .cat
                                                                  : FontAwesomeIcons
                                                                      .personCane,
                                      color: carcolor,
                                    ),
                                  )
                                : const SizedBox.shrink();
                          },
                          itemCount: firstElements.isNotEmpty
                              ? firstElements.length
                              : 0,
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
            ],
          ),
        );
      },
    );
  }
}
