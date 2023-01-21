import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HorizantalInsurance extends StatelessWidget {
  final String? icon;
  final String? insuranceName;
  final String? insuranceDescreption;
  final String? price;
  final VoidCallback? function;
  final Color? containercolor;
  const HorizantalInsurance(
      {super.key,
      this.function,
      this.containercolor,
      this.icon,
      this.insuranceName,
      this.insuranceDescreption,
      this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 202,
        width: 170,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            spreadRadius: 5,
            blurRadius: 25,
            offset: const Offset(0, 3),
          ),
        ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: containercolor,
                ),
                child: Center(child: SvgPicture.asset(icon!)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                insuranceName!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                insuranceDescreption!,
                style: const TextStyle(fontSize: 10),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
