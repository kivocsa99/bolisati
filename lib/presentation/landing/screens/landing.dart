import 'package:auto_route/auto_route.dart';
import 'package:bolisati/presentation/auth/widgets/email.dart';
import 'package:bolisati/presentation/auth/widgets/name.dart';
import 'package:bolisati/presentation/auth/widgets/otp.dart';
import 'package:bolisati/presentation/auth/widgets/password.dart';
import 'package:bolisati/presentation/auth/widgets/welcome.dart';
import 'package:bolisati/presentation/widgets/main_widget.dart';
import 'package:bolisati/presentation/widgets/animated_bolisati.dart';
import 'package:bolisati/presentation/widgets/animated_buttons.dart';
import 'package:bolisati/presentation/widgets/animated_form.dart';
import 'package:bolisati/presentation/widgets/animated_landing_container.dart';
import 'package:bolisati/presentation/widgets/animated_logo.dart';
import 'package:bolisati/presentation/widgets/animated_video.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/auth/ali_api/use_cases/sign_up_with_email_and_password/sign_up_with_email_and_password.input.dart';
import '../../../application/auth/ali_api/use_cases/sign_up_with_email_and_password/sign_up_with_email_and_password.use_case.dart';
import '../../../application/auth/ali_api/use_cases/update/update_use_case.dart';
import '../../../application/auth/ali_api/use_cases/update/update_use_case.input.dart';
import '../../../domain/api/user/model/usermodel.dart';
import '../../../main.dart';
import '../../auth/widgets/PhoneNumber.dart';

class LandingScreen extends HookConsumerWidget {
  final BoxConstraints? constraints;

  const LandingScreen({super.key, this.constraints});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Box setting = Hive.box("setting");
    MediaQuery.of(context).removePadding(removeTop: true);
    final passswordController = useTextEditingController();
    final otpcontroller = useTextEditingController();
    final nameformkey = useState(GlobalKey<FormState>());
    final otpformkey = useState(GlobalKey<FormState>());
    final phoneformkey = useState(GlobalKey<FormState>());
    final emailformkey = useState(GlobalKey<FormState>());
    final passformkey = useState(GlobalKey<FormState>());
    final islogodone = useState(false);
    final isstarted = useState(false);
    final islogostarted = useState(false);
    final isLoginFormStarted = useState(false);
    final isloginended = useState(false);
    final isgettingmain = useState(false);
    final user = useState(const UserModel());
    final myfuture = useMemoized(() async {
      await Future.delayed(const Duration(microseconds: 200), () {
        isstarted.value = true;
        islogostarted.value = true;
      });
    }, []);
    useFuture(myfuture);
    List<Widget> registercases = [
      PhoneNumberField(
        validator: MultiValidator([
          // PatternValidator((r'^(?!0)\d+$'),
          //     errorText: "Please Provide a correct phonenumber"),
          RequiredValidator(errorText: "reqfield".tr()),
          LengthRangeValidator(
              min: 10, max: 10, errorText: "Please Provide a 10 digit phone")
        ]),
        formkey: phoneformkey.value,
        onchanged: (value) => user.value = user.value.copyWith(phone: value),
        key: const Key("0"),
      ),
      OtpVerfication(
        validator: MultiValidator([
          RequiredValidator(errorText: "reqfield".tr()),
          LengthRangeValidator(
              min: 6, max: 6, errorText: "Please Provide a 6 digit code")
        ]),
        formkey: otpformkey.value,
        controller: otpcontroller,
        key: const Key("1"),
      ),
      NameField(
        validator: RequiredValidator(errorText: "reqfield".tr()),
        formkey: nameformkey.value,
        onchanged: (value) => user.value = user.value.copyWith(name: value),
        key: const Key("2"),
      ),
      EmailField(
        validator: RequiredValidator(errorText: "reqfield".tr()),
        formkey: emailformkey.value,
        onchanged: (value) => user.value = user.value.copyWith(email: value),
        key: const Key("3"),
      ),
      PasswordField(
        obscureText: true,
        validator: MultiValidator([
          RequiredValidator(errorText: "reqfield".tr()),
          LengthRangeValidator(
              min: 8,
              max: 20,
              errorText: "Please Provide a password between 8 and 20 digits")
        ]),
        controller: passswordController,
        formkey: passformkey.value,
        key: const Key("4"),
      ),
      WelcomeAboard(
        name: user.value.name,
        key: const Key("5"),
      ),
      const MainScreen(
        key: Key("6"),
      )
    ];

    final index = useState(0);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: constraints!.maxHeight,
        width: constraints!.maxWidth,
        child: Stack(
          children: [
            AnimatedLandingContainer(
              isStarted: isstarted.value,
              width: constraints!.maxWidth,
              function1: () async {
                islogodone.value = true;
                isstarted.value = false;
                isLoginFormStarted.value = true;
              },
              function: () async {
                context.router.push(const LoginScreen());
              },
            ),
            AnimatedVideo(
              isStarted: isstarted.value,
              width: constraints!.maxWidth,
            ),
            AnimatedLogo(
              isgettingmain: isgettingmain.value,
              isdone: isloginended.value,
              isStarted: islogostarted.value,
              islogodone: islogodone.value,
              width: 50,
            ),
            AnimatedSignUpForm(
              isgettingmain: isgettingmain.value,
              isdone: isloginended.value,
              isStarted: isLoginFormStarted.value,
              width: constraints!.maxWidth,
              index: index.value,
              list: registercases,
              function: () async {
                if (index.value == 0 &&
                    phoneformkey.value.currentState!.validate()) {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                      phoneNumber: "+962${user.value.phone!.substring(1)}",
                      verificationCompleted: (verificationCompleted) {},
                      verificationFailed: (verificationFailed) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(verificationFailed.toString())));
                      },
                      codeSent: (value, codeSent) {
                        setting.put("firebase", value);
                        final isLaseIndex =
                            index.value == registercases.length - 1;
                        index.value = isLaseIndex ? 0 : index.value + 1;
                      },
                      codeAutoRetrievalTimeout: (codeAutoRetrievalTimeout) {});
                } else if (index.value == 1 &&
                    otpformkey.value.currentState!.validate()) {
                  final phone = PhoneAuthProvider.credential(
                      verificationId: setting.get("firebase"),
                      smsCode: otpcontroller.text);
                  try {
                    await FirebaseAuth.instance.signInWithCredential(phone);
                    final isLaseIndex = index.value == registercases.length - 1;
                    index.value = isLaseIndex ? 0 : index.value + 1;
                  } catch (error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(error.toString())));
                  }
                } else if (index.value == 2 &&
                    nameformkey.value.currentState!.validate()) {
                  final isLaseIndex = index.value == registercases.length - 1;
                  index.value = isLaseIndex ? 0 : index.value + 1;
                } else if (index.value == 3 &&
                    emailformkey.value.currentState!.validate()) {
                  final isLaseIndex = index.value == registercases.length - 1;
                  index.value = isLaseIndex ? 0 : index.value + 1;
                } else if (index.value == 4 &&
                    passformkey.value.currentState!.validate()) {
                  await setting.put("name", user.value.name);
                  await ref
                      .read(signUpWithEmailAndPasswordUseCaseProvider)
                      .execute(SignUpWithEmailAndPasswordUseCaseInput(
                          user: user.value, password: passswordController.text))
                      .then(
                        (result) => result.fold(
                          (l) async => ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(
                                  content: const Text("contact").tr())),
                          (r) async {
                            ref
                                .read(updateuserprovider)
                                .execute(UpdateUserInput(
                                  urlvalue: "fcm_token",
                                  token: r,
                                  value: token,
                                ))
                                .then((value) => value.fold(
                                        (l) => ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content: const Text("contact")
                                                    .tr())), (r) async {
                                      isLoginFormStarted.value = false;
                                      isloginended.value = true;
                                      index.value = 5;
                                      await Future.delayed(
                                        const Duration(seconds: 2),
                                        () async {
                                          index.value = 6;
                                          isgettingmain.value = true;
                                        },
                                      );
                                    }));
                          },
                        ),
                      );
                }
              },
            ),
            AnimatedBolisati(
              isgettingui: isgettingmain.value,
            ),
            AnimatedButtons(
              isgettingui: isgettingmain.value,
            )
          ],
        ),
      ),
    );
  }
}
