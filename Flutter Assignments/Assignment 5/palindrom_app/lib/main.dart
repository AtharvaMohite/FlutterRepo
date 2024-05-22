import 'package:flutter/material.dart';
import 'package:palindrom_app/pali.dart';
import 'pali.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const palindrome(),
    );
  }
}
