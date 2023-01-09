import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CarPictiresContainer extends HookConsumerWidget {
  final VoidCallback? function0;
  final VoidCallback? function1;
  final VoidCallback? function2;
  final VoidCallback? function3;
  final File? image0;
  final File? image1;
  final File? image2;
  final File? image3;

  const CarPictiresContainer(
      {super.key,
      this.image0,
      this.image1,
      this.image2,
      this.image3,
      this.function0,
      this.function1,
      this.function2,
      this.function3});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Stack(
        children: [
          Positioned(
            left: MediaQuery.of(context).size.width / 2.4,
            child: Container(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              height: MediaQuery.of(context).size.height / 2,
              child: const VerticalDivider(
                thickness: 2,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height / 2,
              child: const Divider(
                thickness: 2,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: -210,
            top: -110,
            child: GestureDetector(
              onTap: function0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: image0 == null || image0!.path == ""
                    ? SizedBox(
                        child: Image.asset(
                          "assets/front.png",
                          scale: 0.5,
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: Image.file(
                          image0!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 0,
            right: -200,
            bottom: 0,
            child: GestureDetector(
              onTap: function1,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: image1 == null || image1!.path == ""
                    ? Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/right.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: Image.file(
                          image1!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            bottom: -120,
            child: GestureDetector(
              onTap: function2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: image2 == null || image2!.path == ""
                    ? Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/left.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: Image.file(
                          image2!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 110,
            child: GestureDetector(
              onTap: function3,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: image3 == null || image3!.path == ""
                    ? Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/back.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      )
                    : Container(
                        alignment: Alignment.center,
                        child: Image.file(
                          image3!,
                          height: 150,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
