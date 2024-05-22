import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DisplayCount(),
    );
  }
}

class DisplayCount extends StatefulWidget {
  const DisplayCount({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DispImageState();
  }
}

class _DispImageState extends State {
  int count = 0;
  List<int> list11 = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView Dynamic")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            list11.add(count);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: list11.length,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              child: Container(
                height: 40,
                color: Colors.amber,
                child: Center(child: Text(list11[index].toString())),
              ));
        },
      ),
    );
  }
}
