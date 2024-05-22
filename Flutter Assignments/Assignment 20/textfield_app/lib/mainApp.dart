import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextListApp(),
    );
  }
}

class TextListApp extends StatefulWidget {
  const TextListApp({super.key});

  @override
  State<TextListApp> createState() => _TextListAppState();
}

class _TextListAppState extends State<TextListApp> {
  final TextEditingController _nameCintroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _nameCintroller,
            decoration: InputDecoration(
              hintText: "Enter your name",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black, width: 1)),
            ),
          ),
        ),
      ],
    ));
  }
}
