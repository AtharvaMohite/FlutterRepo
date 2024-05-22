

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Portfolio());
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PState();
}

class _PState extends State<Portfolio> {
  int counter = -1;
  // ignore: non_constant_identifier_names
  void Increment() {
    setState(() {
      counter++;
      if (counter > 5) {
        counter = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Portfolio")),
        floatingActionButton: FloatingActionButton(
          onPressed: Increment,
          child: const Text("Next"),
        ),
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 78, 248, 248),
              Color.fromARGB(255, 182, 232, 255)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: ListView(children: [
              Container(
                margin: const EdgeInsets.all(60),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (counter >= 0)
                          ? const Text(
                              "Name : Atharva Arun Mohite",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic),
                            )
                          : Container(),
                      const SizedBox(
                        height: 30,
                      ),
                      (counter >= 1)
                          ? Image.asset(
                              "assets/Images/IMG-20240126-WA0142.jpg",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            )
                          : Container(),
                      const SizedBox(
                        height: 50,
                      ),
                      (counter >= 2)
                          ? const Text(
                              "College : Smt. Kashibai Navale College of Engineering",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ))
                          : Container(),
                      const SizedBox(
                        height: 30,
                      ),
                      (counter >= 3)
                          ? Image.asset("assets/Images/logo.jpg")
                          : Container(),
                      const SizedBox(
                        height: 50,
                      ),
                      (counter >= 4)
                          ? const Text("Dream Company : Google",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ))
                          : Container(),
                      const SizedBox(
                        height: 30,
                      ),
                      (counter >= 5)
                          ? Image.asset("assets/Images/download.jpg")
                          : Container(),
                    ]),
              ),
            ])));
  }
}
