import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/orders/motororders/cars/carmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class EducationalAddChildInformationContainer extends HookWidget {
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
  const EducationalAddChildInformationContainer(
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
                validator:
                    RequiredValidator(errorText: "This Field is Required"),
                onchanged: name,
                label: "Full Name",
                width: double.infinity,
              ),
              YearPicker(
                controller: yearcontroller,
              ),
              Row(
                children: [
                  CustomField(
                    initial: "Insurance Type",
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
                      validator: RequiredValidator(
                          errorText: "This Field is Required"),
                      onchanged: monthly,
                      label: "Monthly Fee",
                      width: double.infinity,
                    )
                  : const SizedBox.shrink(),
              educational.get("type") == 2
                  ? CustomField(
                      controller: fullfeecontroller,
                      type: TextInputType.number,
                      readonly: false,
                      validator: RequiredValidator(
                          errorText: "This Field is Required"),
                      onchanged: yearly,
                      label: "Full Fee",
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
    final Box educational = Hive.box("educational");

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
                educational.put("birthdate", _selectedYear.value);
                educational.put("age", result);
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
