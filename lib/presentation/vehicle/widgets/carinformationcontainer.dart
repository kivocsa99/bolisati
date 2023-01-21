import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/orders/motororders/cars/carmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CarInformationContainer extends HookWidget {
  final ValueChanged<String?>? name;
  final TextEditingController? namecontroller;
  final TextEditingController? yearcontroller;
  final TextEditingController? startdatecontroller;
  final TextEditingController? enddatecontroller;
  final TextEditingController? carbrandcontroller;
  final TextEditingController? carmodelcontroller;
  final TextEditingController? fueltypecontroller;
  final TextEditingController? valuecontroller;
  final TextEditingController? prevcontroller;
  final DateTime? date;

  final ValueChanged<String?>? fueltype;
  final ValueChanged<String?>? value;
  final ValueChanged<String?>? perviosaccidents;

  final VoidCallback? caryearfunction;
  final VoidCallback? ontap;
  final GlobalKey<FormState>? formkey;
  const CarInformationContainer(
      {super.key,
      this.caryearfunction,
      this.formkey,
      this.date,
      this.name,
      this.yearcontroller,
      this.ontap,
      this.carbrandcontroller,
      this.carmodelcontroller,
      this.valuecontroller,
      this.enddatecontroller,
      this.startdatecontroller,
      this.fueltypecontroller,
      this.prevcontroller,
      this.namecontroller,
      this.fueltype,
      this.value,
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
                    onchanged: fueltype,
                    initial: "fuel".tr(),
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  FuelType(
                    width: 100,
                    onchanged: fueltype,
                  ),
                ],
              ),
              CustomField(
                controller: valuecontroller,
                type: TextInputType.number,
                readonly: false,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                onchanged: value,
                label: "value".tr(),
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomField(
                    initial: "prev".tr(),
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2 + 10,
                  ),
                  Carraccident(
                    width: 100,
                    onchanged: perviosaccidents,
                  ),
                ],
              ),
              Align(
                  alignment: context.locale.languageCode == "ar"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Text("").tr()),
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
                    date: date,
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

class FuelType extends HookWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final String? label;
  final double? width;
  final TextEditingController? controller;
  const FuelType(
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
        child: DropdownButtonFormField<String>(
          focusColor: Colors.grey,
          iconEnabledColor: Colors.grey,
          value: dropDownValue.value,
          onChanged: onchanged,
          items: ["N/A", "electric", "fuel", "hybrid"]
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

class Carraccident extends HookWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final String? label;
  final double? width;
  const Carraccident(
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
          items: ["N/A", "True", "False"]
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
    final Box car = Hive.box("car");

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
                firstDate: DateTime(1970),
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
                selectedYear.value = DateFormat.y().format(pickedYear);
                car.put("caryear", selectedYear.value);
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
              labelText: "caryear".tr(),
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
      this.width,
      this.startcontroller,
      this.ontap,
      this.label,
      this.endcontroller});

  @override
  Widget build(BuildContext context) {
    final Box car = Hive.box("car");

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
  final DateTime? date;
  final TextEditingController? endcontroller;

  const EndDate(
      {super.key, this.date, this.width, this.label, this.endcontroller});

  @override
  Widget build(BuildContext context) {
    final Box car = Hive.box("car");

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
    final car = Hive.box("car");

    final selectedcar = useState("");
    final selectedmodel = useState("");
    final Box setting = Hive.box("setting");

    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
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
                          await ref.read(getcarsProvider(apitoken).future);
                      value.fold(
                          (l) => ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("contact".tr()))), (r) {
                        List<CarModel> cars = r;

                        FocusScope.of(context).unfocus();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SimpleDialog(
                              title: const Text("selectbrand").tr(),
                              children: cars.map((e) {
                                return SimpleDialogOption(
                                  onPressed: () async {
                                    selectedcar.value = e.name.toString();
                                    brandcontroller!.text =
                                        selectedcar.value.toString();
                                    car.put("carbrand", e.id);
                                    await context.router.pop();
                                    return showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SimpleDialog(
                                          title: const Text("selectmodel").tr(),
                                          children: e.models!
                                              .map((e) => SimpleDialogOption(
                                                    onPressed: () {
                                                      selectedmodel.value =
                                                          e.name!;
                                                      modelcontroller!.text =
                                                          selectedmodel.value
                                                              .toString();
                                                      car.put("carmodel", e.id);
                                                      context.router.pop();
                                                    },
                                                    child: Text(e!.name!),
                                                  ))
                                              .toList(),
                                        );
                                      },
                                    );
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
                      labelText: "carbrand".tr(),
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
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
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
                  labelText: "carmodel".tr(),
                  hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                controller: modelcontroller,
              ),
            )
          ],
        ));
  }
}
