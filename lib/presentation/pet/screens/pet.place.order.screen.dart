import 'dart:io';

import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/pet/use_cases/attachfile/attach.file.use.case.dart';
import 'package:bolisati/application/pet/use_cases/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/application/pet/use_cases/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/pet/use_cases/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/application/provider/pet.repository.provider.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/pet/model/petoffermodel.dart';
import 'package:bolisati/domain/api/pet/model/petorderdonemodel.dart';
import 'package:bolisati/presentation/pet/widgets/petbottomsheet.dart';
import 'package:bolisati/presentation/pet/widgets/petinformationcontainer.dart';
import 'package:bolisati/presentation/pet/widgets/petordercontainer.dart';
import 'package:bolisati/presentation/pet/widgets/petuploadpictures.dart';
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

class PetPlaceOrderScreen extends HookConsumerWidget {
  const PetPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const PetOrderDoneModel());
    final carformkey = useState(GlobalKey<FormState>());
    final index = useState(0);
    final offers = useState<List<PetOffersModel>>([]);
    final Box setting = Hive.box("setting");
    final Box pet = Hive.box("pet");
    final nameController = useTextEditingController();
    final yearController = useTextEditingController();
    final brandController = useTextEditingController();
    final modelController = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();

    final registerback = useState("");
    final registerfront = useState("");
    List<String> images = [
      registerback.value,
      registerfront.value,
    ];
    List<Widget> cases = [
      PetInformationContainer(
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
            pet.put("startdate",
                DateFormat("yyyy-MM-dd HH:mm:ss").format(pickedYear));
            startController.text =
                DateFormat("d/M/y").format(pickedYear).toString();

            pet.put(
                "enddate",
                DateFormat("yyyy-MM-dd HH:mm:ss")
                    .format(pickedYear.add(const Duration(days: 365))));
            endController.text = DateFormat("d/M/y")
                .format(pickedYear.add(const Duration(days: 365)))
                .toString();
          }
        },
        gender: (value) {
          order.value =
              order.value.copyWith(genderid: value == "Male" ? "1" : "2");
        },
        pettype: (value) {
          order.value = order.value.copyWith(
              pet_type_id: value == "Cat"
                  ? "1"
                  : value == "Dog"
                      ? "2"
                      : "3");
        },
        startdatecontroller: startController,
        enddatecontroller: endController,
        yearcontroller: yearController,
        carbrandcontroller: brandController,
        carmodelcontroller: modelController,
        namecontroller: nameController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        formkey: carformkey.value,
        key: const Key("1"),
      ),
      PetOrderContainer(
        offers: offers.value,
        key: const Key("2"),
      ),
      PetPicturesContainer(
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
                            name: "pet".tr(),
                            description: "petdes".tr(),
                            icon: const Icon(
                              FontAwesomeIcons.cat,
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
                                    stepperList: petstepperData,
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
                                                await ref
                                                    .read(
                                                        getoffersProvider(token)
                                                            .future)
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
                                                pet.get("petid") != null) {
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
                                                          pet_insurance_id: pet
                                                              .get("petid")
                                                              .toString());
                                                  order.value = order.value
                                                      .copyWith(
                                                          birthdate: pet.get(
                                                              "birthdate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          start_date: pet.get(
                                                              "startdate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          end_date: pet
                                                              .get("enddate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          country_id: pet
                                                              .get("country")
                                                              .toString());
                                                }));

                                                final PetOffersModel
                                                    offersModel = offers.value
                                                        .firstWhere((element) =>
                                                            element.id ==
                                                            pet.get("petid"));

                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  isDismissible: true,
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return StatefulBuilder(
                                                      builder:
                                                          (context, setState) {
                                                        return PetBottomSheet(
                                                          function: () {
                                                            ref
                                                                .read(
                                                                    petplaceOrderProvider)
                                                                .execute(PetPlaceOrderUseCaseInput(
                                                                    model: order
                                                                        .value,
                                                                    token:
                                                                        token,
                                                                    addons:
                                                                        pet.get("addon") ??
                                                                            ""))
                                                                .then((value) =>
                                                                    value.fold(
                                                                        (l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                                                            content:
                                                                                const Text("contact").tr())),
                                                                        (r) async {
                                                                      PetOrderDoneModel
                                                                          orderdone =
                                                                          r;
                                                                      for (var element
                                                                          in images) {
                                                                        ref.read(petattachfileProvider).execute(PetAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) =>
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
