import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});
  @override
  State<Page3> createState() => _Page3state();
}

class _Page3state extends State<Page3> {
  int questionCounter = 3;
  bool btn1flag = false;
  bool btn2flag = false;
  bool btn3flag = false;
  bool btn4flag = false;
  bool isclicked = false;
  Color btn1color() {
    if (btn1flag == true) {
      return Colors.green;
    }

    return Colors.white;
  }

  Color btn2color() {
    if (btn2flag == true) {
      return Colors.green;
    }
    return Colors.white;
  }

  Color btn3color() {
    if (btn3flag == true) {
      return Colors.green;
    }
    return Colors.white;
  }

  Color btn4color() {
    if (btn4flag == true) {
      return Colors.green;
    }
    return Colors.white;
  }

  void onPressedBtn1() {
    if (isclicked == false) {
      setState(() {
        btn1flag = true;
        btn4flag = true;
        btn2flag = true;
        btn3flag = true;
        isclicked = true;
      });
    }
  }

  void onPressedBtn2() {
    if (isclicked == false) {
      setState(() {
        btn1flag = true;
        btn4flag = true;
        btn2flag = true;
        btn3flag = true;
        isclicked = true;
      });
    }
  }

  void onPressedBtn3() {
    if (isclicked == false) {
      setState(() {
        btn1flag = true;
        btn4flag = true;
        btn2flag = true;
        btn3flag = true;
        isclicked = true;
      });
    }
  }

  void onPressedBtn4() {
    if (isclicked == false) {
      setState(() {
        btn1flag = true;
        btn4flag = true;
        btn2flag = true;
        btn3flag = true;

        isclicked = true;
      });
    }
  }

  void onPressedFAB() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: onPressedFAB,
            tooltip: "Next Page",
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: const Icon(
              Icons.navigate_next,
              size: 40,
            )),
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Question $questionCounter/10",
                textScaleFactor: 1.5,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 300,
                child: Text(
                  "Which is best club in world",
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                    onPressed: onPressedBtn1,
                    style: ElevatedButton.styleFrom(
                      shape: const ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      backgroundColor: btn1color(),
                      fixedSize: const Size.fromWidth(300),
                    ),
                    child: const Text(
                      "Real Madrid",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: onPressedBtn2,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btn2color(),
                    fixedSize: const Size.fromWidth(300),
                  ),
                  child: const Text(
                    "Sinhagad FC",
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: onPressedBtn3,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btn3color(),
                    fixedSize: const Size.fromWidth(300),
                  ),
                  child: const Text(
                    "Team Exception",
                    style: TextStyle(color: Colors.black),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: onPressedBtn4,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btn4color(),
                    fixedSize: const Size.fromWidth(300),
                  ),
                  child: const Text(
                    "All of the above",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ]));
  }
}
