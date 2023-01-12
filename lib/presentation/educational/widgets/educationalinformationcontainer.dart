import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';

class EducationalInformationContainer extends HookWidget {
  final ValueChanged<String?>? name;
  final TextEditingController? namecontroller;
  final TextEditingController? yearcontroller;
  final TextEditingController? startdatecontroller;
  final TextEditingController? enddatecontroller;
  final TextEditingController? carbrandcontroller;
  final TextEditingController? carmodelcontroller;
  final TextEditingController? valuecontroller;
  final TextEditingController? monthlyconotroller;
  final TextEditingController? fullfeecontroller;

  final TextEditingController? prevcontroller;

  final ValueChanged<String?>? insurance;
  final ValueChanged<String?>? monthly;
  final ValueChanged<String?>? yearly;

  final ValueChanged<String?>? value;
  final ValueChanged<String?>? perviosaccidents;

  final VoidCallback? caryearfunction;
  final GlobalKey<FormState>? formkey;
  const EducationalInformationContainer(
      {super.key,
      this.caryearfunction,
      this.formkey,
      this.name,
      this.monthly,
      this.yearly,
      this.yearcontroller,
      this.fullfeecontroller,
      this.carbrandcontroller,
      this.carmodelcontroller,
      this.valuecontroller,
      this.monthlyconotroller,
      this.enddatecontroller,
      this.startdatecontroller,
      this.prevcontroller,
      this.namecontroller,
      this.insurance,
      this.value,
      this.perviosaccidents});

  @override
  Widget build(BuildContext context) {
    final Box educational = Hive.box("educational");
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
              YearPicker(
                controller: yearcontroller,
              ),
              Row(
                children: [
                  CustomField(
                    initial: "inursancet".tr(),
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Expanded(
                    child: Insurance(
                      width: 100,
                      onchanged: insurance,
                    ),
                  ),
                ],
              ),
              educational.get("type") == 1
                  ? CustomField(
                      controller: monthlyconotroller,
                      type: TextInputType.number,
                      readonly: false,
                      validator: RequiredValidator(errorText: "reqfield".tr()),
                      onchanged: monthly,
                      label: "monthly".tr(),
                      width: double.infinity,
                    )
                  : const SizedBox.shrink(),
              educational.get("type") == 2
                  ? CustomField(
                      controller: fullfeecontroller,
                      type: TextInputType.number,
                      readonly: false,
                      validator: RequiredValidator(errorText: "reqfield".tr()),
                      onchanged: yearly,
                      label: "fullfee".tr(),
                      width: double.infinity,
                    )
                  : const SizedBox.shrink(),
            ],
          )),
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
          items: ["N/A", "Monthly Fee", "Full Fee"]
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
                educational.put("birthdate", selectedYear.value);
                educational.put("age", result);
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

