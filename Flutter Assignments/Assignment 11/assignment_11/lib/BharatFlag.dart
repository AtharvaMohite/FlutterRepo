import 'dart:ui';

import 'package:flutter/material.dart';

class Bharat extends StatelessWidget {
  const Bharat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Assignment 11")),
        body: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(255, 255, 162, 40),
                  Colors.white,
                  Colors.green,
                ])),
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 400,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      height: 70,
                      width: 400,
                      color: Colors.white,
                      child: Image.asset("assets/Images/ashokChakra.jpg"),
                    ),
                    Container(
                      height: 70,
                      width: 400,
                      color: Colors.green,
                    ),
                  ]),
            )));
  }
}
