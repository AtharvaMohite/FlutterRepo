import 'package:assignment_10/Q10.dart';
import 'package:assignment_10/Q5.dart';
import 'package:flutter/material.dart';
import 'Q1.dart';
import 'Q2.dart';
import 'Q3.dart';
import 'Q4.dart';
import 'Q6.dart';
import "Q7.dart";
import 'Q8.dart';
import 'Q9.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Question5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
