import 'package:flutter/material.dart';

class WelcomeAboard extends StatelessWidget {
  const WelcomeAboard({super.key});

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
                "Welcome aboard!",
                style: TextStyle(fontSize: 36),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "Hello Laith",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
