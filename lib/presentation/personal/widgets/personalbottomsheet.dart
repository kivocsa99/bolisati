import 'package:bolisati/domain/api/personal/model/personaloffermodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/api/addons/model/addonsmodel.dart';

class PersonalBottomSheet extends StatefulWidget {
  final PersonalOfferModel? offerModel;
  final VoidCallback? function;
  const PersonalBottomSheet({super.key, this.function, this.offerModel});

  @override
  State<PersonalBottomSheet> createState() => _PersonalBottomSheetState();
}

class _PersonalBottomSheetState extends State<PersonalBottomSheet> {
  final List<bool?> checked = List.generate(20, (index) => false);
  final List<int?> prices = [];
  final TextEditingController controller = TextEditingController();
  int? sum;

  @override
  void initState() {
    controller.text = "${widget.offerModel!.price.toString()} ${"jod".tr()}";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Box personal = Hive.box("personal");
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
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
                        "https://bolisati.bitsblend.org/storage/${widget.offerModel!.company!.image}",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    context.locale.languageCode == "en"
                        ? widget.offerModel!.company!.name!
                        : widget.offerModel!.company!.name_ar!,
                    style: const TextStyle(fontSize: 30),
                  )
                ]),
                Row(
                  children: [
                    Text(
                      "${widget.offerModel!.price.toString()} ",
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
            Align(
              alignment: context.locale.languageCode == "en"
                  ? Alignment.topLeft
                  : Alignment.topRight,
              child: const Text(
                "Addone",
                style: TextStyle(fontSize: 20),
              ).tr(),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  AddonsModel addonsModel = widget.offerModel!.addons![index];
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
                                List<String> locs = widget.offerModel!.addons!
                                    .map((element) =>
                                        "&addons[]=${element.id.toString()}")
                                    .toList();
                                for (int q = 0; q < x; q++) {
                                  loc = loc + locs[q];
                                }

                                personal.put("addon", loc);
                                checked[index] == true
                                    ? prices.add(addonsModel.price!.toInt())
                                    : prices.remove(addonsModel.price!.toInt());

                                prices.isNotEmpty
                                    ? sum = prices.fold(
                                        0, (prev, element) => prev! + element!)
                                    : sum = 0;
                                controller.text =
                                    ("${sum! + (widget.offerModel!.price!.toInt())} ${"jod".tr()}");

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
                itemCount: widget.offerModel!.addons!.length,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: const Text("total").tr(),
            ),
            TextField(
              controller: controller,
              textAlign: TextAlign.center,
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
