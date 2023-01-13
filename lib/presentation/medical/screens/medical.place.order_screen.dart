import 'dart:io';

import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/medical/use_cases/attachfile/attach.file.use.case.dart';
import 'package:bolisati/application/medical/use_cases/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/application/medical/use_cases/getoffers/get.offers.use.case.dart';
import 'package:bolisati/application/medical/use_cases/getoffers/get.offers.use.case.input.dart';
import 'package:bolisati/application/medical/use_cases/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/medical/use_cases/placeorder/place.order.use.case.input.dart';

import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/medical/model/medicalmodel.dart';
import 'package:bolisati/domain/api/medical/model/medicalorderdone.dart';
import 'package:bolisati/domain/api/orders/medicalorders/medicalordermodel.dart';
import 'package:bolisati/presentation/medical/widgets/medicalbottomsheet.dart';
import 'package:bolisati/presentation/medical/widgets/medicalinformationcontainer.dart';
import 'package:bolisati/presentation/medical/widgets/medicalordercontainer.dart';
import 'package:bolisati/presentation/medical/widgets/medicaluploadpage.dart';

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

class MedicalPlaceOrderScreen extends HookConsumerWidget {
  const MedicalPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const MedicalOrderModel());
    final medicalformkey = useState(GlobalKey<FormState>());
    final index = useState(0);
    final offers = useState<List<MedicalOffersModel>>([]);
    final Box setting = Hive.box("setting");
    final Box medical = Hive.box("medical");
    final nameController = useTextEditingController();
    final yearController = useTextEditingController();

    final valueController = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();

    final idback = useState("");
    final idfront = useState("");

    List<String> images = [
      idback.value,
      idfront.value,
    ];
    List<Widget> cases = [
      MedicalInformationContainer(
        ontap: () async {
          FocusScope.of(context).unfocus();
          final pickedYear = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 740)),
            builder: (context, child) {
              return Theme(
                data: ThemeData.light().copyWith(
                  colorScheme: const ColorScheme.light(primary: Colors.blue),
                  buttonTheme: const ButtonThemeData(
                    textTheme: ButtonTextTheme.primary,
                  ),
                ),
                child: child!,
              );
            },
          );
          if (pickedYear != null) {
            medical.put("startdate",
                DateFormat("yyyy-MM-dd HH:mm:ss").format(pickedYear));
            startController.text = DateFormat("d/M/y").format(pickedYear);

            medical.put(
                "enddate",
                DateFormat("yyyy-MM-dd HH:mm:ss")
                    .format(pickedYear.add(const Duration(days: 365))));
            endController.text = DateFormat("d/M/y")
                .format(pickedYear.add(const Duration(days: 365)));
          }
        },
        formkey: medicalformkey.value,
        maritalstatus: (value) => order.value =
            order.value.copyWith(marital_status_id: value == "Married" ? 1 : 2),
        startdatecontroller: startController,
        enddatecontroller: endController,
        yearcontroller: yearController,
        valuecontroller: valueController,
        namecontroller: nameController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        gender: (value) {
          order.value = order.value.copyWith(gender_id: value == "Man" ? 1 : 2);
        },
        insurance: (value) => order.value = order.value
            .copyWith(medical_insurance_type_id: value == "in" ? 1 : 2),
        key: const Key("1"),
      ),
      MedicalOrderOffersContainer(
        offers: offers.value,
        key: const Key("2"),
      ),
      MedicalUploadPage(
        image0: File(idfront.value),
        image1: File(idback.value),
        function0: () async {
          final pictures = await ImagePicker().pickMultiImage();
          if (pictures.isNotEmpty && pictures.length == 2) {
            idback.value = pictures[0].path;
            idfront.value = pictures[1].path;
          }
        },
      )
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
                            name: "medical".tr(),
                            description: "medicaldes".tr(),
                            icon: const Icon(
                              FontAwesomeIcons.houseMedical,
                              color: medicalcolor,
                            ),
                            function: () => context.router.pop(),
                            containercolor: medicalcontainer,
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
                                    stepperList: medicalstepperdata,
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
                                              if (medicalformkey
                                                  .value.currentState!
                                                  .validate()) {
                                                ref
                                                    .read(
                                                        medicalgetOffersProvider)
                                                    .execute(MedicalGetOffersUseCaseInput(
                                                        token: token,
                                                        genderid: order
                                                            .value.gender_id,
                                                        insurancetype: order
                                                            .value
                                                            .medical_insurance_type_id,
                                                        age:
                                                            medical.get("age")))
                                                    .then((value) => value.fold(
                                                            (l) => ScaffoldMessenger.of(
                                                                    context)
                                                                .showSnackBar(SnackBar(
                                                                    content: const Text("contact")
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
                                                medical.get("medicalid") !=
                                                    null) {
                                              final isLaseIndex = index.value ==
                                                  cases.length - 1;
                                              index.value = isLaseIndex
                                                  ? 0
                                                  : index.value + 1;
                                            } else if (index.value == 2) {
                                              if (idback.value != "" &&
                                                  idfront.value != "") {
                                                await Future.delayed(
                                                    const Duration(seconds: 1),
                                                    (() {
                                                  order.value = order.value
                                                      .copyWith(
                                                          start_date:
                                                              medical.get(
                                                                  "startdate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          end_date: medical
                                                              .get("enddate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          medical_insurance_id:
                                                              medical.get(
                                                                  "medicalid"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          birthdate:
                                                              medical.get(
                                                                  "birthdate"));
                                                }));
                                                final MedicalOffersModel
                                                    offersModel = offers.value
                                                        .firstWhere((element) =>
                                                            element.id ==
                                                            medical.get(
                                                                "medicalid"));

                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  isDismissible: true,
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return StatefulBuilder(
                                                      builder:
                                                          (context, setState) {
                                                        return MedicalBottomSheet(
                                                          function: () {
                                                            ref
                                                                .read(
                                                                    medicalplaceOrderProvider)
                                                                .execute(
                                                                    MedicalPlaceOrderUseCaseInput(
                                                                  addons: medical
                                                                          .get(
                                                                              "addon") ??
                                                                      "",
                                                                  medicalOrderModel:
                                                                      order
                                                                          .value,
                                                                  token: token,
                                                                ))
                                                                .then((value) =>
                                                                    value.fold(
                                                                        (l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                                            content:
                                                                                const Text("contact").tr())),
                                                                        (r) async {
                                                                      MedicalOrderDoneModel
                                                                          orderdone =
                                                                          r;
                                                                      for (var element
                                                                          in images) {
                                                                        ref.read(medicalattachplaceOrderProvider).execute(MedicalAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) =>
                                                                            value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("contact").tr())),
                                                                                (r) async {
                                                                              if (element == images.last) {
                                                                                context.router.pop();
                                                                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("orderconfirm".tr())));
                                                                                await context.router.replaceAll([
                                                                                  const HomeScreen()
                                                                                ]);
                                                                              }
                                                                            }));
                                                                      }
                                                                    }));
                                                          },
                                                          medicalorder:
                                                              offersModel,
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "picupload".tr())));
                                              }
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
