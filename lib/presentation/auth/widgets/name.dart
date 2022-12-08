import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  const NameField({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 40.0, right: 40, bottom: 15, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What's your\nname?",
                style: TextStyle(fontSize: 36),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Text(
                    "Let's get to know you",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 297,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedErrorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    errorBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    contentPadding:
                        const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    filled: true,
                    fillColor: Colors.blue[350],
                    labelText: "Name",
                    hintStyle: const TextStyle(
                      color: Colors.black26,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}