import 'package:bolisati/presentation/auth/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../auth/widgets/PhoneNumber.dart';
import '../../auth/widgets/email.dart';
import '../../auth/widgets/name.dart';
import '../../auth/widgets/otp.dart';

class LandingScreen extends HookWidget {
  final BoxConstraints? constraints;
  const LandingScreen({super.key, this.constraints});

  @override
  Widget build(BuildContext context) {
    final index = useState(0);
    List cases = const [
      PhoneNumberField(
        key: Key("0"),
      ),
      OtpVerfication(key: Key("1")),
      NameField(
        key: Key("2"),
      ),
      EmailField(
        key: Key("3"),
      ),
      WelcomeAboard(
        key: Key("4"),
      )
    ];
    final isdone = useState(false);
    final islogodone = useState(false);
    final islogin = useState(false);
    final logindone = useState(false);
    final vidstartPos = useState(-4.0);
    final constartPos = useState(4.0);

    final videndPos = useState(0.0);
    final conendPos = useState(0.0);
    final logostartPos = useState(const Offset(0, 6));
    final logoendPos = useState(const Offset(0, 0.8));
    final loginformstartpos = useState(const Offset(0, 1));
    final loginformendpos = useState(const Offset(0, 0.1));
    Curve curve = Curves.easeIn;
    final endoffset = useState(const Offset(0, 0));
    List<Widget> firststack = [
      TweenAnimationBuilder(
        tween: Tween<Offset>(
            begin: Offset(0, vidstartPos.value),
            end: Offset(0, videndPos.value)),
        duration: const Duration(seconds: 1),
        curve: curve,
        builder: (context, offset, child) {
          print(offset);
          return FractionalTranslation(
            translation: offset,
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: child,
              ),
            ),
          );
        },
        child: Image.asset(
          "assets/video.png",
          width: constraints!.maxWidth,
          height: MediaQuery.of(context).size.height / 1.5,
          fit: BoxFit.fitWidth,
        ),
        onEnd: () {
          isdone.value = true;
        },
      ),
      islogin.value == true
          ? Align(
              alignment: Alignment.bottomCenter,
              child: TweenAnimationBuilder(
                tween: Tween<Offset>(
                    begin: loginformstartpos.value, end: loginformendpos.value),
                duration: const Duration(seconds: 1),
                curve: curve,
                builder: (context, offset, child) {
                  print("$offset loginform");
                  return FractionalTranslation(
                    translation: offset,
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: child,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: [
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      child: cases[index.value],
                    ),
                    index.value != 4
                        ? Align(
                            alignment: Alignment.bottomCenter,
                            child: GestureDetector(
                              onTap: () async {
                                print("istapped");
                                print(index.value);
                                print(cases[index.value]);
                                if (index.value == 3) {
                                  logindone.value = true;
                                  loginformendpos.value = const Offset(0, 3.8);
                                  logoendPos.value = const Offset(-0.3, 11.5);
                                  Future.delayed(const Duration(seconds: 2),
                                      () async {
                                    logoendPos.value = const Offset(-0.3, 0.8);
                                    loginformendpos.value =
                                        const Offset(0.0, 0.2);
                                  });
                                }
                                final isLaseIndex =
                                    index.value == cases.length - 1;
                                index.value = isLaseIndex ? 0 : index.value + 1;
                              },
                              child: Container(
                                color: Colors.black,
                                width: 315,
                                height: 60,
                                child: const Center(
                                    child: Text(
                                  "Confirm",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                ),
                onEnd: () {
                  isdone.value = true;
                },
              ),
            )
          : const SizedBox.shrink(),
      TweenAnimationBuilder(
        tween: Tween<Offset>(begin: logostartPos.value, end: logoendPos.value),
        duration: const Duration(seconds: 1),
        curve: curve,
        builder: (context, offset, child) {
          print("$offset logo offeset");
          return FractionalTranslation(
            translation: offset,
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: child,
              ),
            ),
          );
        },
        child: AnimatedOpacity(
          duration: const Duration(seconds: 1),
          opacity: isdone.value == false ? 0.4 : 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                color: islogodone.value == false ? Colors.white : Colors.blue,
              ),
              const SizedBox(
                width: 5,
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 800),
                opacity: islogodone.value == true ? 0 : 1,
                child: Image.asset(
                  "assets/bolisati.png",
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        onEnd: () {
          isdone.value = true;
        },
      ),
    ];
    List<Widget> secondstack = [
      TweenAnimationBuilder(
        tween: Tween<Offset>(
            begin: Offset(0, constartPos.value),
            end: Offset(0, conendPos.value)),
        duration: const Duration(seconds: 1),
        curve: curve,
        builder: (context, offset, child) {
          return FractionalTranslation(
            translation: offset,
            child: SizedBox(
              width: double.infinity,
              child: Center(
                child: child,
              ),
            ),
          );
        },
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: constraints!.maxWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "For A Better \nFuture.",
                    style: TextStyle(fontSize: 36),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 14),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        islogodone.value = true;
                        logoendPos.value =
                            logoendPos.value - const Offset(0.25, 0);
                        videndPos.value = -4.0;
                        conendPos.value = 4.0;
                        Future.delayed(const Duration(milliseconds: 600),
                            () => islogin.value = true);
                      },
                      child: Container(
                        decoration: const BoxDecoration(color: Colors.black),
                        height: 60,
                        width: 150,
                        child: const Center(
                          child: Text(
                            "Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(color: Colors.grey),
                      height: 60,
                      width: 150,
                      child: const Center(
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        onEnd: () {
          isdone.value = true;
        },
      )
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: constraints!.maxHeight,
          child: Column(
            children: [
              Stack(
                children: firststack,
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: Stack(children: secondstack),
              )
            ],
          ),
        ),
      ),
    );
  }
}
