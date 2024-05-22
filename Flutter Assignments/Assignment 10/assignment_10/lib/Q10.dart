import 'package:flutter/material.dart';

class Question10 extends StatelessWidget {
  const Question10({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Question 10"),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
          ),
        ));
  }
}
