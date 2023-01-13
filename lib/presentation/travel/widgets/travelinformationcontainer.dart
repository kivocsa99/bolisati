import 'package:auto_route/auto_route.dart';
import 'package:bolisati/application/provider/travel.repository.provider.dart';
import 'package:bolisati/domain/api/orders/travelorders/region/regionmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TravelInformationContainer extends HookWidget {
  final ValueChanged<String?>? name;
  final TextEditingController? namecontroller;
  final TextEditingController? yearcontroller;
  final TextEditingController? startdatecontroller;
  final TextEditingController? enddatecontroller;
  final TextEditingController? regioncontroller;
  final TextEditingController? valuecontroller;
  final TextEditingController? periodcontroller;

  final ValueChanged<String?>? period;
  final ValueChanged<String?>? genderid;

  final VoidCallback? travelyearfunction;
  final GlobalKey<FormState>? formkey;
  const TravelInformationContainer(
      {super.key,
      this.periodcontroller,
      this.travelyearfunction,
      this.formkey,
      this.name,
      this.yearcontroller,
      this.regioncontroller,
      this.valuecontroller,
      this.enddatecontroller,
      this.startdatecontroller,
      this.namecontroller,
      this.period,
      this.genderid});

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
              Regions(
                regioncontroller: regioncontroller,
                width: double.infinity,
              ),
              YearPicker(
                controller: yearcontroller,
              ),
              CustomField(
                controller: periodcontroller,
                type: TextInputType.number,
                readonly: false,
                validator: RequiredValidator(errorText: "reqfield".tr()),
                onchanged: period,
                label: "period".tr(),
                width: double.infinity,
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
    final Box travel = Hive.box("travel");

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
                travel.put("birthdate", selectedYear.value);
                travel.put("age", result);
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
    final Box travel = Hive.box("travel");

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
                selecteddate.value = DateFormat("d/M/y").format(pickedYear);
                if (label == "Start Date" || label == "تاريخ البداية") {
                  travel.put("startdate",
                      DateFormat("yyyy-MM-dd HH:mm:ss").format(pickedYear));
                  startcontroller!.text = selecteddate.value.toString();
                } else {
                  travel.put("enddate",
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

class Regions extends HookConsumerWidget {
  final double? width;

  final TextEditingController? regioncontroller;

  const Regions({
    super.key,
    this.width,
    this.regioncontroller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final travel = Hive.box("travel");

    final selectedtravel = useState("");
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
                          await ref.read(getreregionsProvider(apitoken).future);
                      value.fold(
                          (l) => ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("contact".tr()))), (r) {
                        List<RegionModel> regions = r;

                        FocusScope.of(context).unfocus();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SimpleDialog(
                              title: const Text("selectregion").tr(),
                              children: regions.map((e) {
                                return SimpleDialogOption(
                                  onPressed: () async {
                                    selectedtravel.value =
                                        context.locale.languageCode == "en"
                                            ? e.name.toString()
                                            : e.name_ar.toString();
                                    regioncontroller!.text =
                                        selectedtravel.value.toString();
                                    travel.put("region", e.id);
                                    travel.put("regionname", e.name);

                                    await context.router.pop();
                                  },
                                  child: context.locale.languageCode == "ar"
                                      ? Text(e.name_ar!)
                                      : Text(e.name!),
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
                      labelText: "region".tr(),
                      hintStyle: const TextStyle(
                        color: Colors.black26,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    controller: regioncontroller,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
