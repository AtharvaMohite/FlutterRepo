import 'package:flutter/material.dart';
import 'netflix.dart';

void main() {
  runApp(const NetflixApp());
}

class NetflixApp extends StatelessWidget {
  const NetflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "AplaFlix",
      home: Netflix(),
    );
  }
}
