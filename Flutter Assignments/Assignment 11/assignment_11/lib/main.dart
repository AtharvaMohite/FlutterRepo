import 'package:flutter/material.dart';
import 'Assignament11.dart';
import 'A2.dart';
import 'A3.dart';
import 'A4.dart';
import 'A5.dart';
import 'A6.dart';
import 'A7.dart';
import 'Boxes.dart';
import 'BharatFlag.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bharat(),
    );
  }
}
