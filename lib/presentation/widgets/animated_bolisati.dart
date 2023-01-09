import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedBolisati extends HookWidget {
  final bool? isgettingui;
  const AnimatedBolisati({super.key, this.isgettingui});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: !isgettingui!
          ? MediaQuery.of(context).size.width / 2 - 90
          : MediaQuery.of(context).size.width / 2 - 130,
      top: 30,
      duration: const Duration(seconds: 1),
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: !isgettingui! ? 0 : 1,
        child: Image.asset(
          "assets/bolisati.png",
          color: Colors.black,
        ),
      ),
    );
  }
}
