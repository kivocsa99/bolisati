import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MedicalInformationContainer extends HookWidget {
  final ValueChanged<String?>? name;
  final TextEditingController? namecontroller;
  final TextEditingController? yearcontroller;
  final TextEditingController? startdatecontroller;
  final TextEditingController? enddatecontroller;
  final TextEditingController? regioncontroller;
  final TextEditingController? valuecontroller;
  final TextEditingController? periodcontroller;
  final ValueChanged<String?>? period;
  final VoidCallback? ontap;
  final ValueChanged<String?>? gender;
  final ValueChanged<String?>? insurance;

  final ValueChanged<String?>? maritalstatus;

  final GlobalKey<FormState>? formkey;
  const MedicalInformationContainer({
    super.key,
    this.periodcontroller,
    this.insurance,
    this.formkey,
    this.name,
    this.yearcontroller,
    this.gender,
    this.regioncontroller,
    this.valuecontroller,
    this.ontap,
    this.enddatecontroller,
    this.startdatecontroller,
    this.namecontroller,
    this.maritalstatus,
    this.period,
  });

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
                label: "name".tr(),
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomField(
                    initial: "gender".tr(),
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2 + 10,
                  ),
                  Expanded(
                    child: Gender(
                      width: 100,
                      onchanged: gender,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomField(
                    initial: "inursancet".tr(),
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2 + 10,
                  ),
                  Expanded(
                    child: Insurance(
                      width: 100,
                      onchanged: insurance,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomField(
                    initial: "maritalstatus".tr(),
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2 + 10,
                  ),
                  Expanded(
                    child: Marital(
                      width: 100,
                      onchanged: maritalstatus,
                    ),
                  ),
                ],
              ),
              YearPicker(
                controller: yearcontroller,
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
                const EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
    final Box medical = Hive.box("medical");

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
              final pickedYear = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now().add(const Duration(days: 356)),
                builder: (context, child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      colorScheme:
                          const ColorScheme.light(primary: Colors.blue),
                      buttonTheme: const ButtonThemeData(
                        textTheme: ButtonTextTheme.primary,
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              if (pickedYear != null) {
                String picked = DateFormat.y().format(pickedYear);
                String now = DateFormat.y().format(DateTime.now());
                int result = int.parse(now) - int.parse(picked);
                selectedYear.value =
                    DateFormat("yyyy-MM-dd").format(pickedYear);
                medical.put("birthdate", selectedYear.value);
                medical.put("age", result);
                controller!.text = selectedYear.value.toString();
              }
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
    final Box medical = Hive.box("medical");

    final selecteddate = useState("");
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
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 10, bottom: 10),
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
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 10, bottom: 10),
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

class Gender extends HookWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final String? label;
  final double? width;
  const Gender(
      {super.key, this.width, this.onchanged, this.label, this.validator});

  @override
  Widget build(BuildContext context) {
    final dropDownValue = useState("N/A");
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 80,
        width: width,
        child: DropdownButtonFormField<String>(
          validator: RequiredValidator(errorText: ""),
          focusColor: Colors.grey,
          iconEnabledColor: Colors.grey,
          value: dropDownValue.value,
          onChanged: onchanged,
          items: ["N/A", "Man", "Woman"]
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                      )))
              .toList(),
        ),
      ),
    );
  }
}

class Insurance extends HookWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final String? label;
  final double? width;
  const Insurance(
      {super.key, this.width, this.onchanged, this.label, this.validator});

  @override
  Widget build(BuildContext context) {
    final dropDownValue = useState("N/A");
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 80,
        width: width,
        child: DropdownButtonFormField<String>(
          validator: RequiredValidator(errorText: ""),
          focusColor: Colors.grey,
          iconEnabledColor: Colors.grey,
          value: dropDownValue.value,
          onChanged: onchanged,
          items: ["N/A", "in", "in/out"]
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                      )))
              .toList(),
        ),
      ),
    );
  }
}

class Marital extends HookWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final String? label;
  final double? width;
  const Marital(
      {super.key, this.width, this.onchanged, this.label, this.validator});

  @override
  Widget build(BuildContext context) {
    final dropDownValue = useState("N/A");
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 80,
        width: width,
        child: DropdownButtonFormField<String>(
          validator: RequiredValidator(errorText: ""),
          focusColor: Colors.grey,
          iconEnabledColor: Colors.grey,
          value: dropDownValue.value,
          onChanged: onchanged,
          items: ["N/A", "Married", "Single"]
              .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                      )))
              .toList(),
        ),
      ),
    );
  }
}
