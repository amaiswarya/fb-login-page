import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

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
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.network(
                  "https://cdn1.vectorstock.com/i/thumb-large/97/70/purple-user-icon-in-the-circle-a-solid-gradient-vector-23519770.jpg"),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("nameController")
          ],
        ),
      ),
    );
  }
}
