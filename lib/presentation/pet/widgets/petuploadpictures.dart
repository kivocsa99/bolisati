import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PetPicturesContainer extends HookConsumerWidget {
  final VoidCallback? function0;
  final VoidCallback? function1;
  final File? image0;
  final File? image1;
  final File? image2;
  final File? image3;
  const PetPicturesContainer(
      {super.key,
      this.function0,
      this.function1,
      this.image0,
      this.image1,
      this.image2,
      this.image3});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      child: Stack(
        children: [
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
            left: 0,
            right: 0,
            bottom: 100,
            child: GestureDetector(
              onTap: function0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: image1 == null || image1!.path == ""
                    ? Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/id.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      )
                    : SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.file(
                                image0!,
                                height: 150,
                                width: 150,
                                fit: BoxFit.fill,
                              ),
                              Image.file(
                                image1!,
                                height: 150,
                                width: 150,
                                fit: BoxFit.fill,
                              )
                            ]),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
