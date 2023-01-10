import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/medical.repository.provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

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
                validator:
                    RequiredValidator(errorText: "This Field is Required"),
                onchanged: name,
                label: "Full Name",
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomField(
                    initial: "Gender",
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
                    initial: "Insurance Type",
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
                    initial: "Marital Status",
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
                    startcontroller: startdatecontroller,
                    label: "Start Date",
                    width: 150,
                  ),
                  StartEndDate(
                    endcontroller: enddatecontroller,
                    label: "End Date",
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

    final _selectedYear = useState("");
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
            validator: RequiredValidator(errorText: "This Field is Required"),
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
                _selectedYear.value =
                    DateFormat("yyyy-MM-dd").format(pickedYear);
                medical.put("birthdate", _selectedYear.value);
                medical.put("age", result);
                controller!.text = _selectedYear.value.toString();
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
              labelText: "Birth Date",
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

  const StartEndDate(
      {super.key,
      this.width,
      this.startcontroller,
      this.label,
      this.endcontroller});

  @override
  Widget build(BuildContext context) {
    final Box medical = Hive.box("medical");

    final _selecteddate = useState("");
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
            validator: RequiredValidator(errorText: "This Field is Required"),
            onTap: () async {
              FocusScope.of(context).unfocus();
              final pickedYear = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 740)),
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
                _selecteddate.value = DateFormat("M/d/y").format(pickedYear);
                if (label == "Start Date") {
                  medical.put("startdate",
                      DateFormat("yyyy-MM-dd HH:mm:ss").format(pickedYear));
                  startcontroller!.text = _selecteddate.value.toString();
                } else {
                  medical.put("enddate",
                      DateFormat("yyyy-MM-dd HH:mm:ss").format(pickedYear));
                  endcontroller!.text = _selecteddate.value.toString();
                  print(medical.get("enddate"));
                }
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
              labelText: label,
              hintStyle: const TextStyle(
                color: Colors.black26,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            controller: label == "Start Date" ? startcontroller : endcontroller,
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
                  (String _value) => DropdownMenuItem<String>(
                      value: _value,
                      child: Text(
                        _value,
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
                  (String _value) => DropdownMenuItem<String>(
                      value: _value,
                      child: Text(
                        _value,
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
                  (String _value) => DropdownMenuItem<String>(
                      value: _value,
                      child: Text(
                        _value,
                      )))
              .toList(),
        ),
      ),
    );
  }
}
