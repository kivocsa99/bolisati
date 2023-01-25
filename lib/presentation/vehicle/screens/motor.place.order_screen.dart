import 'dart:io';

import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/motor/attachfile/attach.file.use.case.dart';
import 'package:bolisati/application/motor/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/application/motor/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/motor/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/motor/model/motororderdonemodel.dart';
import 'package:bolisati/domain/api/orders/motororders/motorordermodel.dart';
import 'package:bolisati/presentation/vehicle/widgets/bottomsheetcontainer.dart';
import 'package:bolisati/presentation/vehicle/widgets/carpersonalidcontainer.dart';
import 'package:bolisati/presentation/vehicle/widgets/ordersofferscontainer.dart';
import 'package:bolisati/presentation/widgets/back_insuarance_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/motor/getoffers/get.offers.use.case.dart';
import '../../../application/motor/getoffers/get.offers.use.case.input.dart';
import '../../../domain/api/motor/model/motormodel.dart';
import '../widgets/carinformationcontainer.dart';
import '../widgets/carpicturescontainer.dart';

class MotorPlaceOrderScreen extends HookConsumerWidget {
  const MotorPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const MotorOrderModel());
    final carformkey = useState(GlobalKey<FormState>());
    final index = useState(0);
    final offers = useState<List<MotorOffersModel>>([]);
    final Box setting = Hive.box("setting");
    final Box car = Hive.box("car");
    final nameController = useTextEditingController();
    final yearController = useTextEditingController();
    final fuelcontroller = useTextEditingController(text: "");
    final brandController = useTextEditingController();
    final modelController = useTextEditingController();
    final valueController = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();
    final prevcontroller = useTextEditingController();

    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    final prevscrollcontroller = FixedExtentScrollController(initialItem: 0);
    final isordering = useState(false);
    final frontimage = useState("");
    final leftimage = useState("");
    final rightimage = useState("");
    final backimage = useState("");

    final selecteddate = useState("");

    final imageCount = useState(0);
    final imageCount1 = useState(0);

    final _images = useState<List<String>>([]);
    final _images1 = useState<List<String>>([]);

    List<String> images = [
      frontimage.value,
      backimage.value,
      leftimage.value,
      rightimage.value,
    ];
    List<Widget> cases = [
      CarInformationContainer(
        startdatecontroller: startController,
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

                                car.put(
                                    "carsstartdate",
                                    DateFormat("yyyy-MM-dd")
                                        .format(val)
                                        .toString());
                                car.put(
                                    "carenddate",
                                    DateFormat("yyyy-MM-dd").format(
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

                                  car.put(
                                      "carsstartdate",
                                      DateFormat("yyyy-MM-dd")
                                          .format(DateTime.now())
                                          .toString());
                                  car.put(
                                      "carenddate",
                                      DateFormat("yyyy-MM-dd").format(
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
        enddatecontroller: endController,
        date: DateTime.tryParse(car.get("dd").toString()),
        yearcontroller: yearController,
        carbrandcontroller: brandController,
        carmodelcontroller: modelController,
        valuecontroller: valueController,
        namecontroller: nameController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        fueltypecontroller: fuelcontroller,
        fueltype: () async {
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
                            scrollController: scrollcontroller,
                            looping: false,
                            itemExtent: 46,
                            onSelectedItemChanged: (value) {
                              order.value = order.value.copyWith(
                                  fuel_type: value == 0
                                      ? "electrical"
                                      : value == 1
                                          ? "fuel"
                                          : "hybrid");
                              fuelcontroller.text = value == 0
                                  ? "electric".tr()
                                  : value == 1
                                      ? "gas".tr()
                                      : "hybrid".tr();
                            },
                            children: [
                              const Text("electric").tr(),
                              const Text("gas").tr(),
                              const Text("hybrid").tr()
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
                                if (scrollcontroller.selectedItem == 0) {
                                  order.value = order.value
                                      .copyWith(fuel_type: "electrical");
                                  fuelcontroller.text = "electric".tr();
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
        value: (value) {
          var myInt = int.parse(value!.replaceAll(",", ""));
          order.value = order.value.copyWith(estimated_car_price: myInt);
        },
        prevcontroller: prevcontroller,
        perviosaccidents: () async {
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
                            scrollController: prevscrollcontroller,
                            looping: false,
                            itemExtent: 46,
                            onSelectedItemChanged: (value) {
                              order.value = order.value.copyWith(
                                  previous_accidents: value == 0 ? 0 : 1);
                              prevcontroller.text = value == 0
                                  ? "globalsyes".tr()
                                  : "globalsno".tr();
                            },
                            children: [
                              const Text("globalsyes").tr(),
                              const Text("globalsno").tr(),
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
                                if (prevscrollcontroller.selectedItem == 0) {
                                  order.value = order.value
                                      .copyWith(previous_accidents: 0);
                                  prevcontroller.text = "globalsyes".tr();
                                }
                                if (prevcontroller.text == "globalsyes".tr()) {
                                  await context.router.pop();
                                  return showDialog(
                                    context: context,
                                    builder: (context) {
                                      return SimpleDialog(
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Image.asset(
                                                "assets/logo.png",
                                                scale: 1.5,
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                'crashdesc',
                                              ).tr(),
                                            ],
                                          ),
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40.0, right: 40.0),
                                              child: const Text("crash").tr(),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40.0, right: 40.0),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  context.router.pop();
                                                },
                                                child: Container(
                                                  color: Colors.black,
                                                  width: 100,
                                                  height: 60,
                                                  child: Center(
                                                      child: const Text(
                                                    "confirm",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ).tr()),
                                                ),
                                              ),
                                            )
                                          ]);
                                    },
                                  );
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
        formkey: carformkey.value,
        key: const Key("1"),
      ),
      OrderOffersContainer(
        offers: offers.value,
        key: const Key("2"),
      ),
      CarPictiresContainer(
        image0: File(frontimage.value),
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
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image != null) {
                              frontimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.camera),
                          onPressed: () async {
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.camera);
                            if (image != null) {
                              frontimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                      ]),
                ],
              );
            },
          );
        },
        image1: File(rightimage.value),
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
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image != null) {
                              rightimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.camera),
                          onPressed: () async {
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.camera);
                            if (image != null) {
                              rightimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                      ]),
                ],
              );
            },
          );
        },
        image2: File(leftimage.value),
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
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image != null) {
                              leftimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.camera),
                          onPressed: () async {
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.camera);
                            if (image != null) {
                              leftimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                      ]),
                ],
              );
            },
          );
        },
        image3: File(backimage.value),
        function3: () async {
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
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            if (image != null) {
                              backimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.camera),
                          onPressed: () async {
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.camera);
                            if (image != null) {
                              backimage.value = image.path;
                            }
                            context.router.pop();
                          },
                        ),
                      ]),
                ],
              );
            },
          );
        },
        key: const Key("3"),
      ),
      CarIdContainer(
        images1: _images1.value,
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
                            if (imageCount.value < 2) {
                              for (int i = imageCount.value; i < 2; i++) {
                                final pickedFile = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                if (pickedFile != null) {
                                  imageCount.value++;

                                  print(pickedFile.path);
                                  _images.value.add(pickedFile.path);
                                  print(_images);
                                }
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: const Text("contact").tr()));
                            }
                            context.router.pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.camera),
                          onPressed: () async {
                            if (imageCount.value < 2) {
                              for (int i = imageCount.value; i < 2; i++) {
                                final pickedFile = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                if (pickedFile != null) {
                                  imageCount.value++;
                                  print(pickedFile.path);
                                  _images.value.add(pickedFile.path);
                                  print(_images);
                                }
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: const Text("contact").tr()));
                            }
                            context.router.pop();
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
                              for (int i = imageCount1.value; i < 2; i++) {
                                final pickedFile = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                if (pickedFile != null) {
                                  imageCount1.value++;

                                  print(pickedFile.path);
                                  _images1.value.add(pickedFile.path);
                                  print(_images1);
                                }
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: const Text("contact").tr()));
                            }
                            context.router.pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.camera),
                          onPressed: () async {
                            if (imageCount1.value < 2) {
                              for (int i = imageCount1.value; i < 2; i++) {
                                final pickedFile = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                if (pickedFile != null) {
                                  imageCount1.value++;
                                  print(pickedFile.path);
                                  _images1.value.add(pickedFile.path);
                                  print(_images1);
                                }
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: const Text("contact").tr()));
                            }
                            context.router.pop();
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
              backgroundColor: Colors.white,
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
                            name: "vehicle".tr(),
                            description: "vehicledes".tr(),
                            icon: "assets/car.svg",
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
                                    stepperList: motorstepperData,
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
                                          print("hello");
                                          await car.delete("motorid");
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
                                              if (carformkey.value.currentState!
                                                  .validate()) {
                                                await ref
                                                    .read(
                                                        motorgetOffersProvider)
                                                    .execute(
                                                        MotorGetOffersUseCaseInput(
                                                      estimatedcarprice: order
                                                          .value
                                                          .estimated_car_price,
                                                      token: token,
                                                      vehiclemodelid:
                                                          car.get("carmodel"),
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
                                            } else if (index.value == 1) {
                                              if (car.get("motorid") != null) {
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
                                              if (frontimage.value != "" &&
                                                  backimage.value != "" &&
                                                  leftimage.value != "" &&
                                                  rightimage.value != "") {
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
                                                            "picupload".tr())));
                                              }
                                            } else if (index.value == 3) {
                                              if (_images.value.length == 2 &&
                                                  _images1.value.length == 2) {
                                                await Future.delayed(
                                                    const Duration(seconds: 1),
                                                    (() {
                                                  order.value = order.value
                                                      .copyWith(
                                                          car_year: car
                                                              .get("caryear"));

                                                  order.value = order.value
                                                      .copyWith(
                                                          start_date: car.get(
                                                              "carsstartdate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          end_date: car.get(
                                                              "carenddate"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          motor_insurance_id:
                                                              car.get(
                                                                  "motorid"));
                                                  order.value = order.value
                                                      .copyWith(
                                                          vehicle_model_id: car
                                                              .get("carmodel"));
                                                }));
                                                final MotorOffersModel
                                                    offersModel = offers.value
                                                        .firstWhere((element) =>
                                                            element.id ==
                                                            car.get("motorid"));

                                                showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  isDismissible: true,
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return StatefulBuilder(
                                                      builder:
                                                          (context, setState) {
                                                        return MyWidget(
                                                          ordering:
                                                              isordering.value,
                                                          function: () {
                                                            isordering.value =
                                                                true;
                                                            ref
                                                                .read(
                                                                    motorplaceOrderProvider)
                                                                .execute(MotorPlaceOrderUseCaseInput(
                                                                    motorOrder:
                                                                        order
                                                                            .value,
                                                                    token:
                                                                        token,
                                                                    addons:
                                                                        car.get("addon") ??
                                                                            ""))
                                                                .then((value) =>
                                                                    value.fold(
                                                                        (l) =>
                                                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("contact").tr())),
                                                                        (r) async {
                                                                      MotorOrderDoneModel
                                                                          orderdone =
                                                                          r;
                                                                      final List<
                                                                              String>
                                                                          hello =
                                                                          images +
                                                                              _images1.value +
                                                                              _images.value;
                                                                      for (var element
                                                                          in hello) {
                                                                        ref.read(motorattachfileProvider).execute(MotorAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) =>
                                                                            value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("contact").tr())),
                                                                                (r) async {
                                                                              if (element == images.last) {
                                                                                await context.router.pop();
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
                                                                                                await context.router.replaceAll([
                                                                                                  const HomeScreen()
                                                                                                ]);
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
