import 'package:bolisati/application/motor/placeorder/place.order.use.case.dart';
import 'package:bolisati/application/motor/placeorder/place.order.use.case.input.dart';
import 'package:bolisati/domain/api/addons/model/addonsmodel.dart';
import 'package:bolisati/domain/api/medical/model/medicalmodel.dart';
import 'package:bolisati/domain/api/motor/model/motormodel.dart';
import 'package:bolisati/domain/api/travel/model/travelmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/api/motor/model/motororderdonemodel.dart';

class MedicalBottomSheet extends StatefulWidget {
  final MedicalOffersModel? medicalorder;
  final VoidCallback? function;
  const MedicalBottomSheet({super.key, this.function, this.medicalorder});

  @override
  State<MedicalBottomSheet> createState() => _MedicalBottomSheetState();
}

class _MedicalBottomSheetState extends State<MedicalBottomSheet> {
  final List<bool?> checked = List.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {
    final Box medical = Hive.box("medical");
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30.0, right: 30, top: 40, bottom: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset("assets/logo.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.medicalorder!.company!.name!,
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "${widget.medicalorder!.price.toString()} JOD",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  AddonsModel addonsModel = widget.medicalorder!.addons![index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              value: checked[index],
                              onChanged: (value) {
                                checked[index] = value;
                                int x = checked
                                    .where((element) => element == true)
                                    .toList()
                                    .length;

                                String loc = "";
                                List<String> locs = widget.medicalorder!.addons!
                                    .map((element) =>
                                        "&addons[]=${element.id.toString()}")
                                    .toList();
                                for (int q = 0; q < x; q++) {
                                  loc = loc + locs[q];
                                }

                                medical.put("addon", loc);
                                print(loc);
                                setState(() {});
                              }),
                          Text(
                            addonsModel.addon!.name!,
                            style: const TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Text(
                        "${addonsModel.price} JOD",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                },
                itemCount: widget.medicalorder!.addons!.length,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: widget.function,
                  child: Container(
                    color: Colors.black,
                    height: 60,
                    child:  Center(
                        child: Text(
                      "placeorder".tr(),
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
