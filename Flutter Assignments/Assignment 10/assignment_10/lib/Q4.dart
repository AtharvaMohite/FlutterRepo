// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Question4 extends StatelessWidget {
  const Question4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Question 4")),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.blueAccent,
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.blueAccent,
          ),
        ],
      )),
    );
  }
}
