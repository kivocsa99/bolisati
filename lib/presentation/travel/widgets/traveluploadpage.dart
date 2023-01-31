import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TravelUploadPage extends HookConsumerWidget {
  final VoidCallback? function0;
  final VoidCallback? function1;

  final List<String>? images;

  const TravelUploadPage({
    super.key,
    this.function0,
    this.function1,
    this.images,
  });

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
              bottom: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: SizedBox(
                  height: 100,
                  child: const Text("passportid").tr(),
                ),
              )),
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: GestureDetector(
              onTap: function0,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: images!.isEmpty
                    ? Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/passport.png",
                          width: 150,
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                      )
                    : SizedBox(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: images!
                                .map(
                                  (e) => Image.file(
                                    File(e),
                                    height: 80,
                                    width: 80,
                                    fit: BoxFit.fill,
                                  ),
                                )
                                .toList()),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
