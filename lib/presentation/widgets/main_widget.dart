// ignore_for_file: body_might_complete_normally_nullable

import 'package:auto_route/auto_route.dart';
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

import '../../domain/api/orders/user.orders.model.dart';
import '../../main.dart';
import 'horizantal_user_insurance_container.dart';

class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime now = DateTime.now();
    final message = useState("Good Morning");
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
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "Hello, $name",
                      style: const TextStyle(fontSize: 36),
                    ),
                  )),
              Align(
                  alignment: Alignment.topLeft,
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
                      icon: const Icon(
                        FontAwesomeIcons.car,
                        color: carcolor,
                      ),
                      insuranceName: "vehicle".tr(),
                      insuranceDescreption: "vehicledes".tr(),
                    ),
                    HorizantalInsurance(
                      containercolor: medicalcontainer,
                      function: () {
                        context.router.push(const MedicalPlaceOrderScreen());
                      },
                      icon: const Icon(
                        FontAwesomeIcons.houseMedical,
                        color: medicalcolor,
                      ),
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
                icon: const Icon(
                  FontAwesomeIcons.plane,
                  color: travelcolor,
                ),
              ),
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
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              if (orders.MotorOrders!.isEmpty) {
                                return const SizedBox.shrink();
                              } else {
                                return Column(
                                  children: [
                                    HorizantalUesrInsuranceContainer(
                                      insuranceName: orders.MotorOrders!.first
                                          .vehicle_make!.name,
                                      insuranceDescreption:
                                          "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.MotorOrders!.first.end_date!))}",
                                      containercolor: carcontainer,
                                      function: () {},
                                      icon: const Icon(
                                        FontAwesomeIcons.car,
                                        color: carcolor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                );
                              }
                            } else if (index == 1) {
                              if (orders.MedicalOrders!.isEmpty) {
                                return const SizedBox.shrink();
                              } else {
                                return Column(
                                  children: [
                                    HorizantalUesrInsuranceContainer(
                                      insuranceName:
                                          orders.MedicalOrders!.first.name,
                                      insuranceDescreption:
                                          "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.MedicalOrders!.first.end_date!))}",
                                      containercolor: medicalcontainer,
                                      function: () {},
                                      icon: const Icon(
                                        FontAwesomeIcons.houseMedical,
                                        color: medicalcolor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                );
                              }
                            } else {
                              if (orders.TravelOrders!.isEmpty) {
                                return const SizedBox.shrink();
                              } else {
                                return Column(
                                  children: [
                                    HorizantalUesrInsuranceContainer(
                                      insuranceName:
                                          orders.TravelOrders!.first.name,
                                      insuranceDescreption:
                                          "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.TravelOrders!.first.end_date!))}",
                                      containercolor: travelcontainer,
                                      function: () {},
                                      icon: const Icon(
                                        FontAwesomeIcons.plane,
                                        color: travelcolor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                );
                              }
                            }
                          },
                          itemCount: 3,
                        );
                      },
                    );
                  },
                  error: (error, stacktrace) {
                    return Center(child: Text(error.toString()));
                  },
                  loading: () => const SpinKitThreeInOut(
                        color: Colors.blue,
                      ))
            ],
          ),
        );
      },
    );
  }
}
