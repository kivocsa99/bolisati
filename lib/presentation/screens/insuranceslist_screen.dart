// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/presentation/widgets/vertical_insurance_type_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InsuranceListScreen extends HookWidget {
  const InsuranceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 70,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/car.svg",
                        insuranceName: "vehicle".tr(),
                        insuranceDescreption: "vehicledes".tr(),
                        function: () =>
                            context.router.push(const MotorPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/medical.svg",
                        insuranceName: "medical".tr(),
                        insuranceDescreption: "medicaldes".tr(),
                        function: () => context.router
                            .push(const MedicalPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/travel.svg",
                        insuranceName: "travel".tr(),
                        insuranceDescreption: "traveldes".tr(),
                        function: () =>
                            context.router.push(const TravelPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/pet.svg",
                        insuranceName: "pet".tr(),
                        insuranceDescreption: "petdes".tr(),
                        function: () =>
                            context.router.push(PetPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/domestic.svg",
                        insuranceName: "domestic".tr(),
                        insuranceDescreption: "domesticdes".tr(),
                        function: () => context.router
                            .push(const DomesticPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/ret.svg",
                        insuranceName: "retirement".tr(),
                        insuranceDescreption: "insurancedes".tr(),
                        function: () => context.router
                            .push(const RetirmentPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/personal.svg",
                        insuranceName: "personal".tr(),
                        insuranceDescreption: "personaldes".tr(),
                        function: () => context.router
                            .push(const PersonalPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: "assets/educational.svg",
                        insuranceName: "edu".tr(),
                        insuranceDescreption: "edudes".tr(),
                        function: () => context.router
                            .push(const EducationalPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                    ],
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
