import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackInsuranceContainer extends HookWidget {
  final VoidCallback? function;
  final String? icon;
  final Color? containercolor;
  final String? name;
  final String? description;
  const BackInsuranceContainer(
      {super.key,
      this.function,
      this.description,
      this.name,
      this.containercolor,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 5,
            blurRadius: 25,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      height: 89,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            IconButton(
              onPressed: function,
              icon: Icon(
                context.locale.languageCode == "en"
                    ? Icons.arrow_back_ios_new
                    : FontAwesomeIcons.arrowRight,
                color: Colors.black,
              ),
              iconSize: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 56,
              width: 56,
              color: containercolor,
              child: Center(child: SvgPicture.asset(icon!)),
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      name!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    description!,
                    style: const TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
