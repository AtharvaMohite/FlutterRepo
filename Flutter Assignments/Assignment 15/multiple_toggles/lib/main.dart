import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: A1());
  }
}

class A1 extends StatefulWidget {
  const A1({super.key});
  @override
  State<A1> createState() => _A1();
}

class _A1 extends State<A1> {
  int box1count = 0;
  int box2count = 0;

  Color box1color() {
    if (box1count == 0) return Colors.red;
    if (box1count == 1) return Colors.blue;
    if (box1count == 2) {
      return Colors.green;
    } else {
      box1count = 0;
      return Colors.red;
    }
  }

  Color box2color() {
    if (box2count == 0) return Colors.black;
    if (box2count == 1) return Colors.amber;
    if (box2count == 2) {
      return Colors.orange;
    } else {
      box2count = 0;
      return Colors.black;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Toggle Box Color")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: box1color(),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box1count++;
                      });
                    },
                    child: const Text("Button 1"))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: box2color(),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        box2count++;
                      });
                    },
                    child: const Text("Button 2"))
              ],
            )
          ],
        ));
  }
}
