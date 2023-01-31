import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/pet.repository.provider.dart';
import 'package:bolisati/domain/api/pet/model/petcountrymodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
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
  final TextEditingController? petcountrycontroller;
  final TextEditingController? gendercontroller;
  final TextEditingController? prevcontroller;
  final TextEditingController? pettypecontroller;
  final VoidCallback? ontap;

  final VoidCallback? pettype;
  final ValueChanged<String?>? value;
  final VoidCallback? gender;

  final VoidCallback? caryearfunction;
  final GlobalKey<FormState>? formkey;
  const PetInformationContainer(
      {super.key,
      this.caryearfunction,
      this.pettypecontroller,
      this.formkey,
      this.name,
      this.yearcontroller,
      this.petcountrycontroller,
      this.gendercontroller,
      this.ontap,
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
            child: Column(children: [
              CustomField(
                controller: namecontroller,
                type: TextInputType.text,
                readonly: false,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                onchanged: name,
                label: "petowner".tr(),
                width: double.infinity,
              ),
              PetCountry(
                controller: petcountrycontroller,
                width: double.infinity,
              ),
              CustomField(
                controller: pettypecontroller,
                label: "pettype".tr(),
                readonly: true,
                width: double.infinity,
                function: pettype,
              ),
              CustomField(
                controller: gendercontroller,
                label: "gender".tr(),
                readonly: true,
                width: double.infinity,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                function: gender,
              ),
              YearPicker(
                controller: yearcontroller,
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
            ])));
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
                                  initialDateTime: DateTime.now()
                                      .add(const Duration(hours: 1)),
                                  minimumDate: DateTime(1990),
                                  maximumDate: DateTime.now()
                                      .add(const Duration(days: 356)),
                                  onDateTimeChanged: (val) {
                                    String picked = DateFormat.y().format(val);
                                    String now =
                                        DateFormat.y().format(DateTime.now());
                                    int result =
                                        int.parse(now) - int.parse(picked);
                                    selectedYear.value =
                                        DateFormat("yyyy-MM-dd").format(val);
                                    pet.put("birthdate", selectedYear.value);
                                    pet.put("age", result);
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
                                      pet.put("birthdate", selectedYear.value);
                                      pet.put("age", result);
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
      this.width,
      this.ontap,
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

class PetCountry extends HookConsumerWidget {
  final double? width;

  final TextEditingController? controller;

  const PetCountry({
    super.key,
    this.width,
    this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pet = Hive.box("pet");
    final scrollcontroller = FixedExtentScrollController(initialItem: 0);
    
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
                  final country =
                      await ref.read(getcountryProvider(apitoken).future);

                  country.fold(
                      (l) => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("contact".tr()))), (r) async {
                    List<PetCountryModel> cars = r;

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
                                  pet.put("country", cars[value].id);
                                  controller!.text = cars[0].name!;
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
                                    if (scrollcontroller.selectedItem == 0) {
                                      pet.put("country", cars[0].id);
                                      controller!.text = cars[0].name!;
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
                  labelText: "petcountry".tr(),
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
