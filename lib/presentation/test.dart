
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
//test api = XV7xRge8DEh600pXEL3gu05IUaBh5Ani
class Test extends HookConsumerWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
          child: IconButton(
        icon: const Icon(Icons.play_arrow),
        onPressed: () {
          
        },
      )),
    );
  }
}
//----------------
//sign in method
     // ref
          //     .read(signInWithEmailAndPasswordUseCaseProvider)
          //     .execute(SignInWithEmailAndPasswordUseCaseInput(
          //         email: "0788203782", password: "fahmi12345"))
          //     .then((value) => value.fold((l) => print(l), (r) {
          //           UserModel user = r;
          //           print("-------------$user");
          //         }));
//-----------------    