import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'neew.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: TodoList());
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List title1 = [
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
    "Lorem Ipsum is simply setting industry.",
  ];
  List task = [
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
  ];
  List date = [
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
    "30 february 2023",
  ];

  List colorss = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromARGB(255, 231, 237, 255),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style:
              GoogleFonts.quicksand(fontSize: 26, fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 177, 168),
      ),
      body: ListView.builder(
        itemCount: title1.length,
        itemBuilder: (context, index) {
          final colors = colorss[index % colorss.length];

          return Container(
            width: 330,
            margin:
                const EdgeInsets.only(top: 25, left: 15, right: 15, bottom: 5),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    offset: Offset(0, 10),
                    spreadRadius: 1,
                    blurRadius: 20)
              ],
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: colors,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      margin:
                          const EdgeInsets.only(top: 25, left: 10, bottom: 15),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Group 42.png")),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                      width: 84,
                      //color: Colors.amber,
                      margin:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 5),
                      child: Text(
                        date[index],
                        style: GoogleFonts.quicksand(
                            fontSize: 10.4, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 243,
                      margin:
                          const EdgeInsets.only(left: 10, top: 15, bottom: 10),
                      child: Text(
                        title1[index],
                        style: GoogleFonts.quicksand(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 243,
                      margin: const EdgeInsets.only(left: 10, bottom: 10),
                      child: Text(
                        task[index],
                        style: GoogleFonts.quicksand(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 260,

                      //  color: Colors.amber,
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.only(),
                            height: 13,
                            width: 13,
                            child: const Icon(Icons.mode_edit_outlined,
                                size: 20,
                                color: Color.fromRGBO(0, 139, 148, 1)),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 15),
                            height: 13,
                            width: 13,
                            child: const Icon(
                              Icons.delete_outline,
                              size: 20,
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 1.5,
                  blurRadius: 10,
                  color: Color.fromRGBO(0, 0, 0, 0.3))
            ]),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
      ),
    );
  }
}
