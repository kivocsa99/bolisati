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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../router/app_route.gr.dart';

//privacy policy
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

    final genderController = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();
    final maritalController = useTextEditingController();
    final insuranceController = useTextEditingController();

    final genderscrollcontroller = FixedExtentScrollController(initialItem: 0);
    final maritalscrollcontroller = FixedExtentScrollController(initialItem: 0);
    final insurancescrollcontroller =
        FixedExtentScrollController(initialItem: 0);
    final imageCount = useState(0);

    final _images = useState<List<String>>([]);

    final selecteddate = useState("");

    List<Widget> cases = [
      MedicalInformationContainer(
        ontap: () async {
          FocusScope.of(context).unfocus();
          await showCupertinoModalPopup(
              context: context,
              builder: (_) => Container(
                    height: 250,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                          child: CupertinoDatePicker(
                              dateOrder: DatePickerDateOrder.dmy,
                              mode: CupertinoDatePickerMode.date,
                              initialDateTime:
                                  DateTime.now().add(const Duration(hours: 1)),
                              minimumDate: DateTime.now(),
                              maximumDate:
                                  DateTime.now().add(const Duration(days: 356)),
                              onDateTimeChanged: (val) {
                                selecteddate.value =
                                    DateFormat("d/M/y").format(val);

                                medical.put(
                                    "startdate",
                                    DateFormat("yyyy-MM-dd HH:mm:ss")
                                        .format(val)
                                        .toString());
                                medical.put(
                                    "enddate",
                                    DateFormat("yyyy-MM-dd HH:mm:ss").format(
                                        val.add(const Duration(days: 365))));
                                startController.text =
                                    selecteddate.value.toString();
                                endController.text = DateFormat("d/M/y")
                                    .format(val.add(const Duration(days: 365)));
                              }),
                        ),

                        // Close the modal
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 70,
                            child: CupertinoButton(
                              child: const Text('confirm').tr(),
                              onPressed: () async {
                                if (selecteddate.value == "") {
                                  selecteddate.value = DateFormat("d/M/y")
                                      .format(DateTime.now());

                                  medical.put(
                                      "startdate",
                                      DateFormat("yyyy-MM-dd HH:mm:ss")
                                          .format(DateTime.now())
                                          .toString());
                                  medical.put(
                                      "enddate",
                                      DateFormat("yyyy-MM-dd HH:mm:ss").format(
                                          DateTime.now()
                                              .add(const Duration(days: 365))));
                                  startController.text =
                                      selecteddate.value.toString();
                                  endController.text = DateFormat("d/M/y")
                                      .format(DateTime.now()
                                          .add(const Duration(days: 365)));
                                }
                                context.router.pop();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
        },
        formkey: medicalformkey.value,
        maritalstatus: () async {
          FocusScope.of(context).unfocus();
          await showCupertinoModalPopup(
              context: context,
              builder: (_) => Container(
                    height: 250,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                          child: CupertinoPicker(
                            scrollController: maritalscrollcontroller,
                            looping: false,
                            itemExtent: 46,
                            onSelectedItemChanged: (value) {
                              order.value = order.value.copyWith(
                                  marital_status_id: value == 0
                                      ? 1
                                      : value == 1
                                          ? 2
                                          : value == 2
                                              ? 3
                                              : 4);
                              maritalController.text = value == 0
                                  ? "single".tr()
                                  : value == 1
                                      ? "married".tr()
                                      : value == 2
                                          ? "widowed".tr()
                                          : "divorced".tr();
                            },
                            children: [
                              const Text("single").tr(),
                              const Text("married").tr(),
                              const Text("widowed").tr(),
                              const Text("divorced").tr()
                            ],
                          ),
                        ),

                        // Close the modal
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 70,
                            child: CupertinoButton(
                              child: const Text('confirm').tr(),
                              onPressed: () async {
                                if (maritalscrollcontroller.selectedItem == 0) {
                                  order.value = order.value
                                      .copyWith(marital_status_id: 1);
                                  maritalController.text = "single".tr();
                                }
                                context.router.pop();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
        },
        maritalcontroller: maritalController,
        startdatecontroller: startController,
        enddatecontroller: endController,
        yearcontroller: yearController,
        gendercontroller: genderController,
        namecontroller: nameController,
        insurancecontroller: insuranceController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        gender: () async {
          FocusScope.of(context).unfocus();
          await showCupertinoModalPopup(
              context: context,
              builder: (_) => Container(
                    height: 250,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                          child: CupertinoPicker(
                            scrollController: genderscrollcontroller,
                            looping: false,
                            itemExtent: 46,
                            onSelectedItemChanged: (value) {
                              order.value = order.value
                                  .copyWith(gender_id: value == 0 ? 1 : 2);
                              genderController.text = value == 0
                                  ? "globalsmale".tr()
                                  : "globalsfemale".tr();
                            },
                            children: [
                              const Text("globalsmale").tr(),
                              const Text("globalsfemale").tr(),
                            ],
                          ),
                        ),

                        // Close the modal
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 70,
                            child: CupertinoButton(
                              child: const Text('confirm').tr(),
                              onPressed: () async {
                                if (genderscrollcontroller.selectedItem == 0) {
                                  order.value =
                                      order.value.copyWith(gender_id: 1);
                                  genderController.text = "globalsmale".tr();
                                }
                                context.router.pop();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
        },
        insurance: () async {
          FocusScope.of(context).unfocus();
          await showCupertinoModalPopup(
              context: context,
              builder: (_) => Container(
                    height: 250,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                          child: CupertinoPicker(
                            scrollController: insurancescrollcontroller,
                            looping: false,
                            itemExtent: 46,
                            onSelectedItemChanged: (value) {
                              order.value = order.value.copyWith(
                                  medical_insurance_type_id:
                                      value == 0 ? 1 : 2);
                              insuranceController.text = value == 0
                                  ? "globalsin".tr()
                                  : "globalsinout".tr();
                            },
                            children: [
                              const Text("globalsin").tr(),
                              const Text("globalsinout").tr(),
                            ],
                          ),
                        ),

                        // Close the modal
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: 70,
                            child: CupertinoButton(
                              child: const Text('confirm').tr(),
                              onPressed: () async {
                                if (insurancescrollcontroller.selectedItem ==
                                    0) {
                                  order.value = order.value
                                      .copyWith(medical_insurance_type_id: 1);
                                  insuranceController.text = "globalsin".tr();
                                }
                                context.router.pop();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
        },
        key: const Key("1"),
      ),
      MedicalOrderOffersContainer(
        offers: offers.value,
        key: const Key("2"),
      ),
      MedicalUploadPage(
        images: _images.value,
        function0: () async {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("imageselect").tr(),
                content: const Text("imageselectdes").tr(),
                actions: <Widget>[
                  ButtonBar(
                      alignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.image),
                          onPressed: () async {
                            if (imageCount.value < 4) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              if (pickedFile != null) {
                                imageCount.value++;
                                _images.value.add(pickedFile.path);
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: const Text("picdes").tr()));
                            }
                            if (context.mounted) context.router.pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.camera),
                          onPressed: () async {
                            if (imageCount.value < 4) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                              if (pickedFile != null) {
                                imageCount.value++;
                                _images.value.add(pickedFile.path);
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: const Text("picdes").tr()));
                            }
                            if (context.mounted) context.router.pop();
                          },
                        ),
                      ]),
                ],
              );
            },
          );
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
                            icon: "assets/medical.svg",
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
                                      onTap: () async {
                                        if (index.value == 1) {
                                          await medical.delete("medicalid");
                                          index.value = index.value - 1;
                                        } else if (index.value != 0) {
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
                                            } else if (index.value == 1) {
                                              if (medical.get("medicalid") !=
                                                  null) {
                                                final isLaseIndex =
                                                    index.value ==
                                                        cases.length - 1;
                                                index.value = isLaseIndex
                                                    ? 0
                                                    : index.value + 1;
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "offersdes".tr())));
                                              }
                                            } else if (index.value == 2) {
                                              if (_images.value.length >= 2) {
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
                                                print(order.value);

                                                if (context.mounted) {
                                                  showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    isDismissible: true,
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return StatefulBuilder(
                                                        builder: (context,
                                                            setState) {
                                                          return MedicalBottomSheet(
                                                            function: () async {
                                                              return await ref
                                                                  .read(
                                                                      medicalplaceOrderProvider)
                                                                  .execute(
                                                                      MedicalPlaceOrderUseCaseInput(
                                                                    addons:
                                                                        medical.get("addon") ??
                                                                            "",
                                                                    medicalOrderModel:
                                                                        order
                                                                            .value,
                                                                    token:
                                                                        token,
                                                                  ))
                                                                  .then((value) =>
                                                                      value.fold(
                                                                          (l) {
                                                                        showDialog(
                                                                          barrierDismissible:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
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
                                                                                      'orderdes',
                                                                                    ).tr(),
                                                                                  ],
                                                                                ),
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                                                                                    child: const Text("contact").tr(),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                                                                                    child: GestureDetector(
                                                                                      onTap: () async {
                                                                                        await context.router.pop();
                                                                                      },
                                                                                      child: Container(
                                                                                        color: Colors.black,
                                                                                        width: 100,
                                                                                        height: 60,
                                                                                        child: Center(
                                                                                            child: const Text(
                                                                                          "confirm",
                                                                                          style: TextStyle(color: Colors.white),
                                                                                        ).tr()),
                                                                                      ),
                                                                                    ),
                                                                                  )
                                                                                ]);
                                                                          },
                                                                        );
                                                                      }, (r) async {
                                                                        MedicalOrderDoneModel
                                                                            orderdone =
                                                                            r;
                                                                        for (var element
                                                                            in _images.value) {
                                                                          ref.read(medicalattachplaceOrderProvider).execute(MedicalAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) =>
                                                                              value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("contact").tr())), (r) async {
                                                                                if (element == _images.value.last) {
                                                                                  await context.router.pop();
                                                                                  if (context.mounted) {
                                                                                    showDialog(
                                                                                      barrierDismissible: false,
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
                                                                                                  'orderdes',
                                                                                                ).tr(),
                                                                                              ],
                                                                                            ),
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                                                                                                child: const Text("orderconfirm").tr(),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                                                                                                child: GestureDetector(
                                                                                                  onTap: () async {
                                                                                                    await context.router.replaceAll([const HomeScreen()]);
                                                                                                  },
                                                                                                  child: Container(
                                                                                                    color: Colors.black,
                                                                                                    width: 100,
                                                                                                    height: 60,
                                                                                                    child: Center(
                                                                                                        child: const Text(
                                                                                                      "confirm",
                                                                                                      style: TextStyle(color: Colors.white),
                                                                                                    ).tr()),
                                                                                                  ),
                                                                                                ),
                                                                                              )
                                                                                            ]);
                                                                                      },
                                                                                    );
                                                                                  }
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
                                                }
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
