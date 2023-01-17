// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/orders/user.orders.model.dart';
import 'package:bolisati/presentation/widgets/vertical_insurance_type_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/provider/user.repository.provider.dart';
import '../widgets/horizantal_user_insurance_container.dart';

class UserInsuranceListScreen extends HookConsumerWidget {
  final UserOrdersModel? order;
  const UserInsuranceListScreen({super.key, this.order});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box setting = Hive.box("setting");
    final apitoken = setting.get('apitoken');
    final userOrderProvider = ref.watch(GetorderProvider(apitoken));

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
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

                            return SingleChildScrollView(
                              child: Column(
                                children: [
                                  Align(
                                      alignment:
                                          context.locale.languageCode == "ar"
                                              ? Alignment.topRight
                                              : Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 40, right: 40),
                                          child: Text("vehicle",
                                                  style: const TextStyle(
                                                      fontSize: 36))
                                              .tr())),
                                  Divider(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: 10,
                                        );
                                      },
                                      itemCount: orders.MotorOrders!.isEmpty
                                          ? 1
                                          : orders.MotorOrders!.length,
                                      itemBuilder: (context, index) {
                                        return orders.MotorOrders!.isNotEmpty
                                            ? HorizantalUesrInsuranceContainer(
                                                insuranceName: orders
                                                    .MotorOrders![index].name,
                                                insuranceDescreption: orders
                                                            .MotorOrders![index]
                                                            .end_date !=
                                                        null
                                                    ? "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.MotorOrders![index].end_date!))}"
                                                    : "",
                                                price: orders
                                                    .MotorOrders![index]
                                                    .status!
                                                    .name
                                                    .toString(),
                                                containercolor: carcontainer,
                                                function: () {},
                                                icon: Icon(
                                                  FontAwesomeIcons.car,
                                                  color: carcolor,
                                                ),
                                              )
                                            : Text("noinsurance",
                                                    style: const TextStyle(
                                                        fontSize: 36))
                                                .tr();
                                      },
                                    ),
                                  ),
                                  Align(
                                      alignment:
                                          context.locale.languageCode == "ar"
                                              ? Alignment.topRight
                                              : Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 40, right: 40),
                                          child: Text("medical",
                                                  style: const TextStyle(
                                                      fontSize: 36))
                                              .tr())),
                                  Divider(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: 10,
                                        );
                                      },
                                      itemCount: orders.MedicalOrders!.isEmpty
                                          ? 1
                                          : orders.MedicalOrders!.length,
                                      itemBuilder: (context, index) {
                                        return orders.MedicalOrders!.isNotEmpty
                                            ? HorizantalUesrInsuranceContainer(
                                                insuranceName: orders
                                                    .MedicalOrders![index].name,
                                                insuranceDescreption: orders
                                                            .MedicalOrders![
                                                                index]
                                                            .end_date !=
                                                        null
                                                    ? "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.MedicalOrders![index].end_date!))}"
                                                    : "",
                                                price: orders
                                                    .MedicalOrders![index]
                                                    .status!
                                                    .name
                                                    .toString(),
                                                containercolor: carcontainer,
                                                function: () {},
                                                icon: Icon(
                                                  FontAwesomeIcons.briefcase,
                                                  color: carcolor,
                                                ),
                                              )
                                            : Text("noinsurance",
                                                    style: const TextStyle(
                                                        fontSize: 36))
                                                .tr();
                                      },
                                    ),
                                  ),
                                  Align(
                                      alignment:
                                          context.locale.languageCode == "ar"
                                              ? Alignment.topRight
                                              : Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 40, right: 40),
                                          child: Text("pet",
                                                  style: const TextStyle(
                                                      fontSize: 36))
                                              .tr())),
                                  Divider(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: 10,
                                        );
                                      },
                                      itemCount: orders.PetOrders!.isEmpty
                                          ? 1
                                          : orders.PetOrders!.length,
                                      itemBuilder: (context, index) {
                                        return orders.PetOrders!.isNotEmpty
                                            ? HorizantalUesrInsuranceContainer(
                                                insuranceName: orders
                                                    .PetOrders![index].name,
                                                insuranceDescreption: orders
                                                            .PetOrders![index]
                                                            .end_date !=
                                                        null
                                                    ? "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.PetOrders![index].end_date!))}"
                                                    : "",
                                                price: orders.PetOrders![index]
                                                    .status!.name
                                                    .toString(),
                                                containercolor: carcontainer,
                                                function: () {},
                                                icon: Icon(
                                                  FontAwesomeIcons.cat,
                                                  color: carcolor,
                                                ),
                                              )
                                            : Text("noinsurance",
                                                    style: const TextStyle(
                                                        fontSize: 36))
                                                .tr();
                                      },
                                    ),
                                  ),
                                  Align(
                                      alignment:
                                          context.locale.languageCode == "ar"
                                              ? Alignment.topRight
                                              : Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 40, right: 40),
                                          child: Text("pet",
                                                  style: const TextStyle(
                                                      fontSize: 36))
                                              .tr())),
                                  Divider(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: 10,
                                        );
                                      },
                                      itemCount:
                                          orders.PersonalAccidentOrders!.isEmpty
                                              ? 1
                                              : orders.PersonalAccidentOrders!
                                                  .length,
                                      itemBuilder: (context, index) {
                                        return orders.PersonalAccidentOrders!
                                                .isNotEmpty
                                            ? HorizantalUesrInsuranceContainer(
                                                insuranceName: orders
                                                    .PersonalAccidentOrders![
                                                        index]
                                                    .name,
                                                insuranceDescreption: orders
                                                            .PersonalAccidentOrders![
                                                                index]
                                                            .end_date !=
                                                        null
                                                    ? "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.PersonalAccidentOrders![index].end_date!))}"
                                                    : "",
                                                price: orders
                                                    .PersonalAccidentOrders![
                                                        index]
                                                    .status!
                                                    .name
                                                    .toString(),
                                                containercolor: carcontainer,
                                                function: () {},
                                                icon: Icon(
                                                  FontAwesomeIcons.cat,
                                                  color: carcolor,
                                                ),
                                              )
                                            : Text("hellooo",
                                                    style: const TextStyle(
                                                        fontSize: 36))
                                                .tr();
                                      },
                                    ),
                                  ),
                                  Align(
                                      alignment:
                                          context.locale.languageCode == "ar"
                                              ? Alignment.topRight
                                              : Alignment.topLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 40, right: 40),
                                          child: Text("pet",
                                                  style: const TextStyle(
                                                      fontSize: 36))
                                              .tr())),
                                  Divider(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                          height: 10,
                                        );
                                      },
                                      itemCount: orders.PetOrders!.length,
                                      itemBuilder: (context, index) {
                                        return orders.PetOrders!.isNotEmpty
                                            ? HorizantalUesrInsuranceContainer(
                                                insuranceName: orders
                                                    .PetOrders![index].name,
                                                insuranceDescreption: orders
                                                            .PetOrders![index]
                                                            .end_date !=
                                                        null
                                                    ? "Exp ${DateFormat('mm/yyyy').format(DateTime.parse(orders.PetOrders![index].end_date!))}"
                                                    : "",
                                                price: orders.PetOrders![index]
                                                    .status!.name
                                                    .toString(),
                                                containercolor: carcontainer,
                                                function: () {},
                                                icon: Icon(
                                                  FontAwesomeIcons.cat,
                                                  color: carcolor,
                                                ),
                                              )
                                            : Text("hellooo",
                                                    style: const TextStyle(
                                                        fontSize: 36))
                                                .tr();
                                      },
                                    ),
                                  )
                                ],
                              ),
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
