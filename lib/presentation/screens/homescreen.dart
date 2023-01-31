import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:bolisati/domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import 'package:bolisati/domain/api/orders/educationalorders/educationalordermodel.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:bolisati/domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';
import 'package:bolisati/domain/api/orders/travelorders/travelordermodel.dart';
import 'package:bolisati/domain/api/orders/user.orders.model.dart';
import 'package:bolisati/presentation/widgets/horizantal_insurance_type_container.dart';
import 'package:bolisati/presentation/widgets/horizantal_user_insurance_container.dart';
import 'package:bolisati/presentation/widgets/vertical_insurance_type_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/provider/user.repository.provider.dart';
import '../../constants.dart';
import '../../domain/api/orders/petorders/petordermodel.dart';
import '../../router/app_route.gr.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime now = DateTime.now();
    final message = useState("morning");
    String currentHour = DateFormat('kk').format(now);
    final Box setting = Hive.box('setting');

    int hour = int.parse(currentHour);
    if (hour >= 5 && hour < 12) {
      message.value = 'morning';
    } else if (hour >= 12 && hour <= 17) {
      message.value = 'evening';
    } else {
      message.value = 'evening';
    }

    useEffect(() {
      FirebaseMessaging.instance.getInitialMessage().then((message) {
        if (message?.notification == null) {
          null;
        } else {
          Map<String, dynamic> parsedJson = jsonDecode(message?.data["Type"]);
          String type = parsedJson["related_data"]["Type"]
              .toString()
              .replaceAll("App\\Models\\", "");
          String id = parsedJson["related_data"]["ID"].toString();

          if (type == "MedicalOrder") {
            context.mounted
                ? context.router.push(MedicalInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\MedicalOrder"))
                : null;
          } else if (type == "PetOrder") {
            context.mounted
                ? context.router.push(PetInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\PetOrder"))
                : null;
          } else if (type == "MotorOrder") {
            context.mounted
                ? context.router.push(MotorInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\MotorOrder"))
                : null;
          } else if (type == "PersonalAccidentOrder") {
            context.mounted
                ? context.router.push(PersonalInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\PersonalAccidentOrder"))
                : null;
          } else if (type == "TravelOrder") {
            context.mounted
                ? context.router.push(TravelInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\TravelOrder"))
                : null;
          } else if (type == "EducationalOrder") {
            context.mounted
                ? context.router.push(EducationalInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\EducationalOrder"))
                : null;
          } else if (type == "DomesticWorkerOrder") {
            context.mounted
                ? context.router.push(DomesticInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\DomesticWorkerOrder"))
                : null;
          } else if (type == "RetirementOrder") {
            context.mounted
                ? context.router.push(RetirementInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\RetirementOrder"))
                : null;
          }
        }
      });
      FirebaseMessaging.onMessage.listen(
        ((message) async {
          if (context.mounted) {
            await showDialog(
              context: context,
              builder: (context) {
                return SimpleDialog(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/logo.png",
                          scale: 1.5,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'orderchange',
                          style: TextStyle(fontSize: 13),
                        ).tr(),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: GestureDetector(
                          onTap: () async {
                            if (message.notification == null) {
                              null;
                            } else {
                              Map<String, dynamic> parsedJson =
                                  jsonDecode(message.data["Type"]);
                              String type = parsedJson["related_data"]["Type"]
                                  .toString()
                                  .replaceAll("App\\Models\\", "");
                              String id =
                                  parsedJson["related_data"]["ID"].toString();

                              if (type == "MedicalOrder") {
                                context.mounted
                                    ? context.router.push(MedicalInsuranceScreen(
                                        id: id,
                                        type: "App\\\\Models\\\\MedicalOrder"))
                                    : null;
                              } else if (type == "PetOrder") {
                                context.mounted
                                    ? context.router.push(PetInsuranceScreen(
                                        id: id,
                                        type: "App\\\\Models\\\\PetOrder"))
                                    : null;
                              } else if (type == "MotorOrder") {
                                context.mounted
                                    ? context.router.push(MotorInsuranceScreen(
                                        id: id,
                                        type: "App\\\\Models\\\\MotorOrder"))
                                    : null;
                              } else if (type == "PersonalAccidentOrder") {
                                context.mounted
                                    ? context.router.push(PersonalInsuranceScreen(
                                        id: id,
                                        type:
                                            "App\\\\Models\\\\PersonalAccidentOrder"))
                                    : null;
                              } else if (type == "TravelOrder") {
                                context.mounted
                                    ? context.router.push(TravelInsuranceScreen(
                                        id: id,
                                        type: "App\\\\Models\\\\TravelOrder"))
                                    : null;
                              } else if (type == "EducationalOrder") {
                                context.mounted
                                    ? context.router.push(
                                        EducationalInsuranceScreen(
                                            id: id,
                                            type:
                                                "App\\\\Models\\\\EducationalOrder"))
                                    : null;
                              } else if (type == "DomesticWorkerOrder") {
                                context.mounted
                                    ? context.router.push(DomesticInsuranceScreen(
                                        id: id,
                                        type:
                                            "App\\\\Models\\\\DomesticWorkerOrder"))
                                    : null;
                              } else if (type == "RetirementOrder") {
                                context.mounted
                                    ? context.router.push(RetirementInsuranceScreen(
                                        id: id,
                                        type:
                                            "App\\\\Models\\\\RetirementOrder"))
                                    : null;
                              }
                            }
                          },
                          child: Container(
                            color: Colors.black,
                            width: 10,
                            height: 60,
                            child: Center(
                                child: const Text(
                              "globalsyes",
                              style: TextStyle(color: Colors.white),
                            ).tr()),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                        child: GestureDetector(
                          onTap: () async {
                            context.router.pop();
                          },
                          child: Container(
                            color: Colors.black,
                            width: 10,
                            height: 60,
                            child: Center(
                                child: const Text(
                              "globalsno",
                              style: TextStyle(color: Colors.white),
                            ).tr()),
                          ),
                        ),
                      )
                    ]);
              },
            );
          }
        }),
      );

      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        if (message.notification == null) {
          null;
        } else {
          Map<String, dynamic> parsedJson = jsonDecode(message.data["Type"]);
          String type = parsedJson["related_data"]["Type"]
              .toString()
              .replaceAll("App\\Models\\", "");
          String id = parsedJson["related_data"]["ID"].toString();

          if (type == "MedicalOrder") {
            context.mounted
                ? context.router.push(MedicalInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\MedicalOrder"))
                : null;
          } else if (type == "PetOrder") {
            context.mounted
                ? context.router.push(PetInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\PetOrder"))
                : null;
          } else if (type == "MotorOrder") {
            context.mounted
                ? context.router.push(MotorInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\MotorOrder"))
                : null;
          } else if (type == "PersonalAccidentOrder") {
            context.mounted
                ? context.router.push(PersonalInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\PersonalAccidentOrder"))
                : null;
          } else if (type == "TravelOrder") {
            context.mounted
                ? context.router.push(TravelInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\TravelOrder"))
                : null;
          } else if (type == "EducationalOrder") {
            context.mounted
                ? context.router.push(EducationalInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\EducationalOrder"))
                : null;
          } else if (type == "DomesticWorkerOrder") {
            context.mounted
                ? context.router.push(DomesticInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\DomesticWorkerOrder"))
                : null;
          } else if (type == "RetirementOrder") {
            context.mounted
                ? context.router.push(RetirementInsuranceScreen(
                    id: id, type: "App\\\\Models\\\\RetirementOrder"))
                : null;
          }
        }
      });
    }, const []);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          child: ValueListenableBuilder(
            valueListenable: setting.listenable(),
            builder: (context, Box box, child) {
              final apitoken = box.get('apitoken');
              final name = box.get("name");
              print(apitoken);
              final userOrderProvider = ref.watch(GetorderProvider(apitoken));
              return RefreshIndicator(
                onRefresh: () => ref.refresh(GetorderProvider(apitoken).future),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(children: [
                      Positioned(
                        right: 10,
                        top: 30,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () =>
                                    context.router.push(const ProfileScreen()),
                                icon: Image.asset('assets/profile.png')),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Column(
                            children: [
                              Align(
                                  alignment: context.locale.languageCode == "en"
                                      ? Alignment.topLeft
                                      : Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 30,
                                        right:
                                            context.locale.languageCode == "en"
                                                ? 0
                                                : 30),
                                    child: Text(
                                      "${"hello".tr()} , $name",
                                      style: const TextStyle(fontSize: 36),
                                    ),
                                  )),
                              Align(
                                  alignment: context.locale.languageCode == "en"
                                      ? Alignment.topLeft
                                      : Alignment.topRight,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 30,
                                          right: context.locale.languageCode ==
                                                  "en"
                                              ? 0
                                              : 30),
                                      child: Text(message.value).tr())),
                              const SizedBox(
                                height: 20,
                              ),
                              Align(
                                alignment: context.locale.languageCode == "en"
                                    ? Alignment.centerRight
                                    : Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      right: 30,
                                      left: context.locale.languageCode == "en"
                                          ? 0
                                          : 30),
                                  child: GestureDetector(
                                    onTap: () => context.router
                                        .push(const InsuranceListScreen()),
                                    child: Text(
                                      "view".tr(),
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    HorizantalInsurance(
                                      containercolor: carcontainer,
                                      function: () {
                                        context.router.push(
                                            const MotorPlaceOrderScreen());
                                      },
                                      icon: "assets/car.svg",
                                      insuranceName: "vehicle".tr(),
                                      insuranceDescreption: "vehicledes".tr(),
                                    ),
                                    HorizantalInsurance(
                                      containercolor: medicalcontainer,
                                      function: () {
                                        context.router.push(
                                            const MedicalPlaceOrderScreen());
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
                                    context.router
                                        .push(const TravelPlaceOrderScreen());
                                  },
                                  insuranceName: "travel".tr(),
                                  insuranceDescreption: "traveldes".tr(),
                                  containercolor: travelcontainer,
                                  icon: "assets/travel.svg"),
                              const SizedBox(
                                height: 20,
                              ),
                              userOrderProvider.when(
                                  data: (orders) {
                                    return orders.fold(
                                      (l) {
                                        print(l);
                                        return const Text(
                                          "contact",
                                        ).tr();
                                      },
                                      (r) {
                                        UserOrdersModel orders = r;
                                        List<dynamic> firstElements = [];

                                        if (orders
                                            .DomesticWorkerOrders!.isNotEmpty) {
                                          firstElements.add(
                                              orders.DomesticWorkerOrders![0]);
                                        }
                                        if (orders
                                            .EducationalOrders!.isNotEmpty) {
                                          firstElements.add(
                                              orders.EducationalOrders![0]);
                                        }
                                        if (orders.MedicalOrders!.isNotEmpty) {
                                          firstElements
                                              .add(orders.MedicalOrders![0]);
                                        }
                                        if (orders.MotorOrders!.isNotEmpty) {
                                          firstElements
                                              .add(orders.MotorOrders![0]);
                                        }
                                        if (orders.PetOrders!.isNotEmpty) {
                                          firstElements
                                              .add(orders.PetOrders![0]);
                                        }
                                        if (orders.PersonalAccidentOrders!
                                            .isNotEmpty) {
                                          firstElements.add(orders
                                              .PersonalAccidentOrders![0]);
                                        }
                                        if (orders
                                            .RetirementOrders!.isNotEmpty) {
                                          firstElements
                                              .add(orders.RetirementOrders![0]);
                                        }
                                        if (orders.TravelOrders!.isNotEmpty) {
                                          firstElements
                                              .add(orders.TravelOrders![0]);
                                        }
                                        return Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 30.0, right: 30.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "insuranceall".tr(),
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      context.router.push(
                                                          UserInsuranceListScreen());
                                                    },
                                                    child: Text(
                                                      "view".tr(),
                                                      style: const TextStyle(
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF1E90FF),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 400,
                                              child: ListView.separated(
                                                separatorBuilder:
                                                    (context, index) {
                                                  return const SizedBox(
                                                    height: 10,
                                                  );
                                                },
                                                itemBuilder: (context, index) {
                                                  return firstElements
                                                          .isNotEmpty
                                                      ? HorizantalUesrInsuranceContainer(
                                                          insuranceName:
                                                              firstElements[
                                                                      index]
                                                                  .name,
                                                          insuranceDescreption:
                                                              firstElements[index]
                                                                          .end_date !=
                                                                      null
                                                                  ? "Exp ${DateFormat('MM/yyyy').format(DateTime.parse(firstElements[index].end_date!))}"
                                                                  : "",
                                                          price: firstElements[
                                                                  index]
                                                              .status!
                                                              .name
                                                              .toString(),
                                                          containercolor:
                                                              carcontainer,
                                                          function: () async {
                                                            firstElements[index]
                                                                    is MotorOrderModel
                                                                ? context.router.push(
                                                                    MotorInsuranceScreen(
                                                                        model: firstElements[
                                                                            index]))
                                                                : firstElements[
                                                                            index]
                                                                        is EducationalOrderModel
                                                                    ? context
                                                                        .router
                                                                        .push(EducationalInsuranceScreen(
                                                                            model: firstElements[
                                                                                index]))
                                                                    : firstElements[index]
                                                                            is DomesticWorkersOrderModel
                                                                        ? context
                                                                            .router
                                                                            .push(DomesticInsuranceScreen(model: firstElements[index]))
                                                                        : firstElements[index] is TravelOrderModel
                                                                            ? context.router.push(TravelInsuranceScreen(model: firstElements[index]))
                                                                            : firstElements[index] is PersonalAccidentOrderModel
                                                                                ? context.router.push(PersonalInsuranceScreen(model: firstElements[index]))
                                                                                : firstElements[index] is MedicalOrderModel
                                                                                    ? context.router.push(MedicalInsuranceScreen(model: firstElements[index]))
                                                                                    : firstElements[index] is PetOrderModel
                                                                                        ? context.router.push(PetInsuranceScreen(model: firstElements[index]))
                                                                                        : context.router.push(RetirementInsuranceScreen(model: firstElements[index]));
                                                          },
                                                          icon: firstElements[
                                                                      index]
                                                                  is MotorOrderModel
                                                              ? "assets/car.svg"
                                                              : firstElements[
                                                                          index]
                                                                      is EducationalOrderModel
                                                                  ? "assets/educational.svg"
                                                                  : firstElements[
                                                                              index]
                                                                          is DomesticWorkersOrderModel
                                                                      ? "assets/domestic.svg"
                                                                      : firstElements[index]
                                                                              is TravelOrderModel
                                                                          ? "assets/travel.svg"
                                                                          : firstElements[index] is PersonalAccidentOrderModel
                                                                              ? "assets/personal.svg"
                                                                              : firstElements[index] is MedicalOrderModel
                                                                                  ? "assets/medical.svg"
                                                                                  : firstElements[index] is PetOrderModel
                                                                                      ? "assets/pet.svg"
                                                                                      : "assets/ret.svg",
                                                        )
                                                      : const SizedBox.shrink();
                                                },
                                                itemCount:
                                                    firstElements.isNotEmpty
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
                                    return Center(
                                        child: Text(error.toString()));
                                  },
                                  loading: () => const SpinKitThreeInOut(
                                        color: Colors.blue,
                                      ))
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width / 2 - 130,
                        top: 30,
                        child: Image.asset(
                          "assets/bolisati.png",
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        left: 52,
                        top: 30,
                        child: Image.asset(
                          "assets/logo.png",
                        ),
                      ),
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
