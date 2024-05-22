import 'package:flutter/material.dart';

class Quest extends StatefulWidget {
  const Quest({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestState();
  }
}

class _QuestState extends State {
  var QList = [
    "What is flutter?",
    "Who is your favourite player ?",
    "What is Dart?",
    "What is your name?",
    "ahahhahhhhahhhahaha ?????",
    "FFFFFFFFFFFFFFFFFFFFFFFFF??",
    "KKKKKKKKKKKKKKKKKKKKKKKKK??",
    "lllllllllllllllllllllll??",
    "kkhgutyff?",
    "lokjuiui?",
    "What is your name?",
    "What is Dart?",
  ];

  List<Map<String, bool>> Options = [
    {"a": false, "b": false, "flutter": true, "d": false},
    {"flutter": true, "bb": false, "cc": false, "dd": false},
    {"aaa": false, "flutter": true, "ccc": false, "ddd": false},
    {"flutter": true, "bbbbb": false, "ccccc": false, "ddddd": false},
    {"a": false, "b": false, "c": true, "d": false},
    {"flutter": true, "bb": false, "cc": false, "dd": false},
    {"aaa": false, "flutter": true, "ccc": false, "ddd": false},
    {"flutter": true, "bbbbb": false, "ccccc": false, "ddddd": false},
    {"aaa": false, "flutter": true, "ccc": false, "ddd": false},
    {"flutter": true, "bbbbb": false, "ccccc": false, "ddddd": false},
    {"flutter": true, "bbbbb": false, "ccccc": false, "ddddd": false},
    {"flutter": true, "bbbbb": false, "ccccc": false, "ddddd": false},
  ];

  int qqqq = 1;
  int questioncounter = 0;

  bool btn1clicked = false;
  bool btn2clicked = false;
  bool btn3clicked = false;
  bool btn4clicked = false;
  bool isclicked = false;

  bool isCorrectAns1 = false;
  bool isCorrectAns2 = false;
  bool isCorrectAns3 = false;
  bool isCorrectAns4 = false;

  void onPressedFAB() {
    if (questioncounter < QList.length - 1) {
      setState(() {
        qqqq++;
        questioncounter++;

        btn1clicked = false;
        btn2clicked = false;
        btn3clicked = false;
        btn4clicked = false;
        isclicked = false;

        isCorrectAns1 = false;
        isCorrectAns2 = false;
        isCorrectAns3 = false;
        isCorrectAns4 = false;
      });
    }
  }

  Color btn1Color() {
    if (btn1clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns1 == true) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.white;
    }
  }

  Color btn2Color() {
    if (btn2clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns2 == true) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.white;
    }
  }

  Color btn3Color() {
    if (btn3clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns3 == true) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.white;
    }
  }

  Color btn4Color() {
    if (btn4clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns4 == true) {
        return Colors.green;
      } else {
        return Colors.red;
      }
    } else {
      return Colors.white;
    }
  }

  int score2 = 0;

  void correctAnswer() {
    int correctindex = 0;
    for (int i = 0; i < Options[questioncounter].values.length - 1; i++) {
      if (Options[questioncounter].values.elementAt(i) == true) {
        correctindex = i;
      }
    }
    if (correctindex == 0) {
      btn1clicked = true;
      isCorrectAns1 = true;
    } else if (correctindex == 1) {
      btn2clicked = true;
      isCorrectAns2 = true;
    } else if (correctindex == 2) {
      btn3clicked = true;
      isCorrectAns3 = true;
    } else if (correctindex == 3) {
      btn4clicked = true;
      isCorrectAns4 = true;
    }
  }

  void btn1onPressed() {
    if (isclicked == false) {
      setState(() {
        btn1clicked = true;
        isclicked = true;
        if (Options[questioncounter].values.elementAt(0) == true) {
          isCorrectAns1 = true;
          ++score2;
        } else {
          correctAnswer();
        }
      });
    }
  }

  void btn2onPressed() {
    if (isclicked == false) {
      setState(() {
        btn2clicked = true;
        isclicked = true;
        if (Options[questioncounter].values.elementAt(1) == true) {
          isCorrectAns2 = true;
          ++score2;
        } else {
          correctAnswer();
        }
      });
    }
  }

  void btn3onPressed() {
    if (isclicked == false) {
      setState(() {
        btn3clicked = true;
        isclicked = true;
        if (Options[questioncounter].values.elementAt(2) == true) {
          isCorrectAns3 = true;
          ++score2;
        } else {
          correctAnswer();
        }
      });
    }
  }

  void btn4onPressed() {
    if (isclicked == false) {
      setState(() {
        btn4clicked = true;
        isclicked = true;
        if (Options[questioncounter].values.elementAt(3) == true) {
          isCorrectAns4 = true;
          ++score2;
        } else {
          correctAnswer();
        }
      });
    }
  }

  BorderSide bdr1() {
    if (btn1clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns1 == true) {
        return const BorderSide(
            color: Colors.green, strokeAlign: 4, width: 2.5);
      } else {
        return const BorderSide(color: Colors.red, strokeAlign: 4, width: 2.5);
      }
    } else {
      return const BorderSide(
          color: Colors.transparent, strokeAlign: 4, width: 2.5);
    }
  }

  BorderSide bdr2() {
    if (btn2clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns2 == true) {
        return const BorderSide(
            color: Colors.green, strokeAlign: 4, width: 2.5);
      } else {
        return const BorderSide(color: Colors.red, strokeAlign: 4, width: 2.5);
      }
    } else {
      return const BorderSide(
          color: Colors.transparent, strokeAlign: 4, width: 2.5);
    }
  }

  BorderSide bdr3() {
    if (btn3clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns3 == true) {
        return const BorderSide(
            color: Colors.green, strokeAlign: 4, width: 2.5);
      } else {
        return const BorderSide(color: Colors.red, strokeAlign: 4, width: 2.5);
      }
    } else {
      return const BorderSide(
          color: Colors.transparent, strokeAlign: 4, width: 2.5);
    }
  }

  BorderSide bdr4() {
    if (btn4clicked == true) {
      // ignore: unrelated_type_equality_checks
      if (isCorrectAns4 == true) {
        return const BorderSide(
            color: Colors.green, strokeAlign: 4, width: 2.5);
      } else {
        return const BorderSide(color: Colors.red, strokeAlign: 4, width: 2.5);
      }
    } else {
      return const BorderSide(
          color: Colors.transparent, strokeAlign: 4, width: 2.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 20),
        child: FloatingActionButton(
          onPressed: () {
            onPressedFAB();
          },
          splashColor: Colors.cyanAccent,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: const Icon(
            Icons.navigate_next,
            size: 30,
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text("Quetion : $qqqq/${QList.length}"),
              const SizedBox(height: 30),
              Text(
                QList[questioncounter],
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 50,
              ),

              //btn 1
              ElevatedButton(
                  onPressed: btn1onPressed,
                  style: ElevatedButton.styleFrom(
                      side: bdr1(),
                      backgroundColor: btn1Color(),
                      fixedSize: const Size(300, 40)),
                  child: Text(Options[questioncounter].keys.elementAt(0),
                      style: const TextStyle(color: Colors.black))),
              const SizedBox(
                height: 30,
              ),

              //btn 2
              ElevatedButton(
                  onPressed: btn2onPressed,
                  style: ElevatedButton.styleFrom(
                      side: bdr2(),
                      backgroundColor: btn2Color(),
                      fixedSize: const Size(300, 40)),
                  child: Text(Options[questioncounter].keys.elementAt(1),
                      style: const TextStyle(color: Colors.black))),
              const SizedBox(
                height: 30,
              ),

              //btn3
              ElevatedButton(
                  onPressed: btn3onPressed,
                  style: ElevatedButton.styleFrom(
                      side: bdr3(),
                      backgroundColor: btn3Color(),
                      fixedSize: const Size(300, 40)),
                  child: Text(Options[questioncounter].keys.elementAt(2),
                      style: const TextStyle(color: Colors.black))),
              const SizedBox(
                height: 30,
              ),

              //BTN 4
              ElevatedButton(
                  onPressed: btn4onPressed,
                  style: ElevatedButton.styleFrom(
                      side: bdr4(),
                      backgroundColor: btn4Color(),
                      fixedSize: const Size(300, 40)),
                  child: Text(
                    Options[questioncounter].keys.elementAt(3),
                    style: const TextStyle(color: Colors.black),
                  )),

              const SizedBox(
                height: 30,
              ),

              ElevatedButton(
                  onPressed: () {
                    if (questioncounter > 0) {
                      setState(() {
                        questioncounter--;
                        qqqq--;
                        btn1clicked = false;
                        btn2clicked = false;
                        btn3clicked = false;
                        btn4clicked = false;
                        isclicked = false;

                        isCorrectAns1 = false;
                        isCorrectAns2 = false;
                        isCorrectAns3 = false;
                        isCorrectAns4 = false;
                      });
                    }
                  },
                  child: Text("Back")),
              const SizedBox(
                height: 40,
              ),
              Text("Score : $score2"),
            ],
          )
        ],
      ),
    );
  }
}
