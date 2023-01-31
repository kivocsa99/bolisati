import 'package:auto_route/auto_route.dart';
import 'package:bolisati/router/app_route.gr.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PhoneNumberField extends HookWidget {
  final TextEditingController? controller;
  final ValueChanged<String?>? onchanged;
  final ValueChanged<String?>? onsubmit;
  final bool? forget;
  final GlobalKey<FormState>? formkey;
  final String? Function(String?)? validator;

  const PhoneNumberField(
      {super.key,
      this.controller,
      this.onchanged,
      this.onsubmit,
      this.forget,
      this.formkey,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Form(
        key: formkey,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 0, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "startphone",
                style: TextStyle(
                  fontSize: 36,
                ),
              ).tr(),
              const SizedBox(
                height: 5,
              ),
              forget == true
                  ? Row(
                      children: [
                        const Text("forget").tr(),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                            onTap: () {
                              context.router.push(const ForgetPasswordScreen());
                            },
                            child: const Text(
                              "press",
                              style: TextStyle(color: Colors.blue),
                            ).tr()),
                      ],
                    )
                  : const SizedBox.shrink(),
              const SizedBox(height: 10),
              Container(
                width: 130,
                height: 27,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.flag),
                      Text(
                        "Jordan + 962",
                        style: TextStyle(fontSize: 10),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: TextFormField(
                  onFieldSubmitted: onsubmit,
                  validator: validator,
                  onChanged: onchanged,
                  controller: controller,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedErrorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    contentPadding: const EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 10),
                    hintText: "phone".tr(),
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
