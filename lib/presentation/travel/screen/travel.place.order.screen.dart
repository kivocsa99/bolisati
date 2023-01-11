import 'dart:io';

import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/travel/attachfile/attach.file.use.case.dart';
import 'package:bolisati/application/travel/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/application/travel/getoffers/get.offers.use.case.dart';
import 'package:bolisati/application/travel/getoffers/get.offers.use.case.input.dart';
import 'package:bolisati/application/travel/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/travel/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/orders/travelorders/travelordermodel.dart';
import 'package:bolisati/domain/api/travel/model/travelorderdonemodel.dart';
import 'package:bolisati/presentation/travel/widgets/travelbottomsheet.dart';
import 'package:bolisati/presentation/travel/widgets/travelinformationcontainer.dart';
import 'package:bolisati/presentation/travel/widgets/travelordercontainer.dart';
import 'package:bolisati/presentation/travel/widgets/traveluploadpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../domain/api/travel/model/travelmodel.dart';
import '../../../router/app_route.gr.dart';
import '../../widgets/back_insuarance_container.dart';

class TravelPlaceOrderScreen extends HookConsumerWidget {
  const TravelPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final regioncontroller = useTextEditingController();
    final yearcontroller = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();
    final periodcontroller = useTextEditingController();

    final order = useState(const TravelOrderModel());
    final offer = useState<List<TravelOffersModel>>([]);
    final travelkey = useState(GlobalKey<FormState>());
    final Box setting = Hive.box("setting");
    final Box travel = Hive.box("travel");
    final idback = useState("");
    final idfront = useState("");
    final passportback = useState("");
    final passportfront = useState("");
    List<String> images = [
      idback.value,
      idfront.value,
      passportback.value,
      passportfront.value,
    ];
    List<Widget> cases = [
      TravelInformationContainer(
        namecontroller: nameController,
        name: (value) => order.value = order.value.copyWith(name: value),
        regioncontroller: regioncontroller,
        yearcontroller: yearcontroller,
        startdatecontroller: startController,
        enddatecontroller: endController,
        period: (value) => order.value =
            order.value.copyWith(period_of_stay: int.parse(value!)),
        periodcontroller: periodcontroller,
        formkey: travelkey.value,
      ),
      TravelOrderOffersContainer(
        offers: offer.value,
      ),
      TravelUploadPage(
        image0: File(passportfront.value),
        image1: File(passportback.value),
        image2: File(idfront.value),
        image3: File(idback.value),
        function0: () async {
          final pictures = await ImagePicker().pickMultiImage();
          if (pictures.isNotEmpty && pictures.length == 2) {
            passportback.value = pictures[0].path;
            passportfront.value = pictures[1].path;
          }
        },
        function1: () async {
          final pictures = await ImagePicker().pickMultiImage();
          if (pictures.isNotEmpty && pictures.length == 2) {
            idfront.value = pictures[0].path;
            idback.value = pictures[1].path;
          }
        },
      )
    ];
    final index = useState(0);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xFFF5F5F7),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: SingleChildScrollView(
            reverse: true, // this is new
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackInsuranceContainer(
                  name: "Travel",
                  description:
                      "Protect your self abroad in\ncase of accidents.",
                  icon: const Icon(
                    FontAwesomeIcons.plane,
                    color: travelcolor,
                  ),
                  function: () => context.router.pop(),
                  containercolor: travelcontainer,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnotherStepper(
                          scrollPhysics: const BouncingScrollPhysics(),
                          activeIndex: index.value,
                          stepperList: travelstepperdata,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (index.value != 0) {
                                index.value = index.value - 1;
                              }
                            },
                            child: Container(
                              color:
                                  index.value == 0 ? Colors.grey : Colors.black,
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
                                print(token);
                                return GestureDetector(
                                  onTap: () async {
                                    if (index.value == 0) {
                                      if (travelkey.value.currentState!
                                          .validate()) {
                                        await ref
                                            .read(travelgetOffersProvider)
                                            .execute(
                                                TravelGetOffersUseCaseInput(
                                                    regionid:
                                                        travel.get("region"),
                                                    token: token,
                                                    age: travel.get("age"),
                                                    periodindays: order
                                                        .value.period_of_stay))
                                            .then((value) => value.fold(
                                                    (l) => ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                            content: Text(
                                                                l.toString()))),
                                                    (r) {
                                                  offer.value = r;

                                                  final isLaseIndex =
                                                      index.value ==
                                                          cases.length - 1;
                                                  index.value = isLaseIndex
                                                      ? 0
                                                      : index.value + 1;
                                                }));
                                      }
                                    } else if (index.value == 1 &&
                                        travel.get("travelid") != null) {
                                      final isLaseIndex =
                                          index.value == cases.length - 1;
                                      index.value =
                                          isLaseIndex ? 0 : index.value + 1;
                                    } else if (index.value == 2) {
                                      if (passportback.value != "" &&
                                          passportfront.value != "" &&
                                          idback.value != "" &&
                                          idfront.value != "") {
                                        await Future.delayed(
                                            const Duration(seconds: 1), (() {
                                          order.value = order.value.copyWith(
                                              travel_insurance_id:
                                                  travel.get("travelid"));

                                          order.value = order.value.copyWith(
                                              start_date:
                                                  travel.get("startdate"));
                                          order.value = order.value.copyWith(
                                              end_date: travel.get("enddate"));
                                          order.value = order.value.copyWith(
                                              destination:
                                                  travel.get("regionname"));
                                          order.value = order.value.copyWith(
                                              birthdate:
                                                  travel.get("birthdate"));
                                        }));
                                        print(order.value);
                                        final TravelOffersModel offersModel =
                                            offer.value.firstWhere((element) =>
                                                element.id ==
                                                travel.get("travelid"));

                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          isDismissible: true,
                                          context: context,
                                          builder: (BuildContext context) {
                                            return StatefulBuilder(
                                              builder: (context, setState) {
                                                return TravelBottomSheet(
                                                  function: () {
                                                    ref
                                                        .read(
                                                            travelplaceorderProvider)
                                                        .execute(TravelPlaceOrderUseCaseInput(
                                                            travelOrder:
                                                                order.value,
                                                            token: token,
                                                            addons: travel.get(
                                                                    "addon") ??
                                                                ""))
                                                        .then((value) => value.fold(
                                                                (l) => ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                        SnackBar(content: Text(l.toString()))),
                                                                (r) async {
                                                              TravelOrderDoneModel
                                                                  orderdone = r;
                                                              print(orderdone);
                                                              for (var element
                                                                  in images) {
                                                                ref
                                                                    .read(
                                                                        travelattachfileProvider)
                                                                    .execute(TravelAttachFileUseCaseInput(
                                                                        token:
                                                                            token,
                                                                        orderid: orderdone
                                                                            .id,
                                                                        file: File(
                                                                            element)))
                                                                    .then((value) => value.fold(
                                                                        (l) => print(
                                                                            l),
                                                                        (r) => print(
                                                                            r)));
                                                              }
                                                              context.router
                                                                  .pop();
                                                              ScaffoldMessenger
                                                                      .of(
                                                                          context)
                                                                  .showSnackBar(
                                                                      const SnackBar(
                                                                          content:
                                                                              Text("Your Order Have Been Placed")));
                                                              await context
                                                                  .router
                                                                  .replaceAll([
                                                                const HomeScreen()
                                                              ]);
                                                            }));
                                                  },
                                                  offerModel: offersModel,
                                                );
                                              },
                                            );
                                          },
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                                content: Text(
                                                    "please Upload all of the pictures")));
                                      }
                                    }
                                  },
                                  child: Container(
                                    color: Colors.black,
                                    width: 175,
                                    height: 60,
                                    child: Center(
                                        child: Text(
                                      index.value != 2 ? "Next" : "Confirm",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    )),
                                  ),
                                );
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
