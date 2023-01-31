import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedVideo extends HookWidget {
  final double? width;
  final bool? isStarted;
  final double? y;
  final double? x;
  const AnimatedVideo({super.key, this.width, this.x, this.y, this.isStarted});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.easeIn,
      top: !isStarted! ? -MediaQuery.of(context).size.height : 0,
      duration: const Duration(seconds: 1),
      child: Image.asset(
        "assets/amman.gif",
        width: width,
        height: MediaQuery.of(context).size.height / 1.4,
        fit: BoxFit.fill,
      ),
    );
  }
}
