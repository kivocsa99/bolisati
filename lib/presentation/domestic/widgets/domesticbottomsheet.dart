import 'package:bolisati/domain/api/domestic/model/domesticoffermodel.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../domain/api/addons/model/addonsmodel.dart';

class DomesticBottomSheet extends StatefulWidget {
  final DomesticOfferModel? offerModel;
  final VoidCallback? function;
  const DomesticBottomSheet({super.key, this.function, this.offerModel});

  @override
  State<DomesticBottomSheet> createState() => _DomesticBottomSheetState();
}

class _DomesticBottomSheetState extends State<DomesticBottomSheet> {
  final List<bool?> checked = List.generate(20, (index) => false);
  @override
  Widget build(BuildContext context) {
    final Box domestic = Hive.box("domestic");
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
                  widget.offerModel!.company!.name!,
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "${widget.offerModel!.price.toString()}JOD/year",
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

                                domestic.put("addon", loc);

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
                itemCount: widget.offerModel!.addons!.length,
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
                    child: const Center(
                        child: Text(
                      "Place Order",
                      style: TextStyle(color: Colors.white),
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
