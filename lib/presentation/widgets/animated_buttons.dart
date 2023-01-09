import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedButtons extends HookWidget {
  final bool? isgettingui;
  const AnimatedButtons({super.key, this.isgettingui});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      top: 30,
      child: AnimatedOpacity(
          duration: const Duration(milliseconds: 1000),
          opacity: !isgettingui! ? 0 : 1,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.bell)),
              IconButton(
                  onPressed: () {}, icon: const Icon(FontAwesomeIcons.user)),
            ],
          )),
    );
  }
}
