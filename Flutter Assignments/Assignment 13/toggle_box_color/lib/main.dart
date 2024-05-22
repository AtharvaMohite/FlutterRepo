// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: A1(),
    );
  }
}

// class A2 extends StatelessWidget {
//   const A2({super.key});
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Container(
//         height: 50,
//         width: 50,
//         color: Colors.amber,
//       ),
//     ));
//   }
// }

class A1 extends StatefulWidget {
  const A1({super.key});

  @override
  State<A1> createState() => _A1State();
}

class _A1State extends State<A1> {
  bool isBlack = false;
  bool isBlack2 = false;
  bool isBlack3 = false;
  // ignore: non_constant_identifier_names
  void PressBtn1() {
    setState(() {
      isBlack = !isBlack;
    });
  }

  void PressBtn2() {
    setState(() {
      isBlack2 = !isBlack2;
    });
  }

  void PressBtn3() {
    setState(() {
      isBlack3 = !isBlack3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Toggle")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: (isBlack) ? Colors.black : Colors.amber,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: PressBtn1,
                child: const Text("press"),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: (isBlack2) ? Colors.black : Colors.amber,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: PressBtn2,
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  fixedSize: const Size(90, 30),
                ),
                child: const Text("Press"),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: (isBlack3) ? Colors.black : Colors.amber,
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: PressBtn3, child: const Text("press"))
            ],
          ),
        ],
      ),
    );
  }
}
