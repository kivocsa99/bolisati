import 'dart:io';

import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/personal/attachfile/attach.file.use.case.dart';
import 'package:bolisati/application/personal/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/application/personal/getoffers/get.offers.use.case.dart';
import 'package:bolisati/application/personal/getoffers/get.offers.use.case.input.dart';
import 'package:bolisati/application/personal/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/personal/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/personal/model/personalofferdonemodel.dart';
import 'package:bolisati/domain/api/personal/model/personaloffermodel.dart';
import 'package:bolisati/presentation/personal/widgets/personalbottomsheet.dart';
import 'package:bolisati/presentation/personal/widgets/personalinformationcontainer.dart';
import 'package:bolisati/presentation/personal/widgets/personaluploadcontainer.dart';
import 'package:bolisati/presentation/widgets/back_insuarance_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/personalordercontainer.dart';

class PersonalPlaceOrderScreen extends HookConsumerWidget {
  const PersonalPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const PersonalOfferDoneModel());
    final carformkey = useState(GlobalKey<FormState>());
    final index = useState(0);
    final offers = useState<List<PersonalOfferModel>>([]);
    final Box setting = Hive.box("setting");
    final Box personal = Hive.box("personal");
    final nameController = useTextEditingController();
    final yearController = useTextEditingController();
    final occupationcontroller = useTextEditingController();
    final startController = useTextEditingController();
    final valuecontroller = useTextEditingController();

    final endController = useTextEditingController();

    final registerback = useState("");
    final registerfront = useState("");
    List<String> images = [
      registerback.value,
      registerfront.value,
    ];
    List<Widget> cases = [
      PersonalInformationContainer(
        personaltype: (value) {
          order.value = order.value.copyWith();
        },
        valuecontroller: valuecontroller,
        value: (value) =>
            order.value = order.value.copyWith(insurance_amount: value),
        startdatecontroller: startController,
        enddatecontroller: endController,
        yearcontroller: yearController,
        ocuupationcontroller: occupationcontroller,
        namecontroller: nameController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        formkey: carformkey.value,
        key: const Key("1"),
      ),
      PersonalOrderOffersContainer(
        offers: offers.value,
        key: const Key("2"),
      ),
      PersonalPicturesContainer(
        image0: File(registerfront.value),
        image1: File(registerback.value),
        function0: () async {
          final pictures = await ImagePicker().pickMultiImage();
          if (pictures.isNotEmpty && pictures.length == 2) {
            registerback.value = pictures[0].path;
            registerfront.value = pictures[1].path;
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
                            name: "personal".tr(),
                            description: "vehicledes".tr(),
                            icon: const Icon(
                              FontAwesomeIcons.personFallingBurst,
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
                                    stepperList: personalsteperdata,
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
                                          style: const TextStyle(color: Colors.white),
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
                                              if (carformkey.value.currentState!
                                                  .validate()) {
                                                await ref
                                                    .read(
                                                        personalgetOffersProvider)
                                                    .execute(
                                                        PersonalGetOffersUseCaseInput(
                                                      amount: int.parse(order
                                                          .value
                                                          .insurance_amount!),
                                                      age: personal.get("age"),
                                                      token: token,
                                                      typeid: personal
                                                          .get("typeid"),
                                                    ))
                                                    .then((value) => value.fold(
                                                            (l) => ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(SnackBar(
                                                                    content: const Text(
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
                                                personal.get("personalid") !=
                                                    null) {
                                              final isLaseIndex = index.value ==
                                                  cases.length - 1;
                                              index.value = isLaseIndex
                                                  ? 0
                                                  : index.value + 1;
                                            } else if (index.value == 2) {
                                              if (registerfront.value != "" &&
                                                  registerback.value != "") {
                                                await Future.delayed(
                                                    const Duration(seconds: 1),
                                                    (() {
                                                  order.value = order.value
                                                      .copyWith(
                                                          birthdate:
                                                              personal.get(
                                                                  "birthdate"));
                                                  order.value = order.value.copyWith(
                                                      personal_accident_insurance_id:
                                                          personal
                                                              .get("personalid")
                                                              .toString());
                                                  order.value = order.value
                                                      .copyWith(
                                                          personal_accident_occupation_id:
                                                              personal
                                                                  .get("typeid")
                                                                  .toString());
                                                  order.value = order.value
                                                      .copyWith(
                                                          start_date:
                                                              personal.get(
                                                                  "startdate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          end_date: personal
                                                              .get("enddate"));
                                                }));
                                                final PersonalOfferModel
                                                    offersModel = offers.value
                                                        .firstWhere((element) =>
                                                            element.id ==
                                                            personal.get(
                                                                "personalid"));

                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  isDismissible: true,
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return StatefulBuilder(
                                                      builder:
                                                          (context, setState) {
                                                        return PersonalBottomSheet(
                                                          function: () {
                                                            ref
                                                                .read(
                                                                    personalplaceOrderProvider)
                                                                .execute(PersonalPlaceOrderUseCaseInput(
                                                                    model: order
                                                                        .value,
                                                                    token:
                                                                        token,
                                                                    addons:
                                                                        personal.get("addon") ??
                                                                            ""))
                                                                .then((value) =>
                                                                    value.fold(
                                                                        (l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                                            content:
                                                                                const Text("contact").tr())),
                                                                        (r) async {
                                                                      PersonalOfferDoneModel
                                                                          orderdone =
                                                                          r;
                                                                      for (var element
                                                                          in images) {
                                                                        ref.read(personalattachfileProvider).execute(PersonalAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) =>
                                                                            value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("contact").tr())),
                                                                                (r) async {
                                                                              context.router.pop();
                                                                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("orderconfirm".tr())));
                                                                              await context.router.replaceAll([
                                                                                const HomeScreen()
                                                                              ]);
                                                                            }));
                                                                      }
                                                                    }));
                                                          },
                                                          offerModel:
                                                              offersModel,
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
