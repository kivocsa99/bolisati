import 'package:flutter/material.dart';

class HorizantalInsurance extends StatelessWidget {
  final Icon? icon;
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
        width: 150,
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
                child: Center(child: icon),
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
              Text(
                price!,
                style: const TextStyle(fontSize: 10, color: Color(0xFF1E90FF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
