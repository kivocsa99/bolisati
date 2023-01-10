import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/domestic/model/domesticoffermodel.dart';
import 'package:bolisati/domain/api/motor/model/motormodel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class DomesticOrderOffersContainer extends HookConsumerWidget {
  final List<DomesticOfferModel>? offers;
  const DomesticOrderOffersContainer({super.key, this.offers});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box domestic = Hive.box("domestic");
    final selectedindex = useState(-1);
    return SizedBox(
        width: double.infinity,
        child: offers!.isEmpty
            ? Column(
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  Center(child: Text("No Offers for now, please contact us")),
                  SizedBox(
                    height: 50,
                  )
                ],
              )
            : SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    DomesticOfferModel e = offers![index];

                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            selectedindex.value = index;
                            await domestic.put("domesticid", e.id);
                          },
                          child: Container(
                            width: 350,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Stack(children: [
                                Positioned(
                                  left: 0,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 40,
                                        height: 40,
                                        color: carcontainer,
                                        child: const Icon(
                                          FontAwesomeIcons.briefcase,
                                          color: carcolor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        e.company!.name!,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  left: 5,
                                  top: 50,
                                  child: Column(
                                    children: e.addons!
                                        .map((addon) => Column(
                                              children: [
                                                Row(children: [
                                                  const Icon(FontAwesomeIcons
                                                      .shieldHalved),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                      "${addon.addon!.name!}(${addon.price})")
                                                ]),
                                                const SizedBox(
                                                  height: 10,
                                                )
                                              ],
                                            ))
                                        .toList(),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 10,
                                  child: Text(
                                    "${e.price.toString()}JOD/mo",
                                    style: const TextStyle(color: Colors.blue),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 10,
                                  child: Checkbox(
                                    value: index == selectedindex.value,
                                    onChanged: (value) {},
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                  itemCount: offers!.length,
                ),
              ));
  }
}
