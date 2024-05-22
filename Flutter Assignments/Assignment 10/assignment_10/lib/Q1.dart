import 'package:flutter/material.dart';

class Question1 extends StatelessWidget {
  const Question1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        actions: const [
          Icon(
            Icons.add_a_photo_outlined,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.access_time),
          SizedBox(
            width: 10,
          ),
        ],
        backgroundColor: Colors.red.shade400,
      ),
    );
  }
}
