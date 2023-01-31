import 'package:bolisati/domain/api/addons/model/addonsmodel.dart';
import 'package:bolisati/domain/api/medical/model/medicalmodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MedicalBottomSheet extends StatefulWidget {
  final MedicalOffersModel? medicalorder;
  final VoidCallback? function;
  const MedicalBottomSheet({super.key, this.function, this.medicalorder});

  @override
  State<MedicalBottomSheet> createState() => _MedicalBottomSheetState();
}

class _MedicalBottomSheetState extends State<MedicalBottomSheet> {
  final List<bool?> checked = List.generate(20, (index) => false);
  final List<int?> prices = [];
  final TextEditingController controller = TextEditingController();
  int? sum;

  @override
  void initState() {
    controller.text = "${widget.medicalorder!.price.toString()} ${"jod".tr()}";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Box medical = Hive.box("medical");
    return SizedBox(
      height: widget.medicalorder!.addons!.isNotEmpty
          ? MediaQuery.of(context).size.height / 2
          : MediaQuery.of(context).size.height / 3,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30.0, right: 30, top: 40, bottom: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ClipOval(
                      child: Image.network(
                        "https://bolisati.bitsblend.org/storage/${widget.medicalorder!.company!.image}",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    context.locale.languageCode == "en"
                        ? widget.medicalorder!.company!.name!
                        : widget.medicalorder!.company!.name_ar!,
                    style: const TextStyle(fontSize: 30),
                  )
                ]),
                Row(
                  children: [
                    Text(
                      "${widget.medicalorder!.price.toString()} ",
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text("jod").tr()
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            widget.medicalorder!.addons!.isNotEmpty
                ? Align(
                    alignment: context.locale.languageCode == "en"
                        ? Alignment.topLeft
                        : Alignment.topRight,
                    child: const Text(
                      "Addone",
                      style: TextStyle(fontSize: 20),
                    ).tr(),
                  )
                : const SizedBox.shrink(),
            widget.medicalorder!.addons!.isNotEmpty
                ? SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        AddonsModel addonsModel =
                            widget.medicalorder!.addons![index];
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
                                      List<String> locs = widget
                                          .medicalorder!.addons!
                                          .map((element) =>
                                              "&addons[]=${element.id.toString()}")
                                          .toList();
                                      for (int q = 0; q < x; q++) {
                                        loc = loc + locs[q];
                                      }
                                      print(loc);
                                      medical.put("addon", loc);
                                      checked[index] == true
                                          ? prices
                                              .add(addonsModel.price!.toInt())
                                          : prices.remove(
                                              addonsModel.price!.toInt());

                                      prices.isNotEmpty
                                          ? sum = prices.fold(
                                              0,
                                              (prev, element) =>
                                                  prev! + element!)
                                          : sum = 0;
                                      controller.text =
                                          ("${sum! + (widget.medicalorder!.price!.toInt())} ${"jod".tr()}");

                                      setState(() {});
                                    }),
                                context.locale.languageCode == "en"
                                    ? Text(
                                        addonsModel.addon!.name!,
                                        style: const TextStyle(fontSize: 20),
                                      )
                                    : Text(
                                        addonsModel.addon!.name_ar!,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "${addonsModel.price} ",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text("jod").tr()
                              ],
                            )
                          ],
                        );
                      },
                      itemCount: widget.medicalorder!.addons!.length,
                    ),
                  )
                : const SizedBox.shrink(),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: const Text("total").tr(),
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: controller,
                    textAlign: TextAlign.left,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedErrorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      contentPadding: const EdgeInsets.all(0),
                      hintText: "total".tr(),
                      hintStyle: const TextStyle(
                        color: Colors.black26,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: widget.function,
                  child: Container(
                    color: Colors.black,
                    height: 60,
                    child: Center(
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
