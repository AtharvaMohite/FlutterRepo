import 'package:flutter/material.dart';

class Boxes extends StatelessWidget {
  const Boxes({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Assignment 11")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.deepOrange,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.brown,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                ),
              ],
            )
          ],
        ));
  }
}
