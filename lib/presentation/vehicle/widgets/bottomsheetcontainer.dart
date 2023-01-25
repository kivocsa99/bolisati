import 'package:bolisati/domain/api/addons/model/addonsmodel.dart';
import 'package:bolisati/domain/api/motor/model/motormodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MyWidget extends StatefulWidget {
  final MotorOffersModel? offerModel;
  final VoidCallback? function;
  final VoidCallback? ontap;
  final ValueChanged<bool?>? onchanged;
  final bool? ordering;
  final bool? value;

  const MyWidget(
      {super.key,
      this.onchanged,
      this.ordering,
      this.value,
      this.function,
      this.ontap,
      this.offerModel});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<bool?> checked = List.generate(100, (index) => false);
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
    final Box car = Hive.box("car");
    return SizedBox(
      height: widget.offerModel!.addons!.isNotEmpty
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
            widget.offerModel!.addons!.isNotEmpty
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
            widget.offerModel!.addons!.isNotEmpty
                ? SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        AddonsModel addonsModel =
                            widget.offerModel!.addons![index];
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
                                          .offerModel!.addons!
                                          .map((element) =>
                                              "&addons[]=${element.id.toString()}")
                                          .toList();
                                      for (int q = 0; q < x; q++) {
                                        loc = loc + locs[q];
                                      }

                                      car.put("addon", loc);
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
                  )
                : const SizedBox.shrink(),
            const SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: const Text("total").tr(),
            ),
            TextField(
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
