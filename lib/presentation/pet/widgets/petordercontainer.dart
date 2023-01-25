import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bolisati/domain/api/pet/model/petoffermodel.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../router/app_route.gr.dart';

class PetOrderContainer extends HookConsumerWidget {
  final List<PetOffersModel>? offers;
  const PetOrderContainer({super.key, this.offers});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box pet = Hive.box("pet");
    final selectedindex = useState(-1);
    return SizedBox(
        width: double.infinity,
        child: offers!.isEmpty
            ? Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Center(child: const Text("nooffer").tr()),
                  const SizedBox(
                    height: 50,
                  )
                ],
              )
            : SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    PetOffersModel e = offers![index];

                    return Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              selectedindex.value = index;
                              await pet.put("petid", e.id);
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 30.0, right: 30.0, top: 20, bottom: 20),
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.08),
                                    spreadRadius: 5,
                                    blurRadius: 25,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Stack(children: [
                                context.locale.languageCode == "en"
                                    ? Positioned(
                                        left: 0,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                                width: 40,
                                                height: 40,
                                                child: ClipOval(
                                                    child: Image.network(
                                                        "https://bolisati.bitsblend.org/storage/${e.company!.image}"))),
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
                                      )
                                    : Positioned(
                                        right: 0,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 40,
                                              height: 40,
                                              child: ClipOval(
                                                  child: Image.network(
                                                      "https://bolisati.bitsblend.org/storage/${e.company!.image}")),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              e.company!.name_ar!,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                context.locale.languageCode == "en"
                                    ? Positioned(
                                        right: 0,
                                        left: 0,
                                        top: 50,
                                        child: SizedBox(
                                          height: 90,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: e.addons!
                                                  .map(
                                                      (addon) => Row(children: [
                                                            SvgPicture.asset(
                                                                'assets/add.svg'),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                                "${addon.addon!.name!} (${addon.price} ${"jod".tr()})")
                                                          ]))
                                                  .toList(),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Positioned(
                                        left: 0,
                                        right: 0,
                                        top: 50,
                                        child: SizedBox(
                                          height: 90,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: e.addons!
                                                  .map(
                                                      (addon) => Row(children: [
                                                            SvgPicture.asset(
                                                                'assets/add.svg'),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                                "${addon.addon!.name_ar!} (${addon.price} ${"jod".tr()})")
                                                          ]))
                                                  .toList(),
                                            ),
                                          ),
                                        ),
                                      ),
                                context.locale.languageCode == "en"
                                    ? Positioned(
                                        right: 0,
                                        top: 10,
                                        child: Text(
                                          "${e.price.toString()} ${"jod".tr()}",
                                          style: const TextStyle(
                                              color: Colors.blue),
                                        ),
                                      )
                                    : Positioned(
                                        left: 0,
                                        top: 10,
                                        child: Text(
                                          "${e.price.toString()} ${"jod".tr()}",
                                          style: const TextStyle(
                                              color: Colors.blue),
                                        ),
                                      ),
                                context.locale.languageCode == "en"
                                    ? Positioned(
                                        right: 0,
                                        bottom: 10,
                                        child: Checkbox(
                                          value: index == selectedindex.value,
                                          onChanged: (value) {},
                                        ),
                                      )
                                    : Positioned(
                                        left: -10,
                                        bottom: -10,
                                        child: Checkbox(
                                          value: index == selectedindex.value,
                                          onChanged: (value) {},
                                        ),
                                      ),
                                Positioned(
                                    bottom: 0,
                                    child: GestureDetector(
                                      onTap: () async {
                                        final hello = await PDFDocument.fromURL(
                                            "https://bolisati.bitsblend.org/storage/${e.company!.pdf}");

                                        context.router
                                            .push(PdfScreen(url: hello));
                                      },
                                      child: Row(
                                        children: [
                                          const Icon(
                                            FontAwesomeIcons.filePdf,
                                            size: 15,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            "read",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 10),
                                          ).tr(),
                                        ],
                                      ),
                                    ))
                              ]),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
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
    //       //             Text("contact".tr())
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
