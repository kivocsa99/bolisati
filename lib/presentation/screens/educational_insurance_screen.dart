import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/user.repository.provider.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/orders/educationalorders/educationalordermodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EducationalInsuranceScreen extends HookConsumerWidget {
  final EducationalOrderModel? model;
  final String? id;
  final String? type;
  const EducationalInsuranceScreen({super.key, this.id, this.type, this.model});

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
                                child:
                                    SvgPicture.asset("assets/educational.svg")),
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
                                  const Text("inursancet").tr(),
                                  Text(model!.educational_type!,
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
                        ],
                      ),
                    ),
                    Positioned(
                      top: 360,
                      left: 40,
                      right: 40,
                      child: const Text(
                        "childinfo",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ).tr(),
                    ),
                    Positioned(
                      top: 400,
                      left: 40,
                      right: 40,
                      child: SizedBox(
                        height: 300,
                        child: Builder(builder: (context) {
                          return SingleChildScrollView(
                            child: ExpansionTile(
                              title: const Text("child").tr(),
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                      children: model!.kids!
                                          .map((kid) => ExpansionTile(
                                                title: Text(kid.name!),
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          const Text("age")
                                                              .tr(),
                                                          Text(
                                                              kid.age!
                                                                  .toString(),
                                                              style: const TextStyle(
                                                                  fontSize: 15,
                                                                  color: Colors
                                                                      .grey)),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          const Text("childid")
                                                              .tr(),
                                                          Text(
                                                              kid.national_id_number!
                                                                  .toString(),
                                                              style: const TextStyle(
                                                                  fontSize: 15,
                                                                  color: Colors
                                                                      .grey)),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ))
                                          .toList()),
                                )
                              ],
                            ),
                          );
                        }),
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
                      print("object");
                      EducationalOrderModel model = r;
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
                                      child: SvgPicture.asset(
                                          "assets/educational.svg")),
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
                                        const Text("inursancet").tr(),
                                        Text(model.educational_type!,
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
                              ],
                            ),
                          ),
                          Positioned(
                            top: 360,
                            left: 40,
                            right: 40,
                            child: const Text(
                              "childinfo",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ).tr(),
                          ),
                          Positioned(
                            top: 400,
                            left: 40,
                            right: 40,
                            child: SizedBox(
                              height: 300,
                              child: Builder(builder: (context) {
                                return SingleChildScrollView(
                                  child: ExpansionTile(
                                    title: const Text("child").tr(),
                                    children: [
                                      SingleChildScrollView(
                                        child: Column(
                                            children: model.kids!
                                                .map((kid) => ExpansionTile(
                                                      title: Text(kid.name!),
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Column(
                                                              children: [
                                                                const Text(
                                                                        "age")
                                                                    .tr(),
                                                                Text(
                                                                    kid.age!
                                                                        .toString(),
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        color: Colors
                                                                            .grey)),
                                                              ],
                                                            ),
                                                            Column(
                                                              children: [
                                                                const Text(
                                                                        "childid")
                                                                    .tr(),
                                                                Text(
                                                                    kid.national_id_number!
                                                                        .toString(),
                                                                    style: const TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        color: Colors
                                                                            .grey)),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ))
                                                .toList()),
                                      )
                                    ],
                                  ),
                                );
                              }),
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
