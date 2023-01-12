import 'package:easy_localization/easy_localization.dart';
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
        "carinfo".tr(),
      ),
      subtitle: StepperText("carinfodes".tr(),
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
        "offers".tr(),
      ),
      subtitle: StepperText("offersdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("carpic".tr()),
      subtitle: StepperText("carpicdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
  StepperData(
      title: StepperText("carid".tr()),
      subtitle: StepperText("cariddes".tr(),
          textStyle: const TextStyle(fontSize: 9, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_4, color: Colors.white),
      )),
];
List<StepperData> petstepperData = [
  StepperData(
      title: StepperText(
        "petinfo".tr(),
      ),
      subtitle: StepperText("petinfodis".tr(),
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
        "offers".tr(),
      ),
      subtitle: StepperText("offersdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("petpic".tr()),
      subtitle: StepperText("petpicdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
];
List<StepperData> educationalstepperdata = [
  StepperData(
      title: StepperText(
        "personalinfo".tr(),
      ),
      subtitle: StepperText("personalinfodis".tr(),
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
        "childadd".tr(),
      ),
      subtitle: StepperText("childdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("idpic".tr()),
      subtitle: StepperText("idpicdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
];
List<StepperData> personalsteperdata = [
  StepperData(
      title: StepperText(
        "personalinfo".tr(),
      ),
      subtitle: StepperText("personalinfodis".tr(),
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
        "offers".tr(),
      ),
      subtitle: StepperText("offersdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("idpic".tr()),
      subtitle: StepperText("idpicdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
];
List<StepperData> medicalstepperdata = [
  StepperData(
      title: StepperText(
        "personalinfo".tr(),
      ),
      subtitle: StepperText("personalinfodis".tr(),
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
        "offers".tr(),
      ),
      subtitle: StepperText("offersdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("idpic".tr()),
      subtitle: StepperText("idpicdes".tr(),
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
        "personalinfo".tr(),
      ),
      subtitle: StepperText("personalinfodis".tr(),
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
        "offers".tr(),
      ),
      subtitle: StepperText("offersdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("idpic".tr()),
      subtitle: StepperText("idpicdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_3, color: Colors.white),
      )),
];
List<StepperData> domesticstepperdata = [
  StepperData(
      title: StepperText(
        "workerinfo".tr(),
      ),
      subtitle: StepperText("workerinfodis".tr(),
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
        "offers".tr(),
      ),
      subtitle: StepperText("offersdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
  StepperData(
      title: StepperText("idpic".tr()),
      subtitle: StepperText("idpicdes".tr(),
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
        "personalinfo".tr(),
      ),
      subtitle: StepperText("personalinfodis".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_one, color: Colors.white),
      )),
  StepperData(
      title: StepperText("idpic".tr()),
      subtitle: StepperText("idpicdes".tr(),
          textStyle: const TextStyle(fontSize: 10, color: Colors.grey)),
      iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.looks_two, color: Colors.white),
      )),
];
