// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Question5 extends StatelessWidget {
  const Question5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Question 5")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Images/20210410_161620-01.jpeg",
              height: 150,
              width: 150,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 30,
            ),
            Image.asset(
              "assets/Images/20210910_171427-02.jpeg",
              height: 150,
              width: 150,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 30,
            ),
            Image.asset(
              "assets/Images/20210701_070147-01.jpeg",
              height: 150,
              width: 150,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
