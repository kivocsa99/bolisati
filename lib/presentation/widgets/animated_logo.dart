import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedLogo extends HookWidget {
  final double? width;
  final bool? islogodone;
  final bool? isStarted;
  final double? y;
  final double? x;
  final bool? isdone;
  final bool? isgettingmain;

  const AnimatedLogo({
    super.key,
    this.isgettingmain,
    this.isStarted,
    this.isdone,
    this.width,
    this.y,
    this.x,
    this.islogodone,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: !islogodone!
          ? MediaQuery.of(context).size.width / 2 - width!
          : context.locale.languageCode == "ar"
              ? -50
              : 50,
      top: isgettingmain!
          ? 30
          : (isdone!
              ? MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height / 4.5
              : (!isStarted! ? MediaQuery.of(context).size.height / 2 : 20)),
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
      child: AnimatedOpacity(
        duration: const Duration(seconds: 1),
        opacity: !isStarted! ? 0.4 : 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.png",
              color: islogodone == false ? Colors.white : Colors.blue,
            ),
            const SizedBox(
              width: 5,
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 1000),
              opacity: islogodone == true ? 0 : 1,
              child: Image.asset(
                "assets/bolisati.png",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
