import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/motor/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/orders/motororders/cars/carmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DomesticInformationContainer extends HookWidget {
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

  final ValueChanged<String?>? fueltype;
  final ValueChanged<String?>? value;
  final ValueChanged<String?>? perviosaccidents;

  final VoidCallback? caryearfunction;
  final GlobalKey<FormState>? formkey;
  const DomesticInformationContainer(
      {super.key,
      this.caryearfunction,
      this.formkey,
      this.name,
      this.yearcontroller,
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
                validator:
                    RequiredValidator(errorText: "This Field is Required"),
                onchanged: name,
                label: "Full Name",
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
                    initial: "Fuel Type",
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  FuelType(
                    width: 100,
                    onchanged: perviosaccidents,
                  ),
                ],
              ),
              CustomField(
                controller: valuecontroller,
                type: TextInputType.number,
                readonly: false,
                validator:
                    RequiredValidator(errorText: "This Field is Required"),
                onchanged: value,
                label: "Value",
                width: double.infinity,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomField(
                    initial: "Previous Accidents",
                    readonly: true,
                    width: MediaQuery.of(context).size.width / 2 + 10,
                  ),
                  Carraccident(
                    width: 100,
                    onchanged: perviosaccidents,
                  ),
                ],
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
      child: Container(
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
                _selectedYear.value = DateFormat.y().format(pickedYear);
                car.put("caryear", _selectedYear.value);
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
              labelText: "Car Year",
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
    final Box car = Hive.box("car");

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
                  car.put("carsstartdate",
                      DateFormat("yyyy-MM-dd").format(pickedYear));
                  startcontroller!.text = _selecteddate.value.toString();
                } else {
                  car.put("carenddate",
                      DateFormat("yyyy-MM-dd").format(pickedYear));
                  endcontroller!.text = _selecteddate.value.toString();
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

    final _selectedcar = useState("");
    final _selectedmodel = useState("");
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
                  final carprovider =
                      ref.watch(getcarsProvider(apitoken).future);
                  return TextFormField(
                    readOnly: true,
                    validator:
                        RequiredValidator(errorText: "This Field is Required"),
                    onTap: () async {
                      final value =
                          await ref.read(getcarsProvider(apitoken).future);
                      value.fold(
                          (l) => ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(
                                      "${l.toString()} please contact us"))),
                          (r) {
                        List<CarModel> cars = r;

                        print(r);
                        FocusScope.of(context).unfocus();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SimpleDialog(
                              title: const Text('Select Car Brand'),
                              children: cars.map((e) {
                                return SimpleDialogOption(
                                  onPressed: () async {
                                    _selectedcar.value = e.name.toString();
                                    brandcontroller!.text =
                                        _selectedcar.value.toString();
                                    car.put("carbrand", e.id);
                                    await context.router.pop();
                                    return showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SimpleDialog(
                                          title: const Text('Select Car Model'),
                                          children: e.models!
                                              .map((e) => SimpleDialogOption(
                                                    onPressed: () {
                                                      _selectedmodel.value =
                                                          e.name!;
                                                      modelcontroller!.text =
                                                          _selectedmodel.value
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
                      labelText: "Car Brand",
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
                validator:
                    RequiredValidator(errorText: "This Field is Required"),
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
                  labelText: "Car Model",
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
