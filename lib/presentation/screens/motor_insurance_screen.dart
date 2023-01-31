import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/motor/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/motor/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/application/motor/setstatus/set.status.use.case.input.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/motor/setstatus/set.status.use.case.dart';
import '../../application/provider/user.repository.provider.dart';
import '../../constants.dart';
import '../../router/app_route.gr.dart';

class MotorInsuranceScreen extends HookConsumerWidget {
  final MotorOrderModel? model;
  final String? id;
  final String? type;
  const MotorInsuranceScreen({super.key, this.id, this.type, this.model});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box setting = Hive.box("setting");
    final apitoken = setting.get("apitoken");
    final order = useState(const MotorOrderModel());
    final neworder = ref.watch(getnewProvider(apitoken, id ?? "", type ?? ""));

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: id == null
              ? Stack(
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
                          "insuinfo".tr(),
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      top: 120,
                      left: 40,
                      right: 40,
                      child: SizedBox(
                          child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: carcontainer,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            height: 56,
                            width: 56,
                            child: Center(
                                child: SvgPicture.asset("assets/car.svg")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                model!.car_make!,
                                style: const TextStyle(
                                    fontSize: 10, color: Colors.grey),
                              ),
                              Text(
                                model!.car_model!,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                model!.car_year!,
                                style: const TextStyle(
                                    fontSize: 10, color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      )),
                    ),
                    Positioned(
                      top: 200,
                      left: 40,
                      right: 40,
                      child: const Text(
                        "insuranceinfo",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ).tr(),
                    ),
                    Positioned(
                      top: 240,
                      left: 40,
                      right: 40,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("insname").tr(),
                                  Text(model!.name!,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("idnumber").tr(),
                                  Text(model!.id.toString(),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("insucompany").tr(),
                                  Text(
                                      context.locale.languageCode == "ar"
                                          ? model!.company!.name_ar!
                                          : model!.company!.name!,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text("orderstatus").tr(),
                                  Text(model!.status!.name!,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("price").tr(),
                                  Text(
                                      "${model!.total.toString()} ${"jod".tr()}",
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("addoncount").tr(),
                                  Text(model!.addons!.length.toString(),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("startdate").tr(),
                                  Text(
                                      DateFormat('MM/yyyy').format(
                                          DateTime.parse(model!.start_date!)),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("enddate").tr(),
                                  Text(
                                      DateFormat('MM/yyyy').format(
                                          DateTime.parse(model!.end_date!)),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 460,
                      left: 40,
                      right: 40,
                      child: const Text(
                        "cardes",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ).tr(),
                    ),
                    Positioned(
                      top: 500,
                      left: 40,
                      right: 40,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("carbrand").tr(),
                                  Text(model!.car_make!,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text("carmodel").tr(),
                                  Text(model!.car_model!,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("value").tr(),
                                  Text(
                                      "${model!.estimated_car_price!.toString()} ${"jod".tr()}",
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 40,
                      right: 40,
                      child: GestureDetector(
                        onTap: () {
                          order.value = model!;

                          String loc = "";
                          List<String> locs = model!.addons!
                              .map((element) =>
                                  "&addons[]=${element.id.toString()}")
                              .toList();
                          for (int q = 0; q < model!.addons!.length; q++) {
                            loc = loc + locs[q];
                          }
                          if (DateTime.parse(model!.end_date!)
                                  .difference(
                                      DateTime.parse(model!.start_date!))
                                  .inDays !=
                              14) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: const Text("renewdes").tr()));
                          } else {
                            ref
                                .read(motorplaceOrderProvider)
                                .execute(MotorPlaceOrderUseCaseInput(
                                    motorOrder: order.value,
                                    token: apitoken,
                                    addons: ""))
                                .then((value) => value.fold((l) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content:
                                                  const Text("contact").tr()));
                                    },
                                        (r) async => showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (context) {
                                                return SimpleDialog(
                                                    title: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Image.asset(
                                                          "assets/logo.png",
                                                          scale: 1.5,
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        const Text(
                                                          'orderdes',
                                                        ).tr(),
                                                      ],
                                                    ),
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 40.0,
                                                                right: 40.0),
                                                        child: const Text(
                                                                "orderconfirm")
                                                            .tr(),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 40.0,
                                                                right: 40.0),
                                                        child: GestureDetector(
                                                          onTap: () async {
                                                            await context.router
                                                                .replaceAll([
                                                              const HomeScreen()
                                                            ]);
                                                          },
                                                          child: Container(
                                                            color: Colors.black,
                                                            width: 100,
                                                            height: 60,
                                                            child: Center(
                                                                child:
                                                                    const Text(
                                                              "confirm",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ).tr()),
                                                          ),
                                                        ),
                                                      )
                                                    ]);
                                              },
                                            )));
                          }
                        },
                        child: Container(
                          color: DateTime.parse(model!.end_date!)
                                      .difference(
                                          DateTime.parse(model!.start_date!))
                                      .inDays ==
                                  14
                              ? Colors.black
                              : Colors.grey,
                          width: 315,
                          height: 60,
                          child: Center(
                              child: const Text(
                            "renew",
                            style: TextStyle(color: Colors.white),
                          ).tr()),
                        ),
                      ),
                    ),
                  ],
                )
              : neworder.when(
                  data: (data) {
                    return data.fold((l) {
                      print(l);
                      return const Text("contact").tr();
                    }, (r) {
                      MotorOrderModel model = r;
                      print(model.status!.name);

                      return Stack(
                        children: [
                          context.locale.languageCode == "en"
                              ? Positioned(
                                  left: 20,
                                  top: 30,
                                  child: IconButton(
                                      onPressed: () {
                                        context.router.pop();
                                      },
                                      icon:
                                          const Icon(Icons.arrow_back_ios_new)))
                              : Positioned(
                                  right: 20,
                                  top: 30,
                                  child: IconButton(
                                      onPressed: () {
                                        context.router.pop();
                                      },
                                      icon: const Icon(
                                          FontAwesomeIcons.arrowRight))),
                          Positioned(
                              left:
                                  context.locale.languageCode == "ar" ? 0 : 80,
                              right:
                                  context.locale.languageCode == "ar" ? 80 : 0,
                              top: 40,
                              child: Text(
                                "insuinfo".tr(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                          Positioned(
                            top: 120,
                            left: 40,
                            right: 40,
                            child: SizedBox(
                                child: Row(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: carcontainer,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  height: 56,
                                  width: 56,
                                  child: Center(
                                      child:
                                          SvgPicture.asset("assets/car.svg")),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      model.car_make!,
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                    Text(
                                      model.car_model!,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      model.car_year!,
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            )),
                          ),
                          Positioned(
                            top: 200,
                            left: 40,
                            right: 40,
                            child: const Text(
                              "insuranceinfo",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ).tr(),
                          ),
                          Positioned(
                            top: 240,
                            left: 40,
                            right: 40,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text("insname").tr(),
                                        Text(model.name!,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text("idnumber").tr(),
                                        Text(model.id.toString(),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey)),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("insucompany").tr(),
                                        Text(
                                            context.locale.languageCode == "ar"
                                                ? model.company!.name_ar!
                                                : model.company!.name!,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Text("orderstatus").tr(),
                                        Text(model.status!.name!,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey)),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        model.status!.name != "Sent An Offer"
                                            ? const Text("price").tr()
                                            : const Text("newprice").tr(),
                                        Text(
                                            "${model.total.toString()} ${"jod".tr()}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text("addoncount").tr(),
                                        Text(model.addons!.length.toString(),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("startdate").tr(),
                                        Text(
                                            DateFormat('MM/yyyy').format(
                                                DateTime.parse(
                                                    model.start_date!)),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("enddate").tr(),
                                        Text(
                                            DateFormat('MM/yyyy').format(
                                                DateTime.parse(
                                                    model.end_date!)),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey)),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 460,
                            left: 40,
                            right: 40,
                            child: const Text(
                              "cardes",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ).tr(),
                          ),
                          Positioned(
                            top: 500,
                            left: 40,
                            right: 40,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text("carbrand").tr(),
                                        Text(model.car_make!,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text("carmodel").tr(),
                                        Text(model.car_model!,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey)),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("value").tr(),
                                        Text(
                                            "${model.estimated_car_price!.toString()} ${"jod".tr()}",
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 100,
                            left: 40,
                            right: 40,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      ref
                                          .read(setstatusOrderProvider)
                                          .execute(SetStatusOrderUseCaseInput(
                                              token: apitoken,
                                              id: model.id.toString(),
                                              status: "accepted_by_client"))
                                          .then((value) => value.fold(
                                                  (l) => ScaffoldMessenger.of(
                                                          context)
                                                      .showSnackBar(SnackBar(
                                                          content: const Text(
                                                                  "contact")
                                                              .tr())),
                                                  (r) async {
                                                await showDialog(
                                                  barrierDismissible: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return SimpleDialog(
                                                        title: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Image.asset(
                                                              "assets/logo.png",
                                                              scale: 1.5,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            const Text(
                                                              'orderdes',
                                                            ).tr(),
                                                          ],
                                                        ),
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 40.0,
                                                                    right:
                                                                        40.0),
                                                            child: const Text(
                                                                    "approveorder")
                                                                .tr(),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 40.0,
                                                                    right:
                                                                        40.0),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () async {
                                                                await context
                                                                    .router
                                                                    .replaceAll([
                                                                  const HomeScreen()
                                                                ]);
                                                              },
                                                              child: Container(
                                                                color: Colors
                                                                    .black,
                                                                width: 100,
                                                                height: 60,
                                                                child: Center(
                                                                    child:
                                                                        const Text(
                                                                  "confirm",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ).tr()),
                                                              ),
                                                            ),
                                                          )
                                                        ]);
                                                  },
                                                );
                                              }));
                                    },
                                    child: Container(
                                      color: Colors.black,
                                      width: 175,
                                      height: 60,
                                      child: Center(
                                          child: const Text(
                                        "approve",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ).tr()),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      ref
                                          .read(setstatusOrderProvider)
                                          .execute(SetStatusOrderUseCaseInput(
                                              token: apitoken,
                                              id: model.id.toString(),
                                              status: "rejected"))
                                          .then((value) => value.fold(
                                                  (l) => ScaffoldMessenger.of(
                                                          context)
                                                      .showSnackBar(SnackBar(
                                                          content: const Text(
                                                                  "contact")
                                                              .tr())),
                                                  (r) async {
                                                await showDialog(
                                                  barrierDismissible: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return SimpleDialog(
                                                        title: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Image.asset(
                                                              "assets/logo.png",
                                                              scale: 1.5,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            const Text(
                                                              'orderdes',
                                                            ).tr(),
                                                          ],
                                                        ),
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 40.0,
                                                                    right:
                                                                        40.0),
                                                            child: const Text(
                                                                    "declineorder")
                                                                .tr(),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 40.0,
                                                                    right:
                                                                        40.0),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () async {
                                                                await context
                                                                    .router
                                                                    .replaceAll([
                                                                  const HomeScreen()
                                                                ]);
                                                              },
                                                              child: Container(
                                                                color: Colors
                                                                    .black,
                                                                width: 100,
                                                                height: 60,
                                                                child: Center(
                                                                    child:
                                                                        const Text(
                                                                  "confirm",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ).tr()),
                                                              ),
                                                            ),
                                                          )
                                                        ]);
                                                  },
                                                );
                                              }));
                                    },
                                    child: Container(
                                      color: Colors.black,
                                      width: 175,
                                      height: 60,
                                      child: Center(
                                          child: const Text(
                                        "decline",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 13),
                                      ).tr()),
                                    ),
                                  )
                                ]),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 40,
                            right: 40,
                            child: GestureDetector(
                              onTap: () {
                                order.value = model;

                                String loc = "";
                                List<String> locs = model.addons!
                                    .map((element) =>
                                        "&addons[]=${element.id.toString()}")
                                    .toList();
                                for (int q = 0; q < model.addons!.length; q++) {
                                  loc = loc + locs[q];
                                }
                                if (DateTime.parse(model.end_date!)
                                        .difference(
                                            DateTime.parse(model.start_date!))
                                        .inDays !=
                                    14) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content:
                                              const Text("renewdes").tr()));
                                } else {
                                  ref
                                      .read(motorplaceOrderProvider)
                                      .execute(MotorPlaceOrderUseCaseInput(
                                          motorOrder: order.value,
                                          token: apitoken,
                                          addons: ""))
                                      .then((value) => value.fold((l) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content:
                                                        const Text("contact")
                                                            .tr()));
                                          },
                                              (r) async => showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return SimpleDialog(
                                                          title: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Image.asset(
                                                                "assets/logo.png",
                                                                scale: 1.5,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              const Text(
                                                                'orderdes',
                                                              ).tr(),
                                                            ],
                                                          ),
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          40.0,
                                                                      right:
                                                                          40.0),
                                                              child: const Text(
                                                                      "orderconfirm")
                                                                  .tr(),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          40.0,
                                                                      right:
                                                                          40.0),
                                                              child:
                                                                  GestureDetector(
                                                                onTap:
                                                                    () async {
                                                                  await context
                                                                      .router
                                                                      .replaceAll([
                                                                    const HomeScreen()
                                                                  ]);
                                                                },
                                                                child:
                                                                    Container(
                                                                  color: Colors
                                                                      .black,
                                                                  width: 100,
                                                                  height: 60,
                                                                  child: Center(
                                                                      child:
                                                                          const Text(
                                                                    "confirm",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white),
                                                                  ).tr()),
                                                                ),
                                                              ),
                                                            )
                                                          ]);
                                                    },
                                                  )));
                                }
                              },
                              child: Container(
                                color: DateTime.parse(model.end_date!)
                                            .difference(DateTime.parse(
                                                model.start_date!))
                                            .inDays ==
                                        14
                                    ? Colors.black
                                    : Colors.grey,
                                width: 315,
                                height: 60,
                                child: Center(
                                    child: const Text(
                                  "renew",
                                  style: TextStyle(color: Colors.white),
                                ).tr()),
                              ),
                            ),
                          ),
                        ],
                      );
                    });
                  },
                  error: (error, st) => const Text("contact").tr(),
                  loading: () => const SpinKitThreeInOut(
                        color: Colors.blue,
                      )),
        ),
      ),
    );
  }
}
