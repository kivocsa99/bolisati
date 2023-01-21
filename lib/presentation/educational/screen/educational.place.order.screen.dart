import 'dart:io';

import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/educational/use_cases/addchild/add.child.use.case.input.dart';
import 'package:bolisati/application/educational/use_cases/addchild/addchild.file.use.case.dart';
import 'package:bolisati/application/educational/use_cases/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/application/educational/use_cases/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/educational/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/educational/models/ducationaldoneoffermodel.dart';
import 'package:bolisati/domain/api/educational/models/educationaloffermodel.dart';
import 'package:bolisati/presentation/educational/widgets/educationaladdchildcontainer.dart';
import 'package:bolisati/presentation/educational/widgets/educationalinformationcontainer.dart';
import 'package:bolisati/presentation/educational/widgets/educationaluploadpictures.dart';
import 'package:bolisati/presentation/widgets/back_insuarance_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/educational/use_cases/attachfile/attach.file.use.case.dart';

class EducationalPlaceOrderScreen extends HookConsumerWidget {
  const EducationalPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const EducationalDoneModel());
    final childorder = useState(const EducationalChildDoneModel());

    final carformkey = useState(GlobalKey<FormState>());
    final index = useState(0);
    final Box setting = Hive.box("setting");
    final nameController = useTextEditingController();
    final childnameController = useTextEditingController();

    final yearController = useTextEditingController();

    final valueController = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();
    final monthlyController = useTextEditingController();
    final nationalController = useTextEditingController();
    final childyearController = useTextEditingController();

    final registerback = useState("");
    final registerfront = useState("");
    final Box educational = Hive.box("educational");
    List<String> images = [
      registerback.value,
      registerfront.value,
    ];
    List<Widget> cases = [
      EducationalInformationContainer(
        insurance: (value) async {
          order.value = order.value.copyWith(educational_type_id: value);
          await educational.put("type", value == "Monthly Fee" ? 1 : 2);
        },
        monthly: (value) =>
            order.value = order.value.copyWith(monthly_fee: value),
        yearly: (value) =>
            order.value = order.value.copyWith(monthly_fee: value),
        monthlyconotroller: monthlyController,
        startdatecontroller: startController,
        enddatecontroller: endController,
        yearcontroller: yearController,
        valuecontroller: valueController,
        namecontroller: nameController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        formkey: carformkey.value,
        key: const Key("1"),
      ),
      EducationalAddChildInformationContainer(
        gender: (value) {
          childorder.value =
              childorder.value.copyWith(gender_id: value == "Male" ? "1" : "2");
        },
        national: (value) =>
            childorder.value.copyWith(national_id_number: value),
        nationalController: nationalController,
        yearcontroller: childyearController,
        name: (value) =>
            childorder.value = childorder.value.copyWith(name: value),
        namecontroller: childnameController,
      ),
      EducationalIdContainer(
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
                            name: "edu".tr(),
                            description: "edudes".tr(),
                            icon: "assets/education.svg",
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
                                    stepperList: educationalstepperdata,
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
                                          style: const TextStyle(
                                              color: Colors.white),
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
                                                order.value = order.value
                                                    .copyWith(
                                                        birthdate: educational
                                                            .get("birthdate"));
                                                order.value = order.value
                                                    .copyWith(
                                                        age: educational
                                                            .get("age"));
                                                ref
                                                    .read(
                                                        educationalplaceOrderProvider)
                                                    .execute(
                                                        EducationalPlaceOrderUseCaseInput(
                                                      model: order.value,
                                                      token: token,
                                                    ))
                                                    .then((value) => value.fold(
                                                            (l) => ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(SnackBar(
                                                                    content: const Text(
                                                                            "contact")
                                                                        .tr())),
                                                            (r) async {
                                                          order.value = r;

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
                                            } else if (index.value == 1) {
                                              childorder.value =
                                                  childorder.value.copyWith(
                                                      educational_order_id:
                                                          order.value.id
                                                              .toString());
                                              childorder.value =
                                                  childorder.value.copyWith(
                                                      birthdate: educational
                                                          .get("birthdate"));
                                              ref
                                                  .read(
                                                      educationaladdchildOrderProvider)
                                                  .execute(
                                                      EducationalAddChildFileUseCaseInput(
                                                          model:
                                                              childorder.value,
                                                          token: token))
                                                  .then((value) => value.fold(
                                                      (l) => ScaffoldMessenger
                                                              .of(context)
                                                          .showSnackBar(SnackBar(
                                                              content: const Text(
                                                                      "contact")
                                                                  .tr())),
                                                      (r) => {
                                                            showDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return SimpleDialog(
                                                                    title: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Image
                                                                            .asset(
                                                                          "assets/logo.png",
                                                                          scale:
                                                                              1.5,
                                                                        ),
                                                                        const SizedBox(
                                                                          width:
                                                                              10,
                                                                        ),
                                                                        const Text(
                                                                          'addanother',
                                                                        ).tr(),
                                                                      ],
                                                                    ),
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            left:
                                                                                40.0,
                                                                            right:
                                                                                40.0),
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () async {
                                                                            childyearController.clear();
                                                                            childnameController.clear();
                                                                            nationalController.clear();
                                                                            context.router.pop();
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.black,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                60,
                                                                            child: Center(
                                                                                child: const Text(
                                                                              "globalsyes",
                                                                              style: TextStyle(color: Colors.white),
                                                                            ).tr()),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets.only(
                                                                            top:
                                                                                40,
                                                                            left:
                                                                                40.0,
                                                                            right:
                                                                                40.0),
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap:
                                                                              () async {
                                                                            context.router.pop();
                                                                            final isLaseIndex =
                                                                                index.value == cases.length - 1;
                                                                            index.value = isLaseIndex
                                                                                ? 0
                                                                                : index.value + 1;
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            color:
                                                                                Colors.black,
                                                                            width:
                                                                                100,
                                                                            height:
                                                                                60,
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
                                                            )
                                                          }));
                                            } else if (index.value == 2) {
                                              if (registerfront.value != "" &&
                                                  registerback.value != "") {
                                                for (var element in images) {
                                                  ref
                                                      .read(
                                                          educationalattachplaceOrderProvider)
                                                      .execute(
                                                          EducationalAttachFileUseCaseInput(
                                                              token: token,
                                                              orderid: order
                                                                  .value.id,
                                                              file: File(
                                                                  element)))
                                                      .then((value) =>
                                                          value.fold(
                                                              (l) => ScaffoldMessenger.of(
                                                                      context)
                                                                  .showSnackBar(
                                                                      SnackBar(
                                                                          content:
                                                                              const Text("contact").tr())),
                                                              (r) async {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .showSnackBar(SnackBar(
                                                                    content: const Text(
                                                                            "orderconfirm")
                                                                        .tr()));
                                                            context.router
                                                                .pop();
                                                          }));
                                                }
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
                                              index.value != 3
                                                  ? "next"
                                                  : "confirm",
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ).tr()),
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
