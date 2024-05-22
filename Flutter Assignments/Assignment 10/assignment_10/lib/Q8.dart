import 'package:flutter/material.dart';

class Question8 extends StatelessWidget {
  const Question8({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Question 8"),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 10),
            ),
          ),
        ));
  }
}
