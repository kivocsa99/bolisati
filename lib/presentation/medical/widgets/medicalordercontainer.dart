import 'package:bolisati/constants.dart';
import 'package:bolisati/domain/api/medical/model/medicalmodel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class MedicalOrderOffersContainer extends HookConsumerWidget {
  final List<MedicalOffersModel>? offers;
  const MedicalOrderOffersContainer({super.key, this.offers});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box medical = Hive.box("medical");
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
                    MedicalOffersModel e = offers![index];

                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            selectedindex.value = index;
                            await medical.put("medicalid", e.id);
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
                                        color: medicalcontainer,
                                        child: const Icon(
                                          FontAwesomeIcons.houseMedical,
                                          color: medicalcolor,
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
                                    "${e.price.toString()} JOD",
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

    // return SizedBox(
    //   width: double.infinity,
    //   child:
    //   ValueListenableBuilder(
    //     valueListenable: setting.listenable(),
    //     builder: (context, Box box, child) {
    //       final apitoken = box.get("apitoken");
    //       ;
    //       // return getoffer.when(
    //       //     data: (data) {
    //       //       return data.fold((l) {
    //       //         return Column(
    //       //           children: [
    //       //             const SizedBox(
    //       //               height: 200,
    //       //             ),
    //       //             Text("${l.toString()} please contact us")
    //       //           ],
    //       //         );
    //       //       }, (r) {
    //       //         List<MotorOrderModel> offers = r;
    //       //         return Column(
    //       //             children: offers.map((e) => Text("hello")).toList());
    //       //       });
    //       //     },
    //       //     error: (error, stacktrace) {
    //       //       return Column(
    //       //         children: [
    //       //           const SizedBox(
    //       //             height: 200,
    //       //           ),
    //       //           Text("${error} please contact us")
    //       //         ],
    //       //       );
    //       //     },
    //       //     loading: () => SpinKitThreeBounce());
    //     },
    //   ),
    // );
  }
}

class OfferContainer extends StatelessWidget {
  const OfferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
