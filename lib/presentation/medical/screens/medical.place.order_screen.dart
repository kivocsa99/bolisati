import 'package:another_stepper/another_stepper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/constants.dart';
import 'package:bolisati/presentation/widgets/back_insuarance_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedicalPlaceOrderScreen extends HookWidget {
  const MedicalPlaceOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
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
                  name: "Medical",
                  description: "Find the best fit\nfor your medical needs.",
                  icon: const Icon(
                    FontAwesomeIcons.houseMedical,
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
                          stepperList: medicalstepperdata,
                          stepperDirection: Axis.horizontal,
                          inverted: false,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 500),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (index.value == 0) {}
                        },
                        child: Container(
                          color: Colors.black,
                          width: 315,
                          height: 60,
                          child: const Center(
                              child: Text(
                            "Confirm",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
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
