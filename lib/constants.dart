import 'package:flutter/material.dart';
import 'package:another_stepper/dto/stepper_data.dart';

const carcontainer = Color(0xFFD5DDFE);
const carcolor = Color(0xFF3659E7);
const medicalcontainer = Color(0xFFD5FEFE);
const medicalcolor = Color(0xFF22C6C6);
const travelcontainer = Color(0xFFD6EEFF);
const travelcolor = Color(0xFF0898FF);

List<StepperData> motorstepperData = [
  StepperData(
      title: StepperText(
        "Car Information",
      ),
      subtitle: StepperText("please fill your car info.",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_one, color: Colors.white),
      )),
  StepperData(
      title: StepperText(
        "Offers",
      ),
      subtitle: StepperText("Please Select An Offer",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("Upload Car picturs"),
      subtitle: StepperText("Select and Upload car pic",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
  StepperData(
      title: StepperText("Upload Driver Licenses"),
      subtitle: StepperText("Select and upload ID & Driver license",
          textStyle: const TextStyle(fontSize: 9, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_4, color: Colors.white),
      )),
];
List<StepperData> medicalstepperdata = [
  StepperData(
      title: StepperText(
        "personal Information",
      ),
      subtitle: StepperText("please fill your personal info.",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_one, color: Colors.white),
      )),
  StepperData(
      title: StepperText(
        "Offers",
      ),
      subtitle: StepperText("Please Select An Offer",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("Upload ID picturs"),
      subtitle: StepperText("Select and Upload ID pic",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
];
List<StepperData> travelstepperdata = [
  StepperData(
      title: StepperText(
        "personal Information",
      ),
      subtitle: StepperText("please fill your personal info.",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_one, color: Colors.white),
      )),
  StepperData(
      title: StepperText(
        "Offers",
      ),
      subtitle: StepperText("Please Select An Offer",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("Upload ID picturs"),
      subtitle: StepperText("Select and Upload ID pic",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
];
List<StepperData> retirementstepperdata = [
  StepperData(
      title: StepperText(
        "personal Information",
      ),
      subtitle: StepperText("please fill your personal info.",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_one, color: Colors.white),
      )),
  StepperData(
      title: StepperText("Upload ID picturs"),
      subtitle: StepperText("Select and Upload ID pic",
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
];
