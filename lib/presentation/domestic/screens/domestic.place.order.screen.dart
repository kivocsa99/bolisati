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
import 'package:bolisati/domain/api/travel/model/travelmodel.dart';
import 'package:bolisati/presentation/vehicle/widgets/bottomsheetcontainer.dart';
import 'package:bolisati/presentation/vehicle/widgets/carpersonalidcontainer.dart';
import 'package:bolisati/presentation/vehicle/widgets/ordersofferscontainer.dart';
import 'package:bolisati/presentation/widgets/back_insuarance_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
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

import '../widgets/domesticinformationcontainer.dart';
import '../widgets/domesticuploadcontainer.dart';

class DomesticPlaceOrderScreen extends HookConsumerWidget {
  const DomesticPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final order = useState(const MotorOrderModel());
    final carformkey = useState(GlobalKey<FormState>());
    final index = useState(0);
    final offers = useState<List<MotorOffersModel>>([]);
    final Box setting = Hive.box("setting");
    final Box car = Hive.box("domestic");
    final nameController = useTextEditingController();
    final yearController = useTextEditingController();
    final brandController = useTextEditingController();
    final modelController = useTextEditingController();
    final valueController = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();
    final frontimage = useState("");
    final leftimage = useState("");
    final rightimage = useState("");
    final backimage = useState("");
    final idback = useState("");
    final idfront = useState("");
    final registerback = useState("");
    final registerfront = useState("");
    List<String> images = [
      frontimage.value,
      backimage.value,
      leftimage.value,
      rightimage.value,
      idback.value,
      idfront.value,
      registerback.value,
      registerfront.value,
    ];
    List<Widget> cases = [
      DomesticInformationContainer(
        startdatecontroller: startController,
        enddatecontroller: endController,
        yearcontroller: yearController,
        carbrandcontroller: brandController,
        carmodelcontroller: modelController,
        valuecontroller: valueController,
        namecontroller: nameController,
        name: (value) {
          order.value = order.value.copyWith(name: value);
        },
        fueltype: (value) =>
            order.value = order.value.copyWith(fuel_type: value),
        value: (value) {
          var myInt = int.parse(value!);
          order.value = order.value.copyWith(estimated_car_price: myInt);
        },
        perviosaccidents: (value) {
          order.value = order.value
              .copyWith(previous_accidents: value == "False" ? 1 : 0);
        },
        formkey: carformkey.value,
        key: const Key("1"),
      ),
      OrderOffersContainer(
        offers: offers.value,
        key: Key("2"),
      ),
      CarIdContainer(
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
                            name: "Vehicle",
                            description:
                                "Protect your vehicle\nin case of accidents.",
                            icon: const Icon(
                              FontAwesomeIcons.car,
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
                                        child: const Center(
                                            child: Text(
                                          "Back",
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
                                                                .showSnackBar(
                                                                    SnackBar(
                                                                        content:
                                                                            Text(l.toString()))),
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
                                                car.get("motorid") != null) {
                                              final isLaseIndex = index.value ==
                                                  cases.length - 1;
                                              index.value = isLaseIndex
                                                  ? 0
                                                  : index.value + 1;
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
                                                    .showSnackBar(const SnackBar(
                                                        content: Text(
                                                            "please Upload all of the pictures")));
                                              }
                                            } else if (index.value == 3) {
                                              if (registerfront.value != "" &&
                                                  registerback.value != "" &&
                                                  idback.value != "" &&
                                                  idfront.value != "") {
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
                                                          function: () {
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
                                                                        (l) => ScaffoldMessenger.of(context)
                                                                            .showSnackBar(SnackBar(content: Text(l.toString()))),
                                                                        (r) async {
                                                                      MotorOrderDoneModel
                                                                          orderdone =
                                                                          r;
                                                                      for (var element
                                                                          in images) {
                                                                        ref.read(motorattachfileProvider).execute(MotorAttachFileUseCaseInput(token: token, orderid: orderdone.id, file: File(element))).then((value) => value.fold(
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
                                                                              const SnackBar(content: Text("Your Order Have Been Placed")));
                                                                      await context
                                                                          .router
                                                                          .replaceAll([
                                                                        const HomeScreen()
                                                                      ]);
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
                                                  .showSnackBar(const SnackBar(
                                                      content: Text(
                                                          "please Upload all of the pictures")));
                                            }
                                          },
                                          child: Container(
                                            color: Colors.black,
                                            width: 175,
                                            height: 60,
                                            child: Center(
                                                child: Text(
                                              index.value != 3
                                                  ? "Next"
                                                  : "Confirm",
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
