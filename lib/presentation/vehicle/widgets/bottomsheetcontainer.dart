import 'package:bolisati/domain/api/addons/model/addonsmodel.dart';
import 'package:bolisati/domain/api/motor/model/motormodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyWidget extends StatefulWidget {
  final MotorOffersModel? offerModel;
  final VoidCallback? function;
  final VoidCallback? ontap;
  final ValueChanged<bool?>? onchanged;
  final bool? value;

  const MyWidget(
      {super.key,
      this.onchanged,
      this.value,
      this.function,
      this.ontap,
      this.offerModel});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<bool?> checked = List.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {
    final Box car = Hive.box("car");
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30.0, right: 30, top: 40, bottom: 10),
        child: Column(
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
                Align(
                  child: Text(
                    context.locale.languageCode == "en"
                        ? widget.offerModel!.company!.name!
                        : widget.offerModel!.company!.name_ar!,
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
                Text(
                  "${widget.offerModel!.price_from.toString()}JOD",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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

                                car.put("addon", loc);

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
                      Text(
                        "${addonsModel.price} JOD",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                },
                itemCount: widget.offerModel!.addons!.length,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () async {
                    await launchUrl(Uri.parse(""));
                  },
                  child: const Text(
                    "privacy",
                    style: TextStyle(color: Colors.blue),
                  ).tr(),
                ),
                CupertinoSwitch(
                  value: car.get("checked") ?? false,
                  onChanged: (value) {
                    setState(() {
                      car.put("checked", value);
                    });
                  },
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: widget.function,
                  child: Container(
                    color:
                        car.get("checked") == true ? Colors.black : Colors.grey,
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
