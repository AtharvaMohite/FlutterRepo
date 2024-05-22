import 'package:flutter/material.dart';

void main() => runApp(const MyBottom1());

class MyBottom1 extends StatelessWidget {
  const MyBottom1({super.key});
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyBottom(),
    );
  }
}

class MyBottom extends StatefulWidget {
  const MyBottom({super.key});

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("BottomSheet"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text("Create Task"),
                        const SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(onPressed: () {}, child: Text("Submit"))
                      ],
                    ),
                  );
                },
              );
            },
            child: const Icon(Icons.add)),
      ),
    );
  }
}
