import 'package:flutter/material.dart';
import 'instagram.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Amchagram",
      debugShowCheckedModeBanner: false,
      home: Assignment(),
    );
  }
}
