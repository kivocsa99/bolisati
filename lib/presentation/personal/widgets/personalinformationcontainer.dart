import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/personal.repository.provider.dart';
import 'package:bolisati/domain/api/personal/model/personaloccupation.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PersonalInformationContainer extends HookWidget {
  final ValueChanged<String?>? name;
  final TextEditingController? namecontroller;
  final TextEditingController? yearcontroller;
  final TextEditingController? startdatecontroller;
  final TextEditingController? enddatecontroller;
  final TextEditingController? ocuupationcontroller;
  final TextEditingController? carmodelcontroller;
  final TextEditingController? valuecontroller;
  final TextEditingController? prevcontroller;
  final TextEditingController? personaltypecontroller;

  final ValueChanged<String?>? personaltype;
  final ValueChanged<String?>? value;
  final ValueChanged<String?>? gender;

  final VoidCallback? caryearfunction;
  final VoidCallback? ontap;
  final GlobalKey<FormState>? formkey;
  const PersonalInformationContainer(
      {super.key,
      this.caryearfunction,
      this.ontap,
      this.personaltypecontroller,
      this.formkey,
      this.name,
      this.yearcontroller,
      this.ocuupationcontroller,
      this.carmodelcontroller,
      this.valuecontroller,
      this.enddatecontroller,
      this.startdatecontroller,
      this.prevcontroller,
      this.namecontroller,
      this.personaltype,
      this.value,
      this.gender});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Form(
          key: formkey,
          child: Column(
            children: [
              CustomField(
                controller: namecontroller,
                type: TextInputType.text,
                readonly: false,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                onchanged: name,
                label: "insname".tr(),
                width: double.infinity,
              ),
              Ocuupation(
                controller: ocuupationcontroller,
                width: double.infinity,
              ),
              YearPicker(
                controller: yearcontroller,
              ),
              CustomField(
                formatter: [ThousandsSeparatorInputFormatter()],
                controller: valuecontroller,
                type: TextInputType.number,
                readonly: false,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                onchanged: value,
                label: "insuranceamount".tr(),
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: context.locale.languageCode == "ar"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: const Text(
                    "insuranceperiod",
                    style: TextStyle(fontSize: 20),
                  ).tr(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StartEndDate(
                    ontap: ontap,
                    startcontroller: startdatecontroller,
                    label: "startdate".tr(),
                    width: 150,
                  ),
                  EndDate(
                    endcontroller: enddatecontroller,
                    label: "enddate".tr(),
                    width: 150,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class CustomField extends StatelessWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final VoidCallback? function;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final String? label;
  final double? width;
  final bool? readonly;
  final String? initial;
  final TextInputType? type;
  const CustomField(
      {super.key,
      this.width,
      this.type,
      this.function,
      this.formatter,
      this.readonly,
      this.controller,
      this.label,
      this.onchanged,
      this.initial,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              width: 2,
            ),
          ),
        ),
        height: 80,
        width: width,
        child: TextFormField(
          inputFormatters: formatter,
          controller: controller,
          onTap: function,
          initialValue: initial,
          readOnly: readonly!,
          onChanged: onchanged,
          validator: validator,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
            errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
            contentPadding:
                const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
            filled: true,
            fillColor: Colors.blue[350],
            labelText: label,
            hintStyle: const TextStyle(
              color: Colors.black26,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          keyboardType: type,
        ),
      ),
    );
  }
}

class YearPicker extends HookWidget {
  final double? width;
  final String? selectedyear;
  final TextEditingController? controller;
  const YearPicker({super.key, this.width, this.controller, this.selectedyear});

  @override
  Widget build(BuildContext context) {
    final Box personal = Hive.box("personal");

    final selectedYear = useState("");
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
          height: 80,
          width: width,
          child: TextFormField(
            validator: RequiredValidator(errorText: "reqfield".tr()),
            readOnly: true,
            onTap: () async {
              FocusScope.of(context).unfocus();
              await showCupertinoModalPopup(
                  context: context,
                  builder: (_) => Container(
                        height: 250,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 180,
                              child: CupertinoDatePicker(
                                  dateOrder: DatePickerDateOrder.dmy,
                                  mode: CupertinoDatePickerMode.date,
                                  initialDateTime: DateTime.now(),
                                  minimumDate: DateTime(1990),
                                  maximumDate: DateTime.now()
                                      .add(const Duration(hours: 1)),
                                  onDateTimeChanged: (val) {
                                    String picked = DateFormat.y().format(val);
                                    String now =
                                        DateFormat.y().format(DateTime.now());
                                    int result =
                                        int.parse(now) - int.parse(picked);
                                    selectedYear.value =
                                        DateFormat("yyyy-MM-dd").format(val);
                                    personal.put(
                                        "birthdate", selectedYear.value);
                                    personal.put("age", result);
                                    controller!.text =
                                        selectedYear.value.toString();
                                  }),
                            ),

                            // Close the modal
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 70,
                                child: CupertinoButton(
                                  child: const Text('confirm').tr(),
                                  onPressed: () async {
                                    if (controller!.text == "") {
                                      String picked =
                                          DateFormat.y().format(DateTime.now());
                                      String now =
                                          DateFormat.y().format(DateTime.now());
                                      int result =
                                          int.parse(now) - int.parse(picked);
                                      selectedYear.value =
                                          DateFormat("yyyy-MM-dd")
                                              .format(DateTime.now());
                                      personal.put(
                                          "birthdate", selectedYear.value);
                                      personal.put("age", result);
                                      controller!.text =
                                          selectedYear.value.toString();
                                    }
                                    context.router.pop();
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ));
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              contentPadding: const EdgeInsets.only(
                  left: 10, top: 10, bottom: 10, right: 10),
              filled: true,
              fillColor: Colors.blue[350],
              labelText: "birthdate".tr(),
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            controller: controller,
          ),
        ));
  }
}

class StartEndDate extends HookWidget {
  final double? width;
  final String? label;
  final TextEditingController? startcontroller;
  final TextEditingController? endcontroller;
  final VoidCallback? ontap;

  const StartEndDate(
      {super.key,
      this.ontap,
      this.width,
      this.startcontroller,
      this.label,
      this.endcontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
          height: 80,
          width: width,
          child: TextFormField(
            readOnly: true,
            validator: RequiredValidator(errorText: "reqfield".tr()),
            onTap: ontap,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              contentPadding: const EdgeInsets.only(
                  left: 10, top: 10, bottom: 10, right: 10),
              filled: true,
              fillColor: Colors.blue[350],
              labelText: label,
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            controller: startcontroller,
          ),
        ));
  }
}

class EndDate extends HookWidget {
  final double? width;
  final String? label;
  final TextEditingController? startcontroller;
  final TextEditingController? endcontroller;
  final VoidCallback? ontap;

  const EndDate(
      {super.key,
      this.ontap,
      this.width,
      this.startcontroller,
      this.label,
      this.endcontroller});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
          height: 80,
          width: width,
          child: TextFormField(
            readOnly: true,
            validator: RequiredValidator(errorText: "reqfield".tr()),
            onTap: ontap,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              contentPadding: const EdgeInsets.only(
                  left: 10, top: 10, bottom: 10, right: 10),
              filled: true,
              fillColor: Colors.blue[350],
              labelText: label,
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            controller: endcontroller,
          ),
        ));
  }
}

class Ocuupation extends HookConsumerWidget {
  final double? width;

  final TextEditingController? controller;

  const Ocuupation({
    super.key,
    this.width,
    this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final personal = Hive.box("personal");
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);

    final selectedcountry = useState("");
    final Box setting = Hive.box("setting");

    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
          height: 80,
          width: width,
          child: ValueListenableBuilder(
            valueListenable: setting.listenable(),
            builder: (context, Box box, child) {
              final apitoken = box.get("apitoken");
              return TextFormField(
                readOnly: true,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                onTap: () async {
                  final value =
                      await ref.read(getoccupationProvider(apitoken).future);
                  value.fold(
                      (l) => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("contact".tr()))), (r) async {
                    List<PersonalOccupationModel> cars = r;

                    FocusScope.of(context).unfocus();
                    await showCupertinoModalPopup(
                      context: context,
                      builder: (_) => Container(
                        height: 250,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 180,
                              child: CupertinoPicker(
                                scrollController: scrollcontroller,
                                looping: false,
                                itemExtent: 46,
                                onSelectedItemChanged: (value) {
                                  personal.put("typeid", cars[value].id);
                                  controller!.text =
                                      context.locale.languageCode == "ar"
                                          ? cars[value].name_ar.toString()
                                          : cars[value].name.toString();
                                  ;
                                },
                                children: List<Widget>.generate(cars.length,
                                    (int index) {
                                  return Text(
                                    context.locale.languageCode == "ar"
                                        ? cars[index].name_ar.toString()
                                        : cars[index].name.toString(),
                                    style: const TextStyle(
                                        color: CupertinoColors.black),
                                  );
                                }),
                              ),
                            ),

                            // Close the modal
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                height: 70,
                                child: CupertinoButton(
                                  child: const Text('confirm').tr(),
                                  onPressed: () async {
                                    if (scrollcontroller.selectedItem == 0) {
                                      personal.put("typeid", cars[0].id);
                                      controller!.text =
                                          context.locale.languageCode == "ar"
                                              ? cars[0].name_ar.toString()
                                              : cars[0].name.toString();
                                    }
                                    await context.router.pop();
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  });
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  contentPadding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
                  filled: true,
                  fillColor: Colors.blue[350],
                  labelText: "occupation".tr(),
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                controller: controller,
              );
            },
          ),
        ));
  }
}

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  static const separator = ','; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Short-circuit if the new value is empty
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Handle "deletion" of separator character
    String oldValueText = oldValue.text.replaceAll(separator, '');
    String newValueText = newValue.text.replaceAll(separator, '');

    if (oldValue.text.endsWith(separator) &&
        oldValue.text.length == newValue.text.length + 1) {
      newValueText = newValueText.substring(0, newValueText.length - 1);
    }

    // Only process if the old value and new value are different
    if (oldValueText != newValueText) {
      int selectionIndex =
          newValue.text.length - newValue.selection.extentOffset;
      final chars = newValueText.split('');

      String newString = '';
      for (int i = chars.length - 1; i >= 0; i--) {
        if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1) {
          newString = separator + newString;
        }
        newString = chars[i] + newString;
      }

      return TextEditingValue(
        text: newString.toString(),
        selection: TextSelection.collapsed(
          offset: newString.length - selectionIndex,
        ),
      );
    }

    // If the new value and old value are the same, just return as-is
    return newValue;
  }
}
