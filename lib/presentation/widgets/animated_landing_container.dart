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
        bottom: !isStarted! ? -MediaQuery.of(context).size.height / 2 : 20,
        duration: const Duration(seconds: 1),
        child: Container(
          color: Colors.white,
          width: width,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: context.locale.languageCode == "ar"
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: const Text(
                    "future",
                    style: TextStyle(fontSize: 36),
                  ).tr(),
                ),
                Align(
                    alignment: context.locale.languageCode == "ar"
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: const Text(
                      "noacc",
                      style: TextStyle(fontSize: 14),
                    ).tr()),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: function,
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.black),
                        height: 60,
                        width: 150,
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
                        width: 150,
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
                )
              ],
            ),
          ),
        ));
  }
}
