import 'package:auto_route/auto_route.dart';
import 'package:bolisati/domain/api/orders/educationalorders/educationalordermodel.dart';
import 'package:bolisati/domain/api/orders/retirementorders/retirementordermodel.dart';
import 'package:bolisati/domain/api/orders/user.orders.model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/provider/user.repository.provider.dart';
import '../../constants.dart';
import '../../domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import '../../domain/api/orders/medicalorders/medicalordermodel.dart';
import '../../domain/api/orders/motororders/motorordermodel.dart';
import '../../domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';
import '../../domain/api/orders/petorders/petordermodel.dart';
import '../../domain/api/orders/travelorders/travelordermodel.dart';
import '../../router/app_route.gr.dart';
import '../widgets/horizantal_user_insurance_container.dart';

class UserInsuranceListScreen extends HookConsumerWidget {
  final UserOrdersModel? order;
  const UserInsuranceListScreen({super.key, this.order});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box setting = Hive.box("setting");
    final apitoken = setting.get('apitoken');
    final userOrderProvider = ref.watch(GetorderProvider(apitoken));
    final motor = useState<List<MotorOrderModel>>([]);
    final medical = useState<List<MedicalOrderModel>>([]);
    final travel = useState<List<TravelOrderModel>>([]);
    final pet = useState<List<PetOrderModel>>([]);
    final personal = useState<List<PersonalAccidentOrderModel>>([]);
    final domestic = useState<List<DomesticWorkersOrderModel>>([]);
    final retirement = useState<List<dynamic>>([]);
    final educational = useState<List<dynamic>>([]);
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    final selectedyear = useState(0);
    List<String> years = [];
    int currentYear = DateTime.now().year;
    for (int i = currentYear; i > currentYear - 3; i--) {
      years.add(i.toString());
    }
    final Box car = Hive.box("car");
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Stack(
            children: [
              context.locale.languageCode == "en"
                  ? Positioned(
                      left: 20,
                      top: 30,
                      child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new)))
                  : Positioned(
                      right: 20,
                      top: 30,
                      child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(FontAwesomeIcons.arrowRight))),
              Positioned(
                  left: context.locale.languageCode == "ar" ? 0 : 80,
                  right: context.locale.languageCode == "ar" ? 80 : 0,
                  top: 40,
                  child: Text(
                    "allins".tr(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              context.locale.languageCode == "ar"
                  ? Positioned(
                      left: 5,
                      top: 30,
                      child: IconButton(
                        icon: const Icon(FontAwesomeIcons.filter),
                        onPressed: () async {
                          FocusScope.of(context).unfocus();
                          await showCupertinoModalPopup(
                              context: context,
                              builder: (_) => Container(
                                    height: 250,
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 180,
                                          child: CupertinoPicker(
                                            scrollController: scrollcontroller,
                                            looping: false,
                                            itemExtent: 46,
                                            onSelectedItemChanged: (value) {
                                              car.put("filter", years[value]);
                                              selectedyear.value =
                                                  int.parse(years[value]);
                                            },
                                            children: List<Widget>.generate(
                                                years.length, (int index) {
                                              return Text(
                                                years[index],
                                                style: const TextStyle(
                                                    color:
                                                        CupertinoColors.black),
                                              );
                                            }),
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
                                                await context.router.pop();
                                                if (scrollcontroller
                                                        .selectedItem ==
                                                    0) {
                                                  car.put("filter", years[0]);
                                                  selectedyear.value =
                                                      int.parse(years[0]);
                                                }

                                                List hey1 = motor.value.isEmpty
                                                    ? []
                                                    : motor.value.where((item) {
                                                        DateTime date =
                                                            DateTime.parse(item
                                                                .start_date!);
                                                        return date.year ==
                                                            selectedyear.value;
                                                      }).toList();
                                                List hey2 = medical
                                                        .value.isEmpty
                                                    ? []
                                                    : medical.value
                                                        .where((item) {
                                                        print(item.start_date);
                                                        DateTime date =
                                                            DateTime.parse(item
                                                                .start_date!);
                                                        print(date.year);
                                                        return date.year ==
                                                            selectedyear.value;
                                                      }).toList();
                                                List hey3 = travel.value.isEmpty
                                                    ? []
                                                    : travel.value
                                                        .where((item) {
                                                        DateTime date =
                                                            DateTime.parse(item
                                                                .start_date!);
                                                        return date.year ==
                                                            selectedyear.value;
                                                      }).toList();
                                                List hey4 = pet.value.isEmpty
                                                    ? []
                                                    : pet.value.where((item) {
                                                        DateTime date =
                                                            DateTime.parse(item
                                                                .start_date!);
                                                        return date.year ==
                                                            selectedyear.value;
                                                      }).toList();
                                                List hey5 = personal
                                                        .value.isEmpty
                                                    ? []
                                                    : personal.value
                                                        .where((item) {
                                                        DateTime date =
                                                            DateTime.parse(item
                                                                .start_date!);
                                                        return date.year ==
                                                            selectedyear.value;
                                                      }).toList();
                                                List hey6 = domestic
                                                        .value.isEmpty
                                                    ? []
                                                    : domestic.value
                                                        .where((item) {
                                                        DateTime date =
                                                            DateTime.parse(item
                                                                .start_date!);
                                                        return date.year ==
                                                            selectedyear.value;
                                                      }).toList();

                                                if (context.mounted) {
                                                  context.router
                                                      .push(FilteredScreen(
                                                    motor: hey1,
                                                    medical: hey2,
                                                    travel: hey3,
                                                    pet: hey4,
                                                    personal: hey5,
                                                    domestic: hey6,
                                                  ));
                                                }
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                        },
                      ))
                  : Positioned(
                      left: 0,
                      top: 40,
                      child: Text(
                        "allins".tr(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: userOrderProvider.when(
                    data: (orders) {
                      return orders.fold(
                        (l) => const Text(
                          "contact",
                        ).tr(),
                        (r) {
                          UserOrdersModel orders = r;
                          motor.value = orders.MotorOrders!;
                          medical.value = orders.MedicalOrders!;
                          personal.value = orders.PersonalAccidentOrders!;
                          pet.value = orders.PetOrders!;
                          retirement.value = orders.RetirementOrders!;
                          travel.value = orders.TravelOrders!;
                          domestic.value = orders.DomesticWorkerOrders!;
                          educational.value = orders.EducationalOrders!;

                          return SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Column(
                                children: [
                                  ExpansionTile(
                                    title: const Text("vehicle").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: motor.value.isEmpty
                                              ? 1
                                              : motor.value.length,
                                          itemBuilder: (context, index) {
                                            MotorOrderModel? e =
                                                motor.value.isEmpty
                                                    ? null
                                                    : motor.value[index];

                                            return motor.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption:
                                                        "Exp ${DateFormat('MM/yyyy').format(DateTime.parse(e.end_date!))}",
                                                    price: e.status!.name!,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          MotorInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon: "assets/car.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: const Text("medical").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: medical.value.isEmpty
                                              ? 1
                                              : medical.value.length,
                                          itemBuilder: (context, index) {
                                            MedicalOrderModel? e =
                                                medical.value.isEmpty
                                                    ? null
                                                    : medical.value[index];

                                            return medical.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption:
                                                        "Exp ${DateFormat('MM/yyyy').format(DateTime.parse(e.end_date!))}",
                                                    price: e.status!.name!,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          MedicalInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon: "assets/medical.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: const Text("travel").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: travel.value.isEmpty
                                              ? 1
                                              : travel.value.length,
                                          itemBuilder: (context, index) {
                                            TravelOrderModel? e =
                                                travel.value.isEmpty
                                                    ? null
                                                    : travel.value[index];
                                            return travel.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption:
                                                        "Exp ${DateFormat('MM/yyyy').format(DateTime.parse(e.end_date!))}",
                                                    price: e.status!.name!,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          TravelInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon: "assets/travel.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: const Text("pet").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: pet.value.isEmpty
                                              ? 1
                                              : pet.value.length,
                                          itemBuilder: (context, index) {
                                            PetOrderModel? e = pet.value.isEmpty
                                                ? null
                                                : pet.value[index];
                                            return pet.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption:
                                                        "Exp ${DateFormat('MM/yyyy').format(DateTime.parse(e.end_date!))}",
                                                    price: e.status!.name,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          PetInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon: "assets/pet.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: const Text("domestic").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: domestic.value.isEmpty
                                              ? 1
                                              : domestic.value.length,
                                          itemBuilder: (context, index) {
                                            DomesticWorkersOrderModel? e =
                                                domestic.value.isEmpty
                                                    ? null
                                                    : domestic.value[index];
                                            return domestic.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption:
                                                        "Exp ${DateFormat('MM/yyyy').format(DateTime.parse(e.end_date!))}",
                                                    price: e.status!.name,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          DomesticInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon: "assets/domestic.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: const Text("retirement").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: retirement.value.isEmpty
                                              ? 1
                                              : retirement.value.length,
                                          itemBuilder: (context, index) {
                                            RetirementOrderModel? e =
                                                retirement.value.isEmpty
                                                    ? null
                                                    : retirement.value[index];
                                            return retirement.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption: "",
                                                    price: e.status!.name,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          RetirementInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon: "assets/ret.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: const Text("personal").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: personal.value.isEmpty
                                              ? 1
                                              : personal.value.length,
                                          itemBuilder: (context, index) {
                                            PersonalAccidentOrderModel? e =
                                                personal.value.isEmpty
                                                    ? null
                                                    : personal.value[index];
                                            return personal.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption:
                                                        "Exp ${DateFormat('MM/yyyy').format(DateTime.parse(e.end_date!))}",
                                                    price: e.status!.name,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          PersonalInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon: "assets/personal.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                  ExpansionTile(
                                    title: const Text("edu").tr(),
                                    children: [
                                      SizedBox(
                                        height: 300,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: educational.value.isEmpty
                                              ? 1
                                              : educational.value.length,
                                          itemBuilder: (context, index) {
                                            EducationalOrderModel? e =
                                                educational.value.isEmpty
                                                    ? null
                                                    : educational.value[index];

                                            return educational.value.isEmpty
                                                ? Center(
                                                    child: const Text("noorder")
                                                        .tr())
                                                : HorizantalUesrInsuranceContainer(
                                                    insuranceName: e!.name,
                                                    insuranceDescreption: "",
                                                    price: e.total == null
                                                        ? ""
                                                        : e.status!.name,
                                                    containercolor:
                                                        carcontainer,
                                                    function: () {
                                                      context.router.push(
                                                          EducationalInsuranceScreen(
                                                              model: e));
                                                    },
                                                    icon:
                                                        "assets/educational.svg",
                                                  );
                                          },
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    error: (error, stacktrace) {
                      return Center(child: Text(error.toString()));
                    },
                    loading: () => const SpinKitThreeInOut(
                          color: Colors.blue,
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
