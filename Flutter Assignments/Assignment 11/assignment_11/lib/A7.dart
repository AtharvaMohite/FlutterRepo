import 'package:flutter/material.dart';

class A7 extends StatelessWidget {
  const A7({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Assignment 11")),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
