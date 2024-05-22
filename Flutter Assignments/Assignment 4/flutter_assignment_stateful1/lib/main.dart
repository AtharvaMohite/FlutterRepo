import 'package:flutter/material.dart';
import 'Assignment3.dart';
import 'Assignment1.dart';
import 'Aissignment2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Assignment3());
  }
}
