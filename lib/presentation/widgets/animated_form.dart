import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedSignUpForm extends HookWidget {
  final double? width;
  final VoidCallback? function;
  final List<Widget>? list;
  final int? index;
  final bool? isStarted;
  final bool? isdone;
  final bool? isgettingmain;
  const AnimatedSignUpForm(
      {super.key,
      this.isgettingmain,
      this.isStarted,
      this.width,
      this.isdone,
      this.function,
      this.list,
      this.index});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      top: isgettingmain!
          ? 100
          : (isdone!
              ? MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height / 6.5
              : (!isStarted! ? MediaQuery.of(context).size.height : 90)),
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
      child: SizedBox(
        width: width,
        child: Form(
          child: Column(
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: list![index!],
              ),
              index != 5 && index != 6
                  ? GestureDetector(
                      onTap: function,
                      child: Container(
                        color: Colors.black,
                        width: 315,
                        height: 60,
                        child: Center(
                            child: const Text(
                          "confirm",
                          style: TextStyle(color: Colors.white),
                        ).tr()),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
