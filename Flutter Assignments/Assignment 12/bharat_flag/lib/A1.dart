import 'package:flutter/material.dart';

class Flag extends StatefulWidget {
  const Flag({super.key});
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  int count = -1;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Bharat")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text("ADD"),
        ),
        body: Column(children: [
          Container(
            height: 500,
            color: Colors.grey,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (count >= 0)
                      ? Container(
                          height: 500,
                          width: 20,
                          color: Colors.black,
                        )
                      : Container(),
                  Column(
                    children: [
                      (count >= 1)
                          ? Container(
                              height: 80,
                              width: 250,
                              color: Colors.orangeAccent,
                            )
                          : Container(),
                      (count >= 2)
                          ? Container(
                              height: 80,
                              width: 250,
                              color: Colors.white,
                              child: (count >= 3)
                                  ? Image.asset("assets/Images/ashokChakra.jpg")
                                  : Container(),
                            )
                          : Container(),
                      (count >= 4)
                          ? Container(
                              height: 80,
                              width: 250,
                              color: Colors.green,
                            )
                          : Container(),
                    ],
                  ),
                ]),
          ),
          Container(
              margin: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count = -1;
                    });
                  },
                  child: Text("Reset")))
        ]));
  }
}
