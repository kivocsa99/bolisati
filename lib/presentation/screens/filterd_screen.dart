import 'package:auto_route/auto_route.dart';
import 'package:bolisati/domain/api/orders/petorders/petordermodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/adapters.dart';

import '../../constants.dart';
import '../../domain/api/orders/domesticworkerorders/domesticworkersmodel.dart';
import '../../domain/api/orders/medicalorders/medicalordermodel.dart';
import '../../domain/api/orders/motororders/motorordermodel.dart';
import '../../domain/api/orders/personalaccidentorders/personalaccidentordermodel.dart';
import '../../domain/api/orders/travelorders/travelordermodel.dart';
import '../../router/app_route.gr.dart';
import '../widgets/horizantal_user_insurance_container.dart';

class FilteredScreen extends HookWidget {
  final List<dynamic>? motor;
  final List<dynamic>? medical;
  final List<dynamic>? travel;
  final List<dynamic>? pet;
  final List<dynamic>? domestic;
  final List<dynamic>? personal;
  const FilteredScreen(
      {super.key,
      this.motor,
      this.medical,
      this.travel,
      this.pet,
      this.domestic,
      this.personal});

  @override
  Widget build(BuildContext context) {
    List<String> years = [];
    int currentYear = DateTime.now().year;
    for (int i = currentYear; i > currentYear - 6; i--) {
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
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: motor!.isEmpty &&
                            medical!.isEmpty &&
                            pet!.isEmpty &&
                            domestic!.isEmpty &&
                            travel!.isEmpty &&
                            personal!.isEmpty
                        ? Column(
                            children: [
                              Center(
                                child: const Text("noorder").tr(),
                              )
                            ],
                          )
                        : Column(
                            children: [
                              motor!.isEmpty
                                  ? ExpansionTile(
                                      title: const Text("vehicle").tr(),
                                      children: [
                                        SizedBox(
                                          height: 300,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: motor!.isEmpty
                                                ? 1
                                                : motor!.length,
                                            itemBuilder: (context, index) {
                                              MotorOrderModel? e =
                                                  motor!.isEmpty
                                                      ? null
                                                      : motor![index];

                                              return motor!.isEmpty
                                                  ? Center(
                                                      child:
                                                          const Text("noorder")
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
                                    )
                                  : const SizedBox.shrink(),
                              medical!.isEmpty
                                  ? ExpansionTile(
                                      title: const Text("medical").tr(),
                                      children: [
                                        SizedBox(
                                          height: 300,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: medical!.isEmpty
                                                ? 1
                                                : medical!.length,
                                            itemBuilder: (context, index) {
                                              MedicalOrderModel? e =
                                                  medical!.isEmpty
                                                      ? null
                                                      : medical![index];

                                              return medical!.isEmpty
                                                  ? Center(
                                                      child:
                                                          const Text("noorder")
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
                                                      icon:
                                                          "assets/medical.svg",
                                                    );
                                            },
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox.shrink(),
                              travel!.isEmpty
                                  ? ExpansionTile(
                                      title: const Text("travel").tr(),
                                      children: [
                                        SizedBox(
                                          height: 300,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: travel!.isEmpty
                                                ? 1
                                                : travel!.length,
                                            itemBuilder: (context, index) {
                                              TravelOrderModel? e =
                                                  travel!.isEmpty
                                                      ? null
                                                      : travel![index];
                                              return travel!.isEmpty
                                                  ? Center(
                                                      child:
                                                          const Text("noorder")
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
                                    )
                                  : const SizedBox.shrink(),
                              pet!.isEmpty
                                  ? ExpansionTile(
                                      title: const Text("pet").tr(),
                                      children: [
                                        SizedBox(
                                          height: 300,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount:
                                                pet!.isEmpty ? 1 : pet!.length,
                                            itemBuilder: (context, index) {
                                              PetOrderModel? e = pet!.isEmpty
                                                  ? null
                                                  : pet![index];
                                              return pet!.isEmpty
                                                  ? Center(
                                                      child:
                                                          const Text("noorder")
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
                                    )
                                  : const SizedBox.shrink(),
                              domestic!.isEmpty
                                  ? ExpansionTile(
                                      title: const Text("domestic").tr(),
                                      children: [
                                        SizedBox(
                                          height: 300,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: domestic!.isEmpty
                                                ? 1
                                                : domestic!.length,
                                            itemBuilder: (context, index) {
                                              DomesticWorkersOrderModel? e =
                                                  domestic!.isEmpty
                                                      ? null
                                                      : domestic![index];
                                              return domestic!.isEmpty
                                                  ? Center(
                                                      child:
                                                          const Text("noorder")
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
                                                      icon:
                                                          "assets/domestic.svg",
                                                    );
                                            },
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox.shrink(),
                              personal!.isEmpty
                                  ? ExpansionTile(
                                      title: const Text("personal").tr(),
                                      children: [
                                        SizedBox(
                                          height: 300,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: personal!.isEmpty
                                                ? 1
                                                : personal!.length,
                                            itemBuilder: (context, index) {
                                              PersonalAccidentOrderModel? e =
                                                  personal!.isEmpty
                                                      ? null
                                                      : personal![index];
                                              return personal!.isEmpty
                                                  ? Center(
                                                      child:
                                                          const Text("noorder")
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
                                                      icon:
                                                          "assets/personal.svg",
                                                    );
                                            },
                                          ),
                                        )
                                      ],
                                    )
                                  : const SizedBox.shrink(),
                            ],
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
