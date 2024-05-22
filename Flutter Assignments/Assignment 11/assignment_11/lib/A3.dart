import 'package:flutter/material.dart';

class A3 extends StatelessWidget {
  const A3({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 11")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(children: [
            Container(
              height: 70,
              width: 70,
              color: Colors.red,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.green,
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.blue,
            ),
          ])
        ])
      ]),
    );
  }
}
