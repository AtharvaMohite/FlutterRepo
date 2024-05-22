import 'package:flutter/material.dart';
import 'package:quiz_app/Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int questionCounter = 2;
  bool btn1flag = false;
  bool btn2flag = false;
  bool btn3flag = false;
  bool btn4flag = false;
  int count = 0;
  bool isclicked = false;
  Color btn1color() {
    if (btn1flag == true) {
      return Colors.green;
    }

    return Colors.white;
  }

  Color btn2color() {
    if (btn2flag == true) {
      return Colors.red;
    }
    return Colors.white;
  }

  Color btn3color() {
    if (btn3flag == true) {
      return Colors.red;
    }
    return Colors.white;
  }

  Color btn4color() {
    if (btn4flag == true) {
      return Colors.red;
    }
    return Colors.white;
  }

  void onPressedBtn1() {
    if (isclicked == false) {
      setState(() {
        btn1flag = true;
        isclicked = true;
      });
    }
  }

  void onPressedBtn2() {
    if (isclicked == false) {
      setState(() {
        btn1flag = true;
        btn2flag = true;
        isclicked = true;
      });
    }
  }

  void onPressedBtn3() {
    if (isclicked == false) {
      setState(() {
        btn3flag = true;
        btn1flag = true;
        isclicked = true;
      });
    }
  }

  void onPressedBtn4() {
    if (isclicked == false) {
      setState(() {
        btn4flag = true;
        btn1flag = true;
        isclicked = true;
      });
    }
  }

  void onPressedFAB() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Page3()));
    });
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
                  "What is dart?",
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
                      "A Programming Language",
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
                    "A Framework",
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
                    "IDE",
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
                    "None of the above",
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ]));
  }
}
