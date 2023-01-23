import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordField extends HookWidget {
  final TextEditingController? controller;
  final ValueChanged<String?>? onchanged;
  final GlobalKey<FormState>? formkey;
  final IconData? prefixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;

  const PasswordField(
      {super.key,
      this.prefixIcon,
      this.obscureText,
      this.controller,
      this.onchanged,
      this.formkey,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final hidden = useState(obscureText);

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
              Text(
                "startpassword".tr(),
                style: const TextStyle(fontSize: 36),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: TextFormField(
                  obscureText: hidden.value!,
                  validator: validator,
                  onChanged: onchanged,
                  controller: controller,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    suffixIcon: obscureText!
                        ? IconButton(
                            onPressed: () {
                              hidden.value = !hidden.value!;
                            },
                            icon: Icon(hidden.value!
                                ? Icons.visibility_off
                                : Icons.visibility),
                          )
                        : const SizedBox.shrink(),
                    border: InputBorder.none,
                    focusedErrorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    contentPadding: const EdgeInsets.only(
                        left: 10, top: 10, bottom: 10, right: 10),
                    hintText: "password".tr(),
                    hintStyle: const TextStyle(
                      color: Colors.black26,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
