import 'package:flutter/material.dart';

class Assignment11 extends StatelessWidget {
  const Assignment11({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 11")),
      body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,

          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              color: Colors.red,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.red,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.blue,
            ),
          ]),
    );
  }
}
