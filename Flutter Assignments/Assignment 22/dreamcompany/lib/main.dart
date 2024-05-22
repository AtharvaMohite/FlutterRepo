import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DreamCom(),
    );
  }
}

class DreamCom extends StatefulWidget {
  const DreamCom({super.key});

  @override
  State<DreamCom> createState() => _DreamComState();
}

class _DreamComState extends State<DreamCom> {
  TextEditingController nameController = TextEditingController();
  final TextEditingController comName = TextEditingController();
  final TextEditingController locationName = TextEditingController();
  bool isPressed = false;

  Container disp() {
    if (isPressed == true) {
      return Container(
        width: 200,
        child: Column(
          children: [
            Text(nameController.text),
            SizedBox(
              height: 30,
            ),
            Text(comName.text),
            SizedBox(
              height: 30,
            ),
            Text(locationName.text),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dream Company"),
      ),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 2.0,
            ),
            child: Row(
              children: [
                const Text(
                  "Name : ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 250,
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        hintText: "Enter your name",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black))),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 2.0,
            ),
            child: Row(
              children: [
                const Text(
                  "Dream Company : ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  child: TextField(
                    controller: comName,
                    decoration: const InputDecoration(
                        hintText: "Enter your dream company",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black))),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 2.0,
            ),
            child: Row(
              children: [
                const Text(
                  "Location : ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 250,
                  child: TextField(
                    controller: locationName,
                    decoration: const InputDecoration(
                        hintText: "Enter your location",
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black))),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isPressed = true;
              });
            },
            child: Text("jjjj")),
        SizedBox(
          height: 30,
        ),
        disp(),
      ]),
    );
  }
}
