// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/presentation/widgets/vertical_insurance_type_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserInsuranceListScreen extends HookWidget {
  const UserInsuranceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                left: MediaQuery.of(context).size.width / 2 - 130,
                top: 30,
                child: Image.asset(
                  "assets/bolisati.png",
                  color: Colors.black,
                ),
              ),
              Positioned(
                left: 52,
                top: 30,
                child: Image.asset(
                  "assets/logo.png",
                ),
              ),
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
                        icon: const Icon(FontAwesomeIcons.car),
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
                        icon: const Icon(FontAwesomeIcons.houseMedical),
                        insuranceName: "medical".tr(),
                        insuranceDescreption: "traveldes".tr(),
                        function: () => context.router
                            .push(const MedicalPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: const Icon(FontAwesomeIcons.plane),
                        insuranceName: "travel".tr(),
                        insuranceDescreption: "medicaldes".tr(),
                        function: () =>
                            context.router.push(const TravelPlaceOrderScreen()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      VerticalInsurance(
                        containercolor: carcontainer,
                        iconcolor: carcolor,
                        icon: const Icon(FontAwesomeIcons.cat),
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
                        icon: Icon(FontAwesomeIcons.briefcase),
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
                        icon: const Icon(FontAwesomeIcons.personCane),
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
                        icon: const Icon(FontAwesomeIcons.personFallingBurst),
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
                        icon: const Icon(FontAwesomeIcons.book),
                        insuranceName: "edu".tr(),
                        insuranceDescreption: "edudes".tr(),
                        function: () => context.router
                            .push(const PersonalPlaceOrderScreen()),
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
