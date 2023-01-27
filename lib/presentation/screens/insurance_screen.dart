import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InsuranceScreen extends StatelessWidget {
  final dynamic model;
  const InsuranceScreen({super.key, this.model});

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
                    "insuranceinfo".tr(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 80,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
