import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/motor.repository.provider.dart';
import 'package:bolisati/domain/api/orders/motororders/cars/carmodel.dart';
import 'package:bolisati/domain/api/orders/motororders/cars/carsmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  final VoidCallback? fueltype;
  final ValueChanged<String?>? value;
  final VoidCallback? perviosaccidents;

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
                label: "insname".tr(),
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
              CustomField(
                controller: valuecontroller,
                type: TextInputType.number,
                readonly: false,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                onchanged: value,
                formatter: [ThousandsSeparatorInputFormatter()],
                label: "value".tr(),
                width: double.infinity,
              ),
              CustomField(
                validator: RequiredValidator(errorText: "reqfield".tr()),
                controller: fueltypecontroller,
                readonly: true,
                width: double.infinity,
                label: "fuel".tr(),
                function: fueltype,
              ),
              CustomField(
                validator: RequiredValidator(errorText: "reqfield".tr()),
                controller: prevcontroller,
                readonly: true,
                width: double.infinity,
                label: "prev".tr(),
                function: perviosaccidents,
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

class Carraccident extends HookWidget {
  final ValueChanged<String?>? onchanged;
  final String? Function(String?)? validator;
  final String? label;
  final double? width;
  const Carraccident(
      {super.key, this.width, this.onchanged, this.label, this.validator});

  @override
  Widget build(BuildContext context) {
    final dropDownValue = useState(null);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 80,
        width: width,
        child: DropdownButtonFormField<String>(
          hint: const Text("prev").tr(),
          validator: (value) => value ?? "reqfield".tr(),
          focusColor: Colors.grey,
          iconEnabledColor: Colors.grey,
          value: dropDownValue.value,
          onChanged: onchanged,
          items: ["globalsyes".tr(), "globalsno".tr()]
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
      this.formatter,
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
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    List<String> years = [];
    int currentYear = DateTime.now().year;
    for (int i = currentYear; i > currentYear - 16; i--) {
      years.add(i.toString());
    }
    final Box car = Hive.box("car");

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
                              child: CupertinoPicker(
                                scrollController: scrollcontroller,
                                looping: false,
                                itemExtent: 46,
                                onSelectedItemChanged: (value) {
                                  car.put("caryear", years[value]);
                                  controller!.text = years[value].toString();
                                },
                                children: List<Widget>.generate(years.length,
                                    (int index) {
                                  return Text(
                                    years[index],
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
                                      car.put("caryear", years[0]);
                                      controller!.text = years[0].toString();
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
  final DateTime? date;
  final TextEditingController? endcontroller;

  const EndDate(
      {super.key, this.date, this.width, this.label, this.endcontroller});

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
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    final modelscrollcontroller = FixedExtentScrollController(initialItem: 0);
    final models = useState<List<CarsModel>>([]);
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
                              SnackBar(content: Text("contact".tr()))),
                          (r) async {
                        List<CarModel> cars = r;

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
                                      car.put("carbrand", cars[value].id);
                                      brandcontroller!.text =
                                          cars[value].name.toString();
                                      models.value =
                                          cars[value].models!.cast<CarsModel>();
                                    },
                                    children: List<Widget>.generate(cars.length,
                                        (int index) {
                                      return Text(
                                        cars[index].name!,
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
                                        await context.router.pop();

                                        if (scrollcontroller.selectedItem ==
                                            0) {
                                          car.put("carbrand", cars[0].id);
                                          brandcontroller!.text =
                                              cars[0].name.toString();
                                          models.value =
                                              cars[0].models!.cast<CarsModel>();
                                        }
                                        if (context.mounted) {
                                          return await showCupertinoModalPopup(
                                              context: context,
                                              builder: (_) => Container(
                                                    height: 250,
                                                    color: const Color.fromARGB(
                                                        255, 255, 255, 255),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 180,
                                                          child:
                                                              CupertinoPicker(
                                                            scrollController:
                                                                modelscrollcontroller,
                                                            looping: false,
                                                            itemExtent: 46,
                                                            onSelectedItemChanged:
                                                                (value) {
                                                              car.put(
                                                                  "carbrand",
                                                                  models
                                                                      .value[
                                                                          value]
                                                                      .id);
                                                              modelcontroller!
                                                                      .text =
                                                                  models
                                                                      .value[
                                                                          value]
                                                                      .name
                                                                      .toString();
                                                            },
                                                            children: List<
                                                                    Widget>.generate(
                                                                models.value
                                                                    .length,
                                                                (int index) {
                                                              return Text(
                                                                models
                                                                    .value[
                                                                        index]
                                                                    .name!,
                                                                style: const TextStyle(
                                                                    color: CupertinoColors
                                                                        .black),
                                                              );
                                                            }),
                                                          ),
                                                        ),

                                                        // Close the modal
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: SizedBox(
                                                            height: 70,
                                                            child:
                                                                CupertinoButton(
                                                              child: const Text(
                                                                      'confirm')
                                                                  .tr(),
                                                              onPressed:
                                                                  () async {
                                                                if (modelscrollcontroller
                                                                        .selectedItem ==
                                                                    0) {
                                                                  car.put(
                                                                      "carmodel",
                                                                      models
                                                                          .value[
                                                                              0]
                                                                          .id);
                                                                  modelcontroller!
                                                                          .text =
                                                                      models
                                                                          .value[
                                                                              0]
                                                                          .name
                                                                          .toString();
                                                                }
                                                                await context
                                                                    .router
                                                                    .pop();
                                                              },
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ));
                                        }
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
                  contentPadding: const EdgeInsets.only(
                      left: 10, top: 10, bottom: 10, right: 10),
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
