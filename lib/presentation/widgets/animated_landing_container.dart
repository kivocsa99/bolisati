import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedLandingContainer extends HookWidget {
  final double? width;
  final VoidCallback? function;
  final VoidCallback? function1;

  final double? y;
  final double? x;
  final bool? isStarted;

  const AnimatedLandingContainer(
      {super.key,
      this.width,
      this.y,
      this.x,
      this.function1,
      this.function,
      this.isStarted});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        curve: Curves.easeIn,
        bottom: !isStarted! ? -MediaQuery.of(context).size.height / 2 : 30,
        duration: const Duration(seconds: 1),
        child: Container(
          color: Colors.white,
          width: width,
          height: MediaQuery.of(context).size.height / 5,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, bottom: 0, top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  child: Align(
                    alignment: context.locale.languageCode == "ar"
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    child: const Text(
                      "future",
                      style: TextStyle(fontSize: 36),
                    ).tr(),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                    alignment: context.locale.languageCode == "ar"
                        ? Alignment.bottomRight
                        : Alignment.bottomLeft,
                    child: const Text(
                      "noacc",
                      style: TextStyle(fontSize: 14),
                    ).tr()),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: function,
                          child: Container(
                            decoration:
                                const BoxDecoration(color: Colors.black),
                            height: 60,
                            width: 180,
                            child: Center(
                              child: Text(
                                "login".tr(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: function1,
                          child: Container(
                            decoration: const BoxDecoration(color: Colors.grey),
                            height: 60,
                            width: 180,
                            child: Center(
                              child: Text(
                                "signup".tr(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
