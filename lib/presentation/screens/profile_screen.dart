import 'package:auto_route/auto_route.dart';
import 'package:bolisati/presentation/domestic/widgets/domesticinformationcontainer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/auth/ali_api/use_cases/update/update_use_case.dart';
import '../../application/auth/ali_api/use_cases/update/update_use_case.input.dart';

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final namecontroller = useTextEditingController();
    final emailcontroller = useTextEditingController();
    final passwordcontroller = useTextEditingController();
    final phonecontroller = useTextEditingController();
    final namekey = useState(GlobalKey<FormState>());
    final emailkey = useState(GlobalKey<FormState>());
    final passwordkey = useState(GlobalKey<FormState>());
    final phonekey = useState(GlobalKey<FormState>());

    final Box user = Hive.box("setting");
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              context.locale.languageCode == "en"
                  ? Positioned(
                      left: 20,
                      top: 30,
                      child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new)))
                  : Positioned(
                      right: 20,
                      top: 30,
                      child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: const Icon(FontAwesomeIcons.arrowRight))),
              Positioned(
                  left: context.locale.languageCode == "ar" ? 0 : 80,
                  right: context.locale.languageCode == "ar" ? 80 : 0,
                  top: 40,
                  child: const Text(
                    "profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ).tr()),
              Positioned(
                top: 70,
                left: 20,
                right: 20,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      ProfileContainer(
                        title: "name".tr(),
                        subtitle: user.get("name"),
                        ontap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/logo.png",
                                        scale: 1.5,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'namechange',
                                      ).tr(),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: namekey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText: "reqfield".tr()),
                                        readonly: false,
                                        controller: namecontroller,
                                        type: TextInputType.text,
                                        label: "name".tr(),
                                        width: double.infinity,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 40.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (namekey.value.currentState!
                                              .validate()) {
                                            ref
                                                .read(updateuserprovider)
                                                .execute(UpdateUserInput(
                                                  urlvalue: "name",
                                                  token: user.get("apitoken"),
                                                  value: user.get("name"),
                                                ))
                                                .then((value) => value.fold(
                                                        (l) => ScaffoldMessenger
                                                                .of(context)
                                                            .showSnackBar(SnackBar(
                                                                content: Text(l
                                                                    .toString()))),
                                                        (r) async {
                                                      await user.put("name",
                                                          namecontroller.text);
                                                      await context.router
                                                          .pop();
                                                    }));
                                          }
                                        },
                                        child: Container(
                                          color: Colors.black,
                                          width: 100,
                                          height: 60,
                                          child: Center(
                                              child: Text(
                                            "confirm".tr(),
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ).tr()),
                                        ),
                                      ),
                                    )
                                  ]);
                            },
                          );
                        },
                        icon: FontAwesomeIcons.user,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProfileContainer(
                        title: "email".tr(),
                        subtitle: user.get("email"),
                        ontap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/logo.png",
                                        scale: 1.5,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'emailchange',
                                      ).tr(),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: emailkey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText: "reqfield".tr()),
                                        readonly: false,
                                        controller: emailcontroller,
                                        type: TextInputType.emailAddress,
                                        label: "email".tr(),
                                        width: double.infinity,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 40.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (emailkey.value.currentState!
                                              .validate()) {
                                            ref
                                                .read(updateuserprovider)
                                                .execute(UpdateUserInput(
                                                  urlvalue: "email",
                                                  token: user.get("apitoken"),
                                                  value: user.get("email"),
                                                ))
                                                .then((value) => value.fold(
                                                        (l) => ScaffoldMessenger
                                                                .of(context)
                                                            .showSnackBar(SnackBar(
                                                                content: Text(l
                                                                    .toString()))),
                                                        (r) async {
                                                      await user.put("email",
                                                          namecontroller.text);
                                                      await context.router
                                                          .pop();
                                                    }));
                                          }
                                        },
                                        child: Container(
                                          color: Colors.black,
                                          width: 100,
                                          height: 60,
                                          child: Center(
                                              child: Text(
                                            "confirm".tr(),
                                            style: const TextStyle(
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    )
                                  ]);
                            },
                          );
                        },
                        icon: FontAwesomeIcons.envelopesBulk,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProfileContainer(
                        title: "phone".tr(),
                        subtitle: user.get("phone"),
                        ontap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/logo.png",
                                        scale: 1.5,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "phonechange",
                                      ).tr(),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: phonekey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText: "reqfield".tr()),
                                        readonly: false,
                                        controller: phonecontroller,
                                        type: TextInputType.number,
                                        label: "phone".tr(),
                                        width: double.infinity,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 40.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (namekey.value.currentState!
                                              .validate()) {
                                            ref
                                                .read(updateuserprovider)
                                                .execute(UpdateUserInput(
                                                  urlvalue: "phone",
                                                  token: user.get("apitoken"),
                                                  value: user.get("phone"),
                                                ))
                                                .then((value) => value.fold(
                                                        (l) => ScaffoldMessenger
                                                                .of(context)
                                                            .showSnackBar(SnackBar(
                                                                content: Text(l
                                                                    .toString()))),
                                                        (r) async {
                                                      await user.put("name",
                                                          namecontroller.text);
                                                      await context.router
                                                          .pop();
                                                    }));
                                          }
                                        },
                                        child: Container(
                                          color: Colors.black,
                                          width: 100,
                                          height: 60,
                                          child: Center(
                                              child: Text(
                                            "confirm".tr(),
                                            style: const TextStyle(
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    )
                                  ]);
                            },
                          );
                        },
                        icon: FontAwesomeIcons.phone,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProfileContainer(
                        title: "password".tr(),
                        subtitle: "********",
                        ontap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/logo.png",
                                        scale: 1.5,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'passwordchange',
                                      ).tr(),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: passwordkey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText: "reqfield".tr()),
                                        readonly: false,
                                        controller: passwordcontroller,
                                        type: TextInputType.text,
                                        label: "password".tr(),
                                        width: double.infinity,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 40.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          if (passwordkey.value.currentState!
                                              .validate()) {
                                            ref
                                                .read(updateuserprovider)
                                                .execute(UpdateUserInput(
                                                  urlvalue: "password",
                                                  token: user.get("apitoken"),
                                                  value: user.get("name"),
                                                ))
                                                .then((value) => value.fold(
                                                        (l) => ScaffoldMessenger
                                                                .of(context)
                                                            .showSnackBar(SnackBar(
                                                                content: Text(l
                                                                    .toString()))),
                                                        (r) async {
                                                      await user.put("name",
                                                          namecontroller.text);
                                                      await context.router
                                                          .pop();
                                                    }));
                                          }
                                        },
                                        child: Container(
                                          color: Colors.black,
                                          width: 100,
                                          height: 60,
                                          child: Center(
                                              child: Text(
                                            "confirm".tr(),
                                            style: const TextStyle(
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    )
                                  ]);
                            },
                          );
                        },
                        icon: FontAwesomeIcons.lock,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ProfileContainer(
                        title: "language".tr(),
                        subtitle: context.locale.toString(),
                        ontap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return SimpleDialog(
                                  title: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/logo.png",
                                        scale: 1.5,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        'languagechange',
                                      ).tr(),
                                    ],
                                  ),
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 40.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          context
                                              .setLocale(const Locale("ar"))
                                              .then((value) =>
                                                  context.router.pop);
                                        },
                                        child: Container(
                                          color: Colors.black,
                                          width: 10,
                                          height: 60,
                                          child: const Center(
                                              child: Text(
                                            "العربية",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 40.0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          context
                                              .setLocale(const Locale("en"))
                                              .then((value) {
                                            context.router.pop();
                                          });
                                        },
                                        child: Container(
                                          color: Colors.black,
                                          width: 10,
                                          height: 60,
                                          child: const Center(
                                              child: Text(
                                            "English",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    )
                                  ]);
                            },
                          );
                        },
                        icon: FontAwesomeIcons.language,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileContainer extends HookWidget {
  final String? title;
  final String? subtitle;
  final VoidCallback? ontap;
  final IconData? icon;
  const ProfileContainer(
      {super.key, this.icon, this.title, this.subtitle, this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        onTap: ontap,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 12.0),
          child: Icon(
            icon,
            size: 40,
          ),
        ),
        title: Text(
          title!,
          style:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle!,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
