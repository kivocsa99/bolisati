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
import 'package:easy_localization/easy_localization.dart';
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
    final order = useState(const TravelOrderModel());

    final nameController = useTextEditingController();
    final regioncontroller = useTextEditingController();
    final yearcontroller = useTextEditingController();
    final startController = useTextEditingController();
    final endController = useTextEditingController();
    final periodcontroller = useTextEditingController();

    final offer = useState<List<TravelOffersModel>>([]);
    final travelkey = useState(GlobalKey<FormState>());
    final Box setting = Hive.box("setting");
    final Box travel = Hive.box("travel");
    final idback = useState("");
    final idfront = useState("");
    final passportback = useState("");
    final passportfront = useState("");
    final startselecteddate = useState("");
    final endselecteddate = useState("");
    final imageCount = useState(0);
    final imageCount1 = useState(0);
    final _images = useState<List<String>>([]);
    final _images1 = useState<List<String>>([]);
    List<Widget> cases = [
      TravelInformationContainer(
        startchanged: (val) {
          startselecteddate.value = val!.toString();
          travel.put(
              "startdate", DateFormat("yyyy-MM-dd HH:mm:ss").format(val));
          startController.text = DateFormat("d/M/y").format(val);
          if (endselecteddate.value != "" && startselecteddate.value != "") {
            periodcontroller.text = DateTime.parse(endselecteddate.value)
                .difference(DateTime.parse(startselecteddate.value))
                .inDays
                .toString();
          }
        },
        endchanged: (val) {
          endselecteddate.value = val!.toString();

          travel.put("enddate", DateFormat("yyyy-MM-dd HH:mm:ss").format(val));

          endController.text = DateFormat("d/M/y").format(val);
          if (endselecteddate.value != "" && startselecteddate.value != "") {
            periodcontroller.text = DateTime.parse(endselecteddate.value)
                .difference(DateTime.parse(startselecteddate.value))
                .inDays
                .toString();
          }
        },
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
                                      content: const Text("picupload").tr()));
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
                                  _images.value.add(pickedFile.path);
                                }
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: const Text("picupload").tr()));
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
                  name: "travel".tr(),
                  description: "traveldes".tr(),
                  icon: "assets/travel.svg",
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
                            onTap: () async {
                              if (index.value == 1) {
                                await travel.delete("travelid");
                                index.value = index.value - 1;
                              } else if (index.value != 0) {
                                index.value = index.value - 1;
                              }
                            },
                            child: Container(
                              color:
                                  index.value == 0 ? Colors.grey : Colors.black,
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
                                      if (travelkey.value.currentState!
                                          .validate()) {
                                        await ref
                                            .read(travelgetOffersProvider)
                                            .execute(TravelGetOffersUseCaseInput(
                                                regionid: travel.get("region"),
                                                token: token,
                                                age: travel.get("age"),
                                                periodindays: int.parse(
                                                    periodcontroller.text)))
                                            .then((value) => value.fold(
                                                    (l) => ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                            content: const Text(
                                                                    "contact")
                                                                .tr())), (r) {
                                                  offer.value = r;

                                                  final isLaseIndex =
                                                      index.value ==
                                                          cases.length - 1;
                                                  index.value = isLaseIndex
                                                      ? 0
                                                      : index.value + 1;
                                                }));
                                      }
                                    } else if (index.value == 1) {
                                      if (travel.get("travelid") != null) {
                                        final isLaseIndex =
                                            index.value == cases.length - 1;
                                        index.value =
                                            isLaseIndex ? 0 : index.value + 1;
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text("offersdes".tr())));
                                      }
                                    } else if (index.value == 2) {
                                      if (_images.value.length == 2 &&
                                          _images1.value.length == 2) {
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
                                                  travel.get("country"));
                                          order.value = order.value.copyWith(
                                              birthdate:
                                                  travel.get("birthdate"));
                                        }));
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
                                                        .then((value) =>
                                                            value.fold(
                                                                (l) => ScaffoldMessenger.of(
                                                                        context)
                                                                    .showSnackBar(
                                                                        SnackBar(
                                                                            content:
                                                                                const Text("contact").tr())),
                                                                (r) async {
                                                              TravelOrderDoneModel
                                                                  orderdone = r;
                                                              final List<String>
                                                                  hello =
                                                                  _images.value +
                                                                      _images1
                                                                          .value;
                                                              for (var element
                                                                  in hello) {
                                                                ref
                                                                    .read(
                                                                        travelattachfileProvider)
                                                                    .execute(TravelAttachFileUseCaseInput(
                                                                        token:
                                                                            token,
                                                                        orderid:
                                                                            orderdone
                                                                                .id,
                                                                        file: File(
                                                                            element)))
                                                                    .then((value) =>
                                                                        value.fold(
                                                                            (l) =>
                                                                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("contact").tr())),
                                                                            (r) async {
                                                                          if (element ==
                                                                              hello.last) {
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
                                                  offerModel: offersModel,
                                                );
                                              },
                                            );
                                          },
                                        );
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text("picupload".tr())));
                                      }
                                    }
                                  },
                                  child: Container(
                                    color: Colors.black,
                                    width: 175,
                                    height: 60,
                                    child: Center(
                                        child: Text(
                                      index.value != 2 ? "next" : "confirm",
                                      style:
                                          const TextStyle(color: Colors.white),
                                    ).tr()),
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
