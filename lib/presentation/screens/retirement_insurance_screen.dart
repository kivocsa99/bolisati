import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/user.repository.provider.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants.dart';

class RetirementInsuranceScreen extends HookConsumerWidget {
  final RetirementOrderModel? model;
  final String? id;
  final String? type;
  const RetirementInsuranceScreen({super.key, this.model, this.id, this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box setting = Hive.box("setting");
    final token = setting.get("apitoken");
    final neworder = ref.watch(getnewProvider(token, id ?? "", type ?? ""));
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
                                child: SvgPicture.asset("assets/ret.svg")),
                          ),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("insname").tr(),
                                  Text(model!.name!,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  const Text("age").tr(),
                                  Text(model!.age.toString(),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.grey))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text("insuranceamount").tr(),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        model!.fixed_fee == null
                                            ? "${model!.monthly_fee!} ${"jod".tr()}"
                                            : "${model!.fixed_fee!} ${"jod".tr()}",
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.grey)),
                                  ),
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
                                  const Text("retirementage").tr(),
                                  Text(model!.retirement_age!.toString(),
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
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : neworder.when(
                  data: (data) {
                    return data.fold((l) => const Text("contact").tr(), (r) {
                      RetirementOrderModel model = r;
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
                                          SvgPicture.asset("assets/ret.svg")),
                                ),
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
                                          CrossAxisAlignment.start,
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
                                          CrossAxisAlignment.start,
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
                                        const Text("age").tr(),
                                        Text(model.age.toString(),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey))
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Text("insuranceamount").tr(),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              model.fixed_fee == null
                                                  ? "${model.monthly_fee!} ${"jod".tr()}"
                                                  : "${model.fixed_fee!} ${"jod".tr()}",
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.grey)),
                                        ),
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
                                        const Text("retirementage").tr(),
                                        Text(model.retirement_age!.toString(),
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
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    });
                  },
                  error: (error, st) {
                    return const Text("contact").tr();
                  },
                  loading: () => const SpinKitThreeInOut(
                        color: Colors.blue,
                      )),
        ),
      ),
    );
  }
}
