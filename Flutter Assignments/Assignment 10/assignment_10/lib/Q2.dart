import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  const Question2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AppBar"),
        actions: const [
          Icon(Icons.arrow_forward_rounded),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }
}
