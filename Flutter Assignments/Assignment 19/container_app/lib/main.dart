import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      ),
    ));
  }
}
