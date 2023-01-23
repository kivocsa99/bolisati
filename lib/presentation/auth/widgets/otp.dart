import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class OtpVerfication extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String?>? onchanged;
  final VoidCallback? function;
  final GlobalKey<FormState>? formkey;
  final String? Function(String?)? validator;

  const OtpVerfication({
    super.key,
    this.validator,
    this.function,
    this.formkey,
    this.controller,
    this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Form(
        key: formkey,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 50.0, right: 50, bottom: 0, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "startotp",
                style: TextStyle(fontSize: 36),
              ).tr(),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Text(
                    "nootp",
                    style: TextStyle(fontSize: 14),
                  ).tr(),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: function,
                    child: const Text(
                      "sendagain",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ).tr(),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: TextFormField(
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
                    hintText: "code".tr(),
                    hintStyle: const TextStyle(
                      color: Colors.black26,
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
