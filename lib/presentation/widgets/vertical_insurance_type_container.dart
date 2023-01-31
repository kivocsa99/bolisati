
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerticalInsurance extends StatelessWidget {
  final String? icon;
  final String? insuranceName;
  final String? insuranceDescreption;
  final String? price;
  final VoidCallback? function;
  final Color? containercolor;
  final Color? iconcolor;

  const VerticalInsurance(
      {super.key,
      this.containercolor,
      this.iconcolor,
      this.icon,
      this.function,
      this.insuranceName,
      this.insuranceDescreption,
      this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: GestureDetector(
        onTap: function,
        child: Container(
          height: 100,
          width: double.infinity,
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
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Container(
                  height: 56,
                  width: 56,
                  color: containercolor,
                  child: Center(child: SvgPicture.asset(icon!)),
                ),
                const SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            insuranceName!,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          insuranceDescreption!,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
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
