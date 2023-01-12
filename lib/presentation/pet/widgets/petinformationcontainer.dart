import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/pet.repository.provider.dart';
import 'package:bolisati/domain/api/pet/model/petcountrymodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PetInformationContainer extends HookWidget {
  final ValueChanged<String?>? name;
  final TextEditingController? namecontroller;
  final TextEditingController? yearcontroller;
  final TextEditingController? startdatecontroller;
  final TextEditingController? enddatecontroller;
  final TextEditingController? carbrandcontroller;
  final TextEditingController? carmodelcontroller;
  final TextEditingController? valuecontroller;
  final TextEditingController? prevcontroller;
  final TextEditingController? pettypecontroller;

  final ValueChanged<String?>? pettype;
  final ValueChanged<String?>? value;
  final ValueChanged<String?>? gender;

  final VoidCallback? caryearfunction;
  final GlobalKey<FormState>? formkey;
  const PetInformationContainer(
      {super.key,
      this.caryearfunction,
      this.pettypecontroller,
      this.formkey,
      this.name,
      this.yearcontroller,
      this.carbrandcontroller,
      this.carmodelcontroller,
      this.valuecontroller,
      this.enddatecontroller,
      this.startdatecontroller,
      this.prevcontroller,
      this.namecontroller,
      this.pettype,
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
                label: "name".tr(),
                width: double.infinity,
              ),
              CarBrand(
                modelcontroller: carmodelcontroller,
                brandcontroller: carbrandcontroller,
                width: double.infinity,
              ),
              YearPicker(
                controller: yearcontroller,
              ),
              Row(
                children: [
                  CustomField(
                    initial: "pettype".tr(),
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Expanded(
                    child: PetType(
                      width: 100,
                      onchanged: pettype,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StartEndDate(
                    startcontroller: startdatecontroller,
                    label: "startdate".tr(),
                    width: 150,
                  ),
                  StartEndDate(
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

class PetType extends HookWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final String? label;
  final double? width;
  final TextEditingController? controller;
  const PetType(
      {super.key,
      this.width,
      this.onchanged,
      this.controller,
      this.label,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final dropDownValue = useState("N/A");
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 80,
        width: width,
        child: DropdownButtonFormField<String>(
          focusColor: Colors.grey,
          iconEnabledColor: Colors.grey,
          value: dropDownValue.value,
          onChanged: onchanged,
          items: ["N/A", "Cat", "Dog", "Other"]
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
          items: ["N/A", "Male", "Female"]
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
    final Box pet = Hive.box("pet");

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
                pet.put("birthdate", selectedYear.value);
                pet.put("age", result);
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

  const StartEndDate(
      {super.key,
      this.width,
      this.startcontroller,
      this.label,
      this.endcontroller});

  @override
  Widget build(BuildContext context) {
    final Box car = Hive.box("pet");

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
                selecteddate.value = DateFormat("M/d/y").format(pickedYear);
                if (label == "Start Date" || label == "تاريخ البداية") {
                  car.put("startdate",
                      DateFormat("yyyy-MM-dd HH:mm:ss").format(pickedYear));
                  startcontroller!.text = selecteddate.value.toString();
                } else {
                  car.put("enddate",
                      DateFormat("yyyy-MM-dd HH:mm:ss").format(pickedYear));
                  endcontroller!.text = selecteddate.value.toString();
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
            controller: label == "Start Date" || label == "تاريخ البداية"
                ? startcontroller
                : endcontroller,
          ),
        ));
  }
}

class CarBrand extends HookConsumerWidget {
  final double? width;

  final TextEditingController? brandcontroller;
  final TextEditingController? modelcontroller;

  const CarBrand({
    super.key,
    this.width,
    this.brandcontroller,
    this.modelcontroller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet = Hive.box("pet");

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
                      await ref.read(getcountryProvider(apitoken).future);
                  value.fold(
                      (l) => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("contact".tr()))), (r) {
                    List<PetCountryModel> cars = r;

                    FocusScope.of(context).unfocus();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: const Text("petcountrydes").tr(),
                          children: cars.map((e) {
                            return SimpleDialogOption(
                              onPressed: () async {
                                selectedcountry.value = e.name.toString();
                                brandcontroller!.text =
                                    selectedcountry.value.toString();
                                pet.put("country", e.id);
                                await context.router.pop();
                              },
                              child: Text(e.name!),
                            );
                          }).toList(),
                        );
                      },
                    );
                  });
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
                  labelText: "petcountry".tr(),
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                controller: brandcontroller,
              );
            },
          ),
        ));
  }
}
