import 'package:flutter/material.dart';
import 'package:todolist_modified/model_class.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todolist',
      home: const TodoList(title: 'Todolist'),
      theme:
          ThemeData(textTheme: TextTheme(titleMedium: GoogleFonts.quicksand())),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<TodoList> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TodoList> {
  List<TodoModel> objList = [
    TodoModel(
        title: "Lorem Ipsum is simply dummy industry. ",
        description:
            "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
        date: "date"),
    TodoModel(
        title: "Lorem Ipsum is simply dummy industry. ",
        description:
            "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem. ",
        date: "date")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(111, 81, 255, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 29, top: 45, bottom: 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                      fontSize: 22, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Atharva",
                  style: GoogleFonts.quicksand(
                      fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "CREATE TO DO LIST",
                        style: GoogleFonts.quicksand(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(top: 39),
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40))),
                          child: ListView.builder(
                              itemCount: objList.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    top: 20,
                                    left: 20,
                                    bottom: 20,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 10, right: 16, bottom: 20),
                                        height: 52,
                                        width: 52,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 237,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${objList[index].title}",
                                              style: GoogleFonts.quicksand(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                                "${objList[index].description}",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text("${objList[index].date}",
                                                style: GoogleFonts.quicksand(
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ],
                                        ),
                                      ),
                                      Checkbox(
                                        value: true,
                                        onChanged: (value) {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        activeColor: Colors.green,
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
