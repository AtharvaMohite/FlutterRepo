import 'package:flutter/material.dart';

class Question9 extends StatelessWidget {
  const Question9({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Question 9"),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 10, color: Colors.redAccent),
              // borderRadius: BorderRadiusDirectional.circular(20),
              borderRadius: BorderRadius.only(topLeft: (Radius.circular(20))),
            ),
          ),
        ));
  }
}
