import 'package:basics/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.amberAccent,
          body: GradientContainer(
            colorList: [
              Color.fromARGB(255, 26, 2, 80),
              Color.fromARGB(255, 45, 7, 90)
            ],
          )),
    );
  }
}
