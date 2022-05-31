import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  final String name;
  const Screen({Key? key, required this.name}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 210,
              width: 220,
              child: Image.network(
                  "https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome ",
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 35,
            ),
            Text(widget.name,
                style: const TextStyle(fontSize: 22),
                textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
