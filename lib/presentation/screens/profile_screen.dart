import 'package:auto_route/auto_route.dart';
import 'package:bolisati/presentation/domestic/widgets/domesticinformationcontainer.dart';
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
              Positioned(
                  left: 20,
                  top: 30,
                  child: IconButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios_new))),
              const Positioned(
                  left: 80,
                  top: 40,
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
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
                        title: "Full Name",
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
                                        'Change Your Name',
                                      ),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: namekey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText:
                                                "This Field is required"),
                                        readonly: false,
                                        controller: namecontroller,
                                        type: TextInputType.text,
                                        label: "Full Name",
                                        width: double.infinity,
                                      ),
                                    ),
                                    GestureDetector(
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
                                                    await context.router.pop();
                                                  }));
                                        }
                                      },
                                      child: Container(
                                        color: Colors.black,
                                        width: 100,
                                        height: 60,
                                        child: const Center(
                                            child: Text(
                                          "Confirm",
                                          style: TextStyle(color: Colors.white),
                                        )),
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
                        title: "Email",
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
                                        'Change Your Email',
                                      ),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: emailkey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText:
                                                "This Field is required"),
                                        readonly: false,
                                        controller: emailcontroller,
                                        type: TextInputType.emailAddress,
                                        label: "Email",
                                        width: double.infinity,
                                      ),
                                    ),
                                    GestureDetector(
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
                                                    await context.router.pop();
                                                  }));
                                        }
                                      },
                                      child: Container(
                                        color: Colors.black,
                                        width: 100,
                                        height: 60,
                                        child: const Center(
                                            child: Text(
                                          "Confirm",
                                          style: TextStyle(color: Colors.white),
                                        )),
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
                        title: "Phone Number",
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
                                        'Change Your PhoneNumber',
                                      ),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: phonekey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText:
                                                "This Field is required"),
                                        readonly: false,
                                        controller: phonecontroller,
                                        type: TextInputType.number,
                                        label: "Phone Number",
                                        width: double.infinity,
                                      ),
                                    ),
                                    GestureDetector(
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
                                                    await context.router.pop();
                                                  }));
                                        }
                                      },
                                      child: Container(
                                        color: Colors.black,
                                        width: 100,
                                        height: 60,
                                        child: const Center(
                                            child: Text(
                                          "Confirm",
                                          style: TextStyle(color: Colors.white),
                                        )),
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
                        title: "Password",
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
                                        'Change Your password',
                                      ),
                                    ],
                                  ),
                                  children: [
                                    Form(
                                      key: passwordkey.value,
                                      child: CustomField(
                                        validator: RequiredValidator(
                                            errorText:
                                                "This Field is required"),
                                        readonly: false,
                                        controller: passwordcontroller,
                                        type: TextInputType.text,
                                        label: "Password",
                                        width: double.infinity,
                                      ),
                                    ),
                                    GestureDetector(
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
                                                    await context.router.pop();
                                                  }));
                                        }
                                      },
                                      child: Container(
                                        color: Colors.black,
                                        width: 100,
                                        height: 60,
                                        child: const Center(
                                            child: Text(
                                          "Confirm",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    )
                                  ]);
                            },
                          );
                        },
                        icon: FontAwesomeIcons.lock,
                      ),
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
