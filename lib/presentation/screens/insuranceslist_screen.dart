// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/presentation/widgets/vertical_insurance_type_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
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
              Positioned(
                  left: 20,
                  top: 30,
                  child: IconButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: Icon(Icons.arrow_back_ios_new))),
              Positioned(
                  left: 80,
                  top: 40,
                  child: Text(
                    "All Insurances",
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
                        icon: const Icon(FontAwesomeIcons.car),
                        insuranceName: "Vehicle",
                        insuranceDescreption:
                            "Protect your vehicle\nin case of accidents.",
                        price: "from 8JOD/mo",
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
                        insuranceName: "Medical",
                        insuranceDescreption:
                            "Protect your self abroad in\ncase of accidents.",
                        price: "from 8JOD/mo",
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
                        insuranceName: "Travel",
                        insuranceDescreption:
                            "Find the best fit\nfor your medical needs.",
                        price: "from 8JOD/mo",
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
                        insuranceName: "Pet",
                        insuranceDescreption:
                            "Protect your Pet\nin case of accidents.",
                        price: "from 8JOD/mo",
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
                        insuranceName: "Domestic Worker",
                        insuranceDescreption:
                            "Protect your workers\nin case of accidents.",
                        price: "from 8JOD/mo",
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
                        insuranceName: "Retirement",
                        insuranceDescreption: "Protect your Future.",
                        price: "from 8JOD/mo",
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
                        insuranceName: "Personal Accidents",
                        insuranceDescreption:
                            "Protect your Self\nin case of accidents.",
                        price: "from 8JOD/mo",
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
                        insuranceName: "Educational",
                        insuranceDescreption: "Protect your Academic Life",
                        price: "from 8JOD/mo",
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
