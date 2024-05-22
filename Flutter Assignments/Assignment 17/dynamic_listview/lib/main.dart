import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DisplayImage(),
    );
  }
}

class DisplayImage extends StatefulWidget {
  const DisplayImage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DispImageState();
  }
}

class _DispImageState extends State {
  int counter = 0;

  List<String> List11 = [
    "https://images.unsplash.com/photo-1682685797857-97de838c192e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1682685797857-97de838c192e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1682685797857-97de838c192e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8"
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Dynamic")),
      body: ListView.builder(
        itemCount: List11.length,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.all(10), child: Image.network(List11[index]));
        },
      ),
    );
  }
}
