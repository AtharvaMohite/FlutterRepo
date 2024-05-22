import 'package:flutter/material.dart';
import 'A1.dart';
import 'A2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Flag2());
  }
}
