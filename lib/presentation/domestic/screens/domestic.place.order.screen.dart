// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:io';

import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/domestic/use_cases/attachfile/attach.file.use.case.dart';
import 'package:bolisati/application/domestic/use_cases/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/application/domestic/use_cases/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/domestic/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/application/provider/domestic.repository.provider.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/domestic/model/domesticdonemodel.dart';
import 'package:bolisati/domain/api/domestic/model/domesticoffermodel.dart';
import 'package:bolisati/presentation/domestic/widgets/domesticbottomsheet.dart';
import 'package:bolisati/presentation/widgets/back_insuarance_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../router/app_route.gr.dart';
import '../widgets/domesticinformationcontainer.dart';
import '../widgets/domesticoffercontainer.dart';
import '../widgets/domesticuploadcontainer.dart';

class DomesticPlaceOrderScreen extends HookConsumerWidget {
  const DomesticPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const DomesticDoneModel());
    final domesticformkey = useState(GlobalKey<FormState>());
    final index = useState(0);
    final offers = useState<List<DomesticOfferModel>>([]);
    final Box setting = Hive.box("setting");
    final Box domestic = Hive.box("domestic");
    final nameController = useTextEditingController();
    final domesticController = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();
    final nationalidcontroller = useTextEditingController();

    final idback = useState("");
    final idfront = useState("");
    final registerback = useState("");
    final registerfront = useState("");
    List<String> images = [
      idback.value,
      idfront.value,
      registerback.value,
      registerfront.value,
    ];
    List<Widget> cases = [
      DomesticInformationContainer(
        workerinsurancecontroller: nationalidcontroller,
        workerinsurance: (value) =>
            order.value = order.value.copyWith(national_id_number: value),
        startdatecontroller: startController,
        enddatecontroller: endController,
        workername: domesticController,
        workernameonchanged: (value) =>
            order.value = order.value.copyWith(worker_name: value),
        namecontroller: nameController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        formkey: domesticformkey.value,
        key: const Key("1"),
      ),
      DomesticOrderOffersContainer(
        offers: offers.value,
        key: Key("2"),
      ),
      DomesticIdContainer(
        image0: File(registerfront.value),
        image1: File(registerback.value),
        image2: File(idfront.value),
        image3: File(idback.value),
        function0: () async {
          final pictures = await ImagePicker().pickMultiImage();
          if (pictures.isNotEmpty && pictures.length == 2) {
            registerback.value = pictures[0].path;
            registerfront.value = pictures[1].path;
          }
        },
        function1: () async {
          final pictures = await ImagePicker().pickMultiImage();
          if (pictures.isNotEmpty && pictures.length == 2) {
            idfront.value = pictures[0].path;
            idback.value = pictures[1].path;
          }
        },
        key: const Key("4"),
      ),
    ];

    return SafeArea(
        child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: const Color(0xFFF5F5F7),
              body: KeyboardVisibilityBuilder(
                builder: (p0, isKeyboardVisible) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: SingleChildScrollView(
                      physics: !isKeyboardVisible
                          ? const NeverScrollableScrollPhysics()
                          : const BouncingScrollPhysics(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BackInsuranceContainer(
                            name: "domestic".tr(),
                            description: "domesticdes".tr(),
                            icon: const Icon(
                              FontAwesomeIcons.briefcase,
                              color: carcolor,
                            ),
                            function: () => context.router.pop(),
                            containercolor: carcontainer,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            color: Colors.white,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height - 200,
                            child: SingleChildScrollView(
                                child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AnotherStepper(
                                    scrollPhysics:
                                        const BouncingScrollPhysics(),
                                    activeIndex: index.value,
                                    stepperList: domesticstepperdata,
                                    stepperDirection: Axis.horizontal,
                                    inverted: false,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 500),
                                  child: cases[index.value],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (index.value != 0) {
                                          index.value = index.value - 1;
                                        }
                                      },
                                      child: Container(
                                        color: index.value == 0
                                            ? Colors.grey
                                            : Colors.black,
                                        width: 175,
                                        height: 60,
                                        child: Center(
                                            child: Text(
                                          "back".tr(),
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ),
                                    ValueListenableBuilder(
                                      valueListenable: setting.listenable(),
                                      builder: (context, Box box, child) {
                                        final token = box.get("apitoken");

                                        return GestureDetector(
                                          onTap: () async {
                                            if (index.value == 0) {
                                              if (domesticformkey
                                                  .value.currentState!
                                                  .validate()) {
                                                await ref
                                                    .read(
                                                        getoffersProvider(token)
                                                            .future)
                                                    .then((value) => value.fold(
                                                            (l) => ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(SnackBar(
                                                                    content: Text(
                                                                            "contact")
                                                                        .tr())),
                                                            (r) {
                                                          offers.value = r;
                                                          final isLaseIndex =
                                                              index.value ==
                                                                  cases.length -
                                                                      1;
                                                          index.value =
                                                              isLaseIndex
                                                                  ? 0
                                                                  : index.value +
                                                                      1;
                                                        }));
                                              }
                                            } else if (index.value == 1 &&
                                                domestic.get("domesticid") !=
                                                    null) {
                                              final isLaseIndex = index.value ==
                                                  cases.length - 1;
                                              index.value = isLaseIndex
                                                  ? 0
                                                  : index.value + 1;
                                            } else if (index.value == 2) {
                                              if (registerfront.value != "" &&
                                                  registerback.value != "" &&
                                                  idback.value != "" &&
                                                  idfront.value != "") {
                                                await Future.delayed(
                                                    const Duration(seconds: 1),
                                                    (() {
                                                  order.value = order.value
                                                      .copyWith(
                                                          total: domestic.get(
                                                              "domesticid"));
                                                  order.value = order.value.copyWith(
                                                      start_date: domestic.get(
                                                          "domesticsstartdate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          end_date: domestic.get(
                                                              "domesticenddate"));
                                                }));
                                                final DomesticOfferModel
                                                    offersModel = offers.value
                                                        .firstWhere((element) =>
                                                            element.id ==
                                                            domestic.get(
                                                                "domesticid"));

                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  isDismissible: true,
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return StatefulBuilder(
                                                      builder:
                                                          (context, setState) {
                                                        return DomesticBottomSheet(
                                                          offerModel:
                                                              offersModel,
                                                          function: () {
                                                            ref
                                                                .read(
                                                                    domesticplaceOrderProvider)
                                                                .execute(DomesticPlaceOrderUseCaseInput(
                                                                    model: order
                                                                        .value,
                                                                    token:
                                                                        token,
                                                                    addons:
                                                                        domestic.get("addon") ??
                                                                            ""))
                                                                .then((value) =>
                                                                    value.fold(
                                                                        (l) => ScaffoldMessenger.of(context)
                                                                            .showSnackBar(SnackBar(content: Text("contact").tr())),
                                                                        (r) async {
                                                                      DomesticDoneModel
                                                                          orderdone =
                                                                          r;
                                                                      for (var element
                                                                          in images) {
                                                                        ref.read(domesticattachplaceOrderProvider).execute(DomesticAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) => value.fold(
                                                                            (l) =>
                                                                                print(l),
                                                                            (r) => print(r)));
                                                                      }
                                                                      context
                                                                          .router
                                                                          .pop();
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                              SnackBar(content: Text("orderconfirm".tr())));
                                                                      await context
                                                                          .router
                                                                          .replaceAll([
                                                                        const HomeScreen()
                                                                      ]);
                                                                    }));
                                                          },
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              }
                                            } else {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "picupload".tr())));
                                            }
                                          },
                                          child: Container(
                                            color: Colors.black,
                                            width: 175,
                                            height: 60,
                                            child: Center(
                                                child: Text(
                                              index.value != 2
                                                  ? "next".tr()
                                                  : "confirm".tr(),
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                )
                              ],
                            )),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )));
  }
}
