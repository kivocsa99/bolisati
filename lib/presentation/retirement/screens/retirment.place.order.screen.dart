import 'dart:io';

import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:auto_route/auto_route.dart';

import 'package:bolisati/application/retirment/use_cases/attachfile/attach.file.use.case.dart';
import 'package:bolisati/application/retirment/use_cases/attachfile/attach.file.use.case.input.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';

import 'package:bolisati/domain/api/retirment/model/retirmentdonemodel.dart';
import 'package:bolisati/presentation/retirement/widgets/retirmentbottomsheet.dart';
import 'package:bolisati/presentation/retirement/widgets/retirmentuploadpage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../application/retirment/use_cases/placeorder/place.order.use.case.dart';
import '../../../application/retirment/use_cases/placeorder/place.order.use.case.input.dart';
import '../../../router/app_route.gr.dart';
import '../../widgets/back_insuarance_container.dart';
import '../widgets/retirmentinformationcontainer.dart';

class RetirmentPlaceOrderScreen extends HookConsumerWidget {
  const RetirmentPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameController = useTextEditingController();
    final regioncontroller = useTextEditingController();
    final yearcontroller = useTextEditingController();
    final monthly = useTextEditingController();
    final retirementage = useTextEditingController();

    final periodcontroller = useTextEditingController();

    final order = useState(const RetirementOrderModel());
    final retirementkey = useState(GlobalKey<FormState>());
    final Box setting = Hive.box("setting");
    final Box retirement = Hive.box("retirement");
    final idback = useState("");
    final idfront = useState("");
    final passportback = useState("");
    final passportfront = useState("");
    List<String> images = [
      idback.value,
      idfront.value,
    ];
    List<Widget> cases = [
      ReitirementInformationContainer(
        namecontroller: nameController,
        name: (value) => order.value = order.value.copyWith(name: value),
        yearcontroller: yearcontroller,
        monthly: (value) =>
            order.value = order.value.copyWith(monthly_fee: int.parse(value!)),
        monthlycontroller: monthly,
        formkey: retirementkey.value,
      ),
      RetirementUploadPage(
        image0: File(passportfront.value),
        image1: File(passportback.value),
        function0: () async {
          final pictures = await ImagePicker().pickMultiImage();
          if (pictures.isNotEmpty && pictures.length == 2) {
            passportback.value = pictures[0].path;
            passportfront.value = pictures[1].path;
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
                  name: "Retirement",
                  description: "Your best Retirement Solution",
                  icon: const Icon(
                    FontAwesomeIcons.personCane,
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
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnotherStepper(
                          scrollPhysics: const BouncingScrollPhysics(),
                          activeIndex: index.value,
                          stepperList: retirementstepperdata,
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
                              return GestureDetector(onTap: () async {
                                if (index.value == 0) {
                                  if (retirementkey.value.currentState!
                                      .validate()) {}
                                } else if (index.value == 1) {
                                  final isLaseIndex =
                                      index.value == cases.length - 1;
                                  index.value =
                                      isLaseIndex ? 0 : index.value + 1;
                                } else if (index.value == 2) {
                                  if (passportback.value != "" &&
                                      passportfront.value != "" &&
                                      idback.value != "" &&
                                      idfront.value != "") {}

                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    isDismissible: true,
                                    context: context,
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(
                                        builder: (context, setState) {
                                          return RetirementBottomSheet(
                                            function: () {
                                              ref
                                                  .read(
                                                      retirmentplaceOrderProvider)
                                                  .execute(
                                                      RetirmentPlaceOrderUseCaseInput(
                                                    retirementOrderModel:
                                                        order.value,
                                                    token: token,
                                                  ))
                                                  .then((value) => value.fold(
                                                          (l) => ScaffoldMessenger
                                                                  .of(context)
                                                              .showSnackBar(SnackBar(
                                                                  content: Text(
                                                                      l.toString()))),
                                                          (r) async {
                                                        RetirmentDoneModel
                                                            orderdone = r;
                                                        print(orderdone);
                                                        for (var element
                                                            in images) {
                                                          ref
                                                              .read(
                                                                  retirmentattachplaceOrderProvider)
                                                              .execute(RetirmentAttachFileUseCaseInput(
                                                                  token: token,
                                                                  orderid:
                                                                      orderdone
                                                                          .id,
                                                                  file: File(
                                                                      element)))
                                                              .then((value) =>
                                                                  value.fold(
                                                                      (l) =>
                                                                          print(
                                                                              l),
                                                                      (r) => print(
                                                                          r)));
                                                        }
                                                        context.router.pop();
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                                const SnackBar(
                                                                    content: Text(
                                                                        "Your Order Have Been Placed")));
                                                        await context.router
                                                            .replaceAll([
                                                          const HomeScreen()
                                                        ]);
                                                      }));
                                            },
                                          );
                                        },
                                      );
                                    },
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "please Upload all of the pictures")));
                                }
                              });
                            },
                            child: Container(
                              color: Colors.black,
                              width: 175,
                              height: 60,
                              child: Center(
                                  child: Text(
                                index.value != 2 ? "Next" : "Confirm",
                                style: const TextStyle(color: Colors.white),
                              )),
                            ),
                          )
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
