import 'package:flutter/material.dart';

class HorizantalUesrInsuranceContainer extends StatelessWidget {
  final Icon? icon;
  final String? insuranceName;
  final String? insuranceDescreption;
  final String? price;
  final VoidCallback? function;
  final Color? containercolor;
  final Color? iconcolor;
  const HorizantalUesrInsuranceContainer(
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
          height: 83,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
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
                  child: Center(child: icon),
                ),
                const SizedBox(
                  width: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          insuranceName!,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          insuranceDescreption!,
                          style:
                              const TextStyle(fontSize: 10, color: Colors.grey),
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
