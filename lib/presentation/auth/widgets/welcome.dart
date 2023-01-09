import 'package:flutter/material.dart';

class WelcomeAboard extends StatelessWidget {
  final String? name;
  const WelcomeAboard({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 50.0, right: 50, bottom: 0, top: 0),
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
              children: [
                Text(
                  "Hello $name",
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
