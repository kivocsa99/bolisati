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
import 'package:bolisati/domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import 'package:bolisati/presentation/domestic/widgets/domesticbottomsheet.dart';
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
import '../widgets/domesticinformationcontainer.dart';
import '../widgets/domesticoffercontainer.dart';
import '../widgets/domesticuploadcontainer.dart';

class DomesticPlaceOrderScreen extends HookConsumerWidget {
  const DomesticPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const DomesticWorkersOrderModel());
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
    final selecteddate = useState("");

    final imageCount = useState(0);
    final imageCount1 = useState(0);
    final imageCount2 = useState(0);

    final _images = useState<List<String>>([]);
    final _images1 = useState<List<String>>([]);
    final _images2 = useState<List<String>>([]);

    List<Widget> cases = [
      DomesticInformationContainer(
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

                                domestic.put(
                                    "startdate",
                                    DateFormat("yyyy-MM-dd HH:mm:ss")
                                        .format(val)
                                        .toString());
                                domestic.put(
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
                                  domestic.put(
                                      "startdate",
                                      DateFormat("yyyy-MM-dd HH:mm:ss")
                                          .format(DateTime.now())
                                          .toString());
                                  domestic.put(
                                      "enddate",
                                      DateFormat("yyyy-MM-dd HH:mm:ss").format(
                                          DateTime.now()
                                              .add(const Duration(days: 365))));
                                  startController.text = DateFormat("d/M/y")
                                      .format(DateTime.now());
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
        images1: _images1.value,
        images: _images.value,
        images2: _images2.value,
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
                            if (imageCount.value < 2) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              if (pickedFile != null) {
                                imageCount.value++;

                                print(pickedFile.path);
                                _images.value.add(pickedFile.path);
                                print(_images);
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
                            if (imageCount.value < 2) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                              if (pickedFile != null) {
                                imageCount.value++;
                                print(pickedFile.path);
                                _images.value.add(pickedFile.path);
                                print(_images);
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
        function1: () async {
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
                            if (imageCount1.value < 2) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              if (pickedFile != null) {
                                imageCount1.value++;

                                _images1.value.add(pickedFile.path);
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
                            if (imageCount1.value < 2) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                              if (pickedFile != null) {
                                imageCount1.value++;
                                print(pickedFile.path);
                                _images1.value.add(pickedFile.path);
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
        function2: () async {
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
                            if (imageCount2.value < 2) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.gallery);
                              if (pickedFile != null) {
                                imageCount2.value++;

                                _images2.value.add(pickedFile.path);
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
                            if (imageCount2.value < 2) {
                              final pickedFile = await ImagePicker()
                                  .pickImage(source: ImageSource.camera);
                              if (pickedFile != null) {
                                imageCount2.value++;
                                print(pickedFile.path);
                                _images2.value.add(pickedFile.path);
                                print(_images);
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
                            icon: "assets/domestic.svg",
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
                                      onTap: () async {
                                        if (index.value == 1) {
                                          await domestic.delete("domesticid");
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
                                            } else if (index.value == 1) {
                                              if (domestic.get("domesticid") !=
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
                                              if (_images.value.length == 2 &&
                                                  _images1.value.isNotEmpty &&
                                                  _images2.value.isNotEmpty) {
                                                await Future.delayed(
                                                    const Duration(seconds: 1),
                                                    (() {
                                                  order.value = order.value
                                                      .copyWith(
                                                          total: domestic.get(
                                                              "domesticid"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          start_date:
                                                              domestic.get(
                                                                  "startdate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          end_date: domestic
                                                              .get("enddate"));
                                                }));
                                                final DomesticOfferModel
                                                    offersModel = offers.value
                                                        .firstWhere((element) =>
                                                            element.id ==
                                                            domestic.get(
                                                                "domesticid"));

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
                                                          return DomesticBottomSheet(
                                                            offerModel:
                                                                offersModel,
                                                            function: () {
                                                              print(
                                                                  order.value);
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
                                                                          (l) {
                                                                        print(
                                                                            l);
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
                                                                        DomesticDoneModel
                                                                            orderdone =
                                                                            r;

                                                                        final List<
                                                                            String> hello = _images
                                                                                .value +
                                                                            _images1.value +
                                                                            _images2.value;
                                                                        for (var element
                                                                            in hello) {
                                                                          ref.read(domesticattachplaceOrderProvider).execute(DomesticAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) =>
                                                                              value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("contact").tr())), (r) async {
                                                                                if (element == hello.last) {
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
                                                                                  ;
                                                                                }
                                                                              }));
                                                                        }
                                                                      }));
                                                            },
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
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
                                              index.value != 2
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
