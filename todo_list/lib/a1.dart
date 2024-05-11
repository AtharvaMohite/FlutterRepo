// ignore: file_names
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:intl/intl.dart';

void main() => runApp(const MainApp1());

class MainApp1 extends StatelessWidget {
  const MainApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: TodoCard());
  }
}

class TodoCard extends StatefulWidget {
  const TodoCard({super.key});

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class TodoModel {
  String title;
  String task;
  String date;
  TodoModel({required this.title, required this.task, required this.date});
}

class _TodoCardState extends State<TodoCard> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  List taskDesc = [
    TodoModel(
        title: "Instagram Title 1",
        task: "Gap Abhyas Kar ",
        date: "Feb 26,2024"),
    TodoModel(
        title: "Instagram Title2",
        task: "Gap Abhyas Kar ",
        date: "Feb 26,2024"),
    TodoModel(
        title: "Instagram Title3",
        task: "Gap Abhyas Kar ",
        date: "Feb 26,2024"),
  ];

  List colorss = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromARGB(255, 231, 237, 255),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  bool isedit = false;
  int i = -1;

  void sumbit(bool isedit, [TodoModel? todoModel]) {
    if (_titleController.text.trim().isNotEmpty &&
        _taskController.text.trim().isNotEmpty &&
        _dateController.text.trim().isNotEmpty) {
      if (isedit == false) {
        setState(() {
          taskDesc.add(TodoModel(
              title: _titleController.text,
              task: _taskController.text,
              date: _dateController.text));
        });
      } else {
        TodoModel obj1 = taskDesc.elementAt(i);

        setState(() {
          obj1.title = _titleController.text;
          obj1.task = _taskController.text;
          obj1.date = _dateController.text;
        });
      }
    }
    _titleController.clear();
    _dateController.clear();
    _taskController.clear();

    Navigator.pop(context);
  }

  void editSheet(int index) {
    TodoModel obj = taskDesc.elementAt(index);
    _titleController.text = obj.title;
    _taskController.text = obj.task;
    _dateController.text = obj.date;
    i = index;
    showModalBottom();
  }

  void showModalBottom() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              //   crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  (isedit) ? "Edit Task" : "Create Task",
                  style: GoogleFonts.quicksand(
                      fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Task",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(2, 167, 177, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(2, 167, 177, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(2, 167, 177, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(2, 167, 177, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: _taskController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(2, 167, 177, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(2, 167, 177, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(2, 167, 177, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            initialDate: DateTime.now(),
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025));
                        if (pickedDate != null) {
                          String? formateDate =
                              DateFormat.yMMMd().format(pickedDate);

                          setState(() {
                            _dateController.text = formateDate;
                          });
                        }
                      },
                      readOnly: true,
                      controller: _dateController,
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                            child: const Icon(Icons.calendar_month_outlined)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(2, 167, 177, 1),
                            )),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(2, 167, 177, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      sumbit(isedit);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 40),
                      backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
                    ),
                    child: const Text("Submit"))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("To-do list")),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: ListView.builder(
            itemCount: taskDesc.length,
            itemBuilder: (context, index) {
              return Container(
                width: 330,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 10),
                          blurRadius: 10,
                          spreadRadius: 1)
                    ],
                    color: colorss[index % colorss.length],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 20,
                            right: 20,
                          ),
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("assets/Group 42.png"),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 15,
                                  width: 243,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    taskDesc[index].title,
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.quicksand(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  width: 243,
                                  child: Text(
                                    taskDesc[index].task,
                                    style: GoogleFonts.quicksand(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: Text(
                              taskDesc[index].date,
                              style: GoogleFonts.quicksand(
                                  fontSize: 10, fontWeight: FontWeight.w500),
                            )),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isedit = true;
                                editSheet(index);
                              });
                            },
                            icon: const Icon(
                              Icons.edit,
                              size: 16,
                            )),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                taskDesc.removeAt(index);
                              });
                            },
                            icon: const Icon(
                              Icons.delete_outline_outlined,
                              size: 16,
                            )),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            isedit = false;
            _titleController.clear();
            _dateController.clear();
            _taskController.clear();
            showModalBottom();
          },
          child: const Icon(Icons.add)),
    );
  }
}
