import 'package:auto_route/auto_route.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/presentation/widgets/vertical_insurance_type_container.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
          child: Column(
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
                containercolor: medicalcontainer,
                iconcolor: medicalcolor,
                icon: const Icon(FontAwesomeIcons.houseMedical),
                insuranceName: "Medical",
                insuranceDescreption: "",
                price: "",
                function: () =>
                    context.router.push(const MedicalPlaceOrderScreen()),
              ),
              const SizedBox(
                height: 10,
              ),
              VerticalInsurance(
                containercolor: travelcontainer,
                iconcolor: travelcolor,
                icon: const Icon(FontAwesomeIcons.car),
                insuranceName: "Travel",
                insuranceDescreption: "",
                price: "",
                function: () =>
                    context.router.push(const TravelPlaceOrderScreen()),
              ),
              const SizedBox(
                height: 10,
              ),
              VerticalInsurance(
                containercolor: carcontainer,
                iconcolor: carcolor,
                icon: const Icon(FontAwesomeIcons.car),
                insuranceName: "Vehicle",
                insuranceDescreption: "",
                price: "",
                function: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              VerticalInsurance(
                containercolor: carcontainer,
                iconcolor: carcolor,
                icon: Icon(FontAwesomeIcons.car),
                insuranceName: "Domestic",
                insuranceDescreption: "",
                price: "",
                function: () =>
                    context.router.push(const DomesticPlaceOrderScreen()),
              ),
              const SizedBox(
                height: 10,
              ),
              VerticalInsurance(
                containercolor: carcontainer,
                iconcolor: carcolor,
                icon: const Icon(FontAwesomeIcons.personCane),
                insuranceName: "Retirement",
                insuranceDescreption: "",
                price: "",
                function: () =>
                    context.router.push(const RetirmentPlaceOrderScreen()),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
