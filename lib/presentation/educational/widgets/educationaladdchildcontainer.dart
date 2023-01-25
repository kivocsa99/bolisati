import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EducationalAddChildInformationContainer extends HookWidget {
  final ValueChanged<String?>? name;
  final TextEditingController? namecontroller;
  final TextEditingController? nationalController;

  final TextEditingController? yearcontroller;
  final TextEditingController? startdatecontroller;
  final TextEditingController? enddatecontroller;
  final TextEditingController? gendercontroller;

  final TextEditingController? monthlyconotroller;

  final TextEditingController? prevcontroller;

  final ValueChanged<String?>? insurance;
  final VoidCallback? gender;

  final ValueChanged<String?>? national;
  final ValueChanged<String?>? perviosaccidents;

  final VoidCallback? caryearfunction;
  final GlobalKey<FormState>? formkey;
  const EducationalAddChildInformationContainer(
      {super.key,
      this.caryearfunction,
      this.formkey,
      this.name,
      this.gendercontroller,
      this.gender,
      this.yearcontroller,
      this.monthlyconotroller,
      this.enddatecontroller,
      this.startdatecontroller,
      this.prevcontroller,
      this.namecontroller,
      this.insurance,
      this.national,
      this.nationalController,
      this.perviosaccidents});

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
                label: "childname".tr(),
                width: double.infinity,
              ),
              YearPicker(
                controller: yearcontroller,
              ),
              CustomField(
                controller: nationalController,
                type: TextInputType.number,
                readonly: false,
                validator: MultiValidator([
                  RequiredValidator(errorText: "reqfield".tr()),
                  LengthRangeValidator(
                      min: 10,
                      max: 10,
                      errorText: "Please provide a 10 digit national number"),
                ]),
                onchanged: national,
                label: "childid".tr(),
                width: double.infinity,
              ),
              CustomField(
                controller: gendercontroller,
                label: "gender".tr(),
                readonly: true,
                width: double.infinity,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                function: gender,
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
    final Box educational = Hive.box("educational");

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
                                  minimumDate: DateTime(1900),
                                  maximumDate: DateTime.now(),
                                  onDateTimeChanged: (val) {
                                    String picked = DateFormat.y().format(val);
                                    String now =
                                        DateFormat.y().format(DateTime.now());
                                    int result =
                                        int.parse(now) - int.parse(picked);
                                    selectedYear.value =
                                        DateFormat("yyyy-MM-dd").format(val);
                                    educational.put(
                                        "birthdate", selectedYear.value);
                                    educational.put("age", result);
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
                                      educational.put(
                                          "birthdate", selectedYear.value);
                                      educational.put("age", result);
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
